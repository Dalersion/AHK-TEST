velo = 124
MsgBox, , , %velo%
Random, velo, 1, 124
MsgBox, , , %velo%
IniWrite, %velo%, 1.ini, rand, 1rand
IniRead, velo2, 1.ini, rand, 1rand, 10
MsgBox, , , %velo2%+124
