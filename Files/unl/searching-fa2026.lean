import Mathlib


section Loogle

/-
Searching with Loogle.
-/

-- Constants

example {f : ℕ → ℕ} {a : ℕ} (hf : Function.Bijective f) :
    (Equiv.ofBijective f hf) a = sorry := by
  sorry

example {f g : ℕ → ℕ} (hf : Function.Injective f) (hg : Function.Injective g) :
    Function.Injective (f ∘ g) := by
  sorry

-- Constants and names

example {a b c d : ℕ} (h : a = c) (h' : b = d) : (a, b) = (c, d) := by
  sorry

-- Expressions

example {a b c d : ℕ} : (a + b) * (a + b) = a * a + 2 * a * b + b * b := by
  sorry

example {a b c : ℕ} (h0 : c ≠ 0) (h : c * a = c * b) : a = b := by
  sorry

-- Conclusion vs. Hypothesis

example : {n | n : ℕ}.Nonempty := by
  sorry

/-
Definitions vs Proofs
-/

def thing {n : ℕ} (i : Fin n) : Fin (n + 1) := ⟨i + 1, by simp⟩

#check thing

/-
Examples to try for yourself
-/

example {l₁ l₂ : List ℕ} : (l₁ ++ l₂).length = l₁.length + l₂.length := by
  sorry

example {a b c d : ℝ} : a * b / (c * d) = a / c * (b / d) := by
  sorry

example {n m : ℕ} (h : n ≤ m) : n.factorial ≤ m.factorial := by
  sorry

example {σ τ R : Type*} [CommSemiring R] {φ : σ → τ} (n : ℕ) (p : MvPolynomial σ R) :
    (MvPolynomial.rename φ) ((MvPolynomial.homogeneousComponent n) p) =
    (MvPolynomial.homogeneousComponent n) ((MvPolynomial.rename φ) p) := by
  sorry

example {a b : ℕ} (ha : 1 ≤ a) (hb : 1 ≤ b) : a * b = 1 ↔ a = 1 ∧ b = 1 := by
  sorry

example {l : List ℕ} (a : ℕ) (h : a ∈ l.tail) : a ∈ l := by
  sorry

example {σ : Type*} [Finite σ] (n : ℕ) : {f : σ →₀ ℕ | f.degree = n}.Finite := by
  sorry

-- fill in the sorry once you find the correct lemma
example {α : Type*} [TopologicalSpace α] [IndiscreteTopology α] {s : Set α} (h : s.Nonempty) :
    closure s = sorry := by
  sorry

example {σ R α : Type*} [CommSemiring R] (s : Finset α) (f : α → σ →₀ ℕ) (g : α → R) :
    (MvPolynomial.monomial (∑ i ∈ s, f i)) (∏ i ∈ s, g i) =
    ∏ i ∈ s, (MvPolynomial.monomial (f i)) (g i) := by
  sorry

example {R A S : Type*} [CommSemiring R] [NonUnitalNonAssocSemiring A] [Module R A]
    [SMulCommClass R A A] [IsScalarTower R A A] [CommSemiring S] [Module S A] [SMulCommClass S A A]
    [IsScalarTower S A A] [LinearMap.CompatibleSMul A A R S] (a : A) :
    LinearMap.restrictScalars R ((LinearMap.mul S A) a) = (LinearMap.mul R A) a := by
  sorry

end Loogle


section Tactics

/-
Using tactics to search for theorems.
-/

variable {X : Type*} [LinearOrder X]

example {a b : X} : max a a = a := by
  -- exact?
  sorry

example {a b c : X} : min a (max a b) = max a (min a b) := by
  -- rw? and rw??
  sorry

example (a : ℕ) (h : a + a = 4) : 2 * a = 4 := by
  -- rw? at h
  sorry

example {s t u : Set X} {x : X} (h : x ∈ t) : x ∈ s ∪ t ∪ u := by
  -- apply?
  sorry

example {a b c d : X} (hab : a ≤ b) (hbc : b ≤ c) (hcd : c ≤ d) : a ≤ max (max b c) d := by
  -- apply?
  sorry

example {a b : X} (h : a ≤ b) : max a (min a (max b a)) ≤ min a (min b (min b a)) := by
  -- simp
  -- grind
  -- aesop
  -- hint
  sorry

-- try to find a variety of different ways / tactics to proof this lemma
example {n : ℕ} : n ∈ {x : ℕ | ∃ y : ℕ, y ≥ 0 ∧ y = x} := by
  sorry

end Tactics


/-
Other search engines:

https://leansearch.net/
https://www.leanexplore.com/
https://octo.axiomatic-ai.com/search
and more

Also useful:
https://leanprover-community.github.io/mathlib-phrasebook/


Inspiration drawn from this blog post:
https://leanprover-community.github.io/blog/posts/searching-for-theorems-in-mathlib/
-/
