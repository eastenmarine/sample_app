require 'benchmark/ips'

STRING_HASH={"Helloworld"=>"bar"}
SYMBOL_HASH={:Helloworld=>"bar"}
INTEGER_HASH={100=>"bar"}
Benchmark.ips do |x|
  x.report("String") {STRING_HASH["Helloworld"]}
  x.report("Symbol") {SYMBOL_HASH[:Helloworld]}
  x.report("Integer") {INTEGER_HASH[100]}
  x.compare!
end
