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
lemma minFac_prime_factorial_succ (n : ℕ) : (n ! + 1).minFac.Prime :=
  Nat.minFac_prime (factorial_succ_ne_one n)

/-- Every prime below `n` divides `n!`, so it cannot divide `n! + 1`. -/
lemma le_minFac_factorial_succ (n : ℕ) : n ≤ (n ! + 1).minFac := by
  by_contra h
  rw [not_le] at h
  have hp := minFac_prime_factorial_succ n
  have h1 : (n ! + 1).minFac ∣ n ! := Nat.dvd_factorial hp.pos h.le
  have h2 : (n ! + 1).minFac ∣ n ! + 1 := Nat.minFac_dvd _
  have h3 : (n ! + 1).minFac ∣ 1 := (Nat.dvd_add_right h1).mp h2
  exact hp.one_lt.ne' (Nat.dvd_one.mp h3)

/-- There is a prime at least as large as any given natural number. -/
theorem exists_prime_ge (n : ℕ) : ∃ p, n ≤ p ∧ p.Prime :=
  ⟨_, le_minFac_factorial_succ n, minFac_prime_factorial_succ n⟩

end InfinitePrimes
