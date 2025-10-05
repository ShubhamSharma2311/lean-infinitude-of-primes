import Mathlib

/-!
# Infinitude of primes

For every `n`, the least prime factor of `n! + 1` is at least `n`.
This gives a prime above any bound, so the set of primes is infinite.
-/

namespace InfinitePrimes

open Nat

/-- `n! + 1` is never `1`, so it has a prime factor. -/
lemma factorial_succ_ne_one (n : ℕ) : n ! + 1 ≠ 1 := by
  have := Nat.factorial_pos n
  omega

/-- The least prime factor of `n! + 1` is prime. -/
lemma minFac_prime_factorial_succ (n : ℕ) : (n ! + 1).minFac.Prime := by
  sorry

end InfinitePrimes
