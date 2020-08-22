def prime_number_for(n)
    checking = 1
    num_primes = 1
    loop do
        checking += 2
        if is_prime?(checking)
            num_primes += 1
            return checking if num_primes == n
        end
    end
end

def is_prime?(num)
    for i in 2...num
        return false if num % i == 0
    end
    return true
end