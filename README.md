# Infinitude of Primes

Euclid's theorem: there are infinitely many primes, via the least prime factor of `n! + 1`.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. `n! + 1 ≠ 1`, so its least prime factor `p` exists.
2. If `p < n` then `p ∣ n!`, and together with `p ∣ n! + 1` this forces `p ∣ 1`.
3. So `n ≤ p`: there is a prime above every bound.
4. A set of naturals with no upper bound is infinite.

## Contents

- [`InfinitePrimes/Basic.lean`](InfinitePrimes/Basic.lean): the main development
- [`InfinitePrimes/Examples.lean`](InfinitePrimes/Examples.lean): small worked examples

Declarations:

- `InfinitePrimes.factorial_succ_ne_one`
- `InfinitePrimes.minFac_prime_factorial_succ`
- `InfinitePrimes.le_minFac_factorial_succ`
- `InfinitePrimes.exists_prime_ge`
- `InfinitePrimes.primes_infinite`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.
