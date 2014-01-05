//
//  This file is part of the Patmos Simulator.
//  The Patmos Simulator is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  The Patmos Simulator is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with the Patmos Simulator. If not, see <http://www.gnu.org/licenses/>.
//
//  Implementation of the Pipe Connection interface.
//  Simply writes to std out and reads from std in
//

#include "debug/Pipe.h"

#include <iostream>

namespace patmos
{

  void Pipe::PutChar(char c) const
  {
    std::cout << c;
  }

  char Pipe::GetChar() const
  {
    char c;
    std::cin >> c;
    return c;
  }

  void Pipe::Write(const std::string &str) const
  {
    std::cout << str;
  }

}