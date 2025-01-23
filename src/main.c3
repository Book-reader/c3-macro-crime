module number_fuckery;
import std::io;
import std::math::random;

fn int main(String[] args)
{
  int random = random::rand(99999999);

  @make_comptime_char(random; char $val)
  {
    io::printn("+++ is comptime only: " +++ to_string($val));// +++ to_string($val));
  };
/*  int f;
  for (int c = int.min; c < int.max; c++)
  {
    @volatile_store(f, @volatile_load(c)); 
  }
  io::printn(f);*/
  //io::printfn("%s %s", Short.P128.i, Short.N55.i);
  return 0;
}

macro String to_string($num) {
  $if $num == 0:
    return "0";
  $else
    char[] $res;
    $for (;$num != 0; $num = $num / 10)
      $res = char[]{('0' + $num % 10)} +++ $res;
    $endfor
    return $res;
  $endif
}
