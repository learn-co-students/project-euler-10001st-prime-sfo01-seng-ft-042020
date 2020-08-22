class Prime
    attr_reader :number

    def initialize(n)
        @number = 1
        num_primes = 1
        loop do
            @number += 2
            if is_prime?(@number)
                num_primes += 1
                return if num_primes == n
            end
        end
        
        def is_prime?(num)
            for i in 2...num
                return false if num % i == 0
            end
            return true
        end
    end
end