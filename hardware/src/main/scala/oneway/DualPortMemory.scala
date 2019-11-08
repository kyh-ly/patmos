/*
 * Copyright: 2017, Technical University of Denmark, DTU Compute
 * Author: Martin Schoeberl (martin@jopdesign.com)
 * License: Simplified BSD License
 */

package oneway

import Chisel._

class Port(size: Int) extends Bundle {
  val addr = Input(UInt(width = log2Up(size)))
  val wrData = Input(UInt(width = 32))
  val rdData = Output(UInt(width = 32))
  val wren = Input(Bool())
}

class DualPort(size: Int) extends Bundle {
  val rdAddr = Input(UInt(width = log2Up(size)))
  val wrAddr = Input(UInt(width = log2Up(size)))
  val wrData = Input(UInt(width = 32))
  val rdData = Output(UInt(width = 32))
  val wrEna = Input(Bool())
}

class DualPortMemory(size: Int) extends Module {
  val io = IO(new Bundle {
    val port = new DualPort(size)
  })

  val mem = Mem(UInt(width = 32), size)

  io.port.rdData := mem(Reg(next = io.port.rdAddr))
  when(io.port.wrEna) {
    mem(io.port.wrAddr) := io.port.wrData
  }

}

/**
 * This true dual port memory generates registers.
 */
class TrueDualPortMemory(size: Int) extends Module {
  val io = IO(new Bundle {
    val portA = new Port(size)
    val portB = new Port(size)
  })

  val mem = Mem(UInt(width = 32), size)

  val regAddrA = Reg(io.portA.addr)
  when(io.portA.wren) {
    mem(io.portA.addr) := io.portA.wrData
  }.otherwise {
    regAddrA := io.portA.addr
  }
  io.portA.rdData := mem(regAddrA)

  // This does not generate a true dual-ported memory,
  // but a register based implementation
  val regAddrB = Reg(io.portB.addr)
  when(io.portB.wren) {
    mem(io.portB.addr) := io.portB.wrData
  }.otherwise {
    regAddrB := io.portB.addr
  }
  io.portB.rdData := mem(regAddrB)
}
