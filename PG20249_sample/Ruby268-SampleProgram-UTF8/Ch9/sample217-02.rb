require "benchmark"
n = 1000000
Benchmark.bm(8){|x|
  x.report("each:") { (1..n).each{ a = "1" } }
  x.report("times:") { n.times{ a = "1" } }
  x.report("upto:") { 1.upto(n){ a = "1" } }
}
