import InfinitePrimes.Basic

namespace InfinitePrimes

example : ∃ p, 100 ≤ p ∧ p.Prime := exists_prime_ge 100

example : ¬ {p : ℕ | p.Prime}.Finite := primes_infinite

example : 6 ≤ (Nat.factorial 6 + 1).minFac := le_minFac_factorial_succ 6

end InfinitePrimes
