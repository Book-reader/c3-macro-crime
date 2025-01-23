module insanity;
import std::io;
import std::math;

fn void main(String[] args)
{
  String name = args[1].tcopy();
  int128 min = args[2].to_integer(int128)!!;
  uint128 max = args[3].to_integer(uint128)!!;
//  name[0] = name[0].to_upper();

  String under_type = args[1].copy();

  io::printn("module std::core::insanity;");
  /*if (under_type != "char" && under_type[0] != 'u')
  {
    under_type = "u".concat(under_type);
  }
  io::printfn("enum %s : %s (%s i)\n{", name, under_type, args[1]);
  for (int128 i = min; i < 0; i++)
  {
    io::printfn("  N%d = %s,", math::abs(i), i);
  }
  for (uint128 i = 0; i <= max; i++)
  {
    io::printfn("  P%d = %s,", i, i);
  }
  io::printn("}");
*/
  io::printfn("macro @make_comptime_%s(%s v; @body(%s $v)) @builtin\n{", name, name, name);
  io::printn("  switch (v) @jump\n{");
  for (int128 i = min; i < 0; i++)
  {
    io::printfn("    case %d:\n      @body(%d);\n      return;", i, i);
  }
  for (uint128 i = 0; i <= max; i++)
  {
    io::printfn("    case %d:\n      @body(%d);\n      return;", i, i);
  }

  io::printn("  }\n}");
}
