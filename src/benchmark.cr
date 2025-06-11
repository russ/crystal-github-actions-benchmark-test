require "benchmark"

def fibonacci(n : Int32) : Int32
  sleep 20
end

Benchmark.ips do |x|
  x.report("fibonacci(10)") do
    fibonacci(10)
  end

  x.report("fibonacci(20)") do
    fibonacci(20)
  end
end
