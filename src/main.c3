module number_fuckery;
import std::io;
import std::math::random;

fn int main(String[] args)
{
  Short random = Short.from_ordinal(random::rand(10000));

  @runtime_to_comptime(random; $val)
  {
    io::printn("+++ is comptime only: " +++ $val.nameof);
  };
  //io::printfn("%s %s", Short.P128.i, Short.N55.i);
  return 0;
}

