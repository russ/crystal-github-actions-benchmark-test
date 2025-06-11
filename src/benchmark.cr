require "benchmark"

def fibonacci(n : Int32) : Int32
  sleep 1.second
  return 0
end

Benchmark.ips(warmup: 4.seconds, calculation: 10.seconds) do |x|
  x.report("fibonacci(10)") do
    fibonacci(10)
  end

  x.report("fibonacci(20)") do
    fibonacci(20)
  end
end
