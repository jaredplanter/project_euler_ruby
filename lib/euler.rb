module Euler
  Dir['./lib/euler/problem*.rb'].each do |file|
    require file
    problem = "#{File.basename(file, ".rb").capitalize}"
    klass_name = "Euler::#{problem}"
    klass = Object.const_get klass_name
    print "_#{problem}_\n"
    print "Question: #{klass.question}\n"
    print "Answer: #{klass.solve}\n\n"
  end
end
