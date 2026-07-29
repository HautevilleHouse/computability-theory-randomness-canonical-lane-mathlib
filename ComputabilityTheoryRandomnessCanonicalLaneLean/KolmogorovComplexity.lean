import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure PlainComplexity (A : AdmissibleClass) where
  descriptionLanguage : ℕ → ℕ → Prop
  kolmogorovComplexity : ℕ → ℕ → ℕ
  invarianceTheorem : ∀ (f g : ℕ → ℕ → Prop), ∃ (c : ℕ), ∀ (x : ℕ), kolmogorovComplexity f x ≤ kolmogorovComplexity g x + c
  invarianceTheoremClosed : invarianceTheorem

structure PrefixComplexity (A : AdmissibleClass) where
  prefixFreeLanguage : ℕ → ℕ → Prop
  prefixKolmogorovComplexity : ℕ → ℕ → ℕ
  invarianceTheorem : ∀ (f g : ℕ → ℕ → Prop), ∃ (c : ℕ), ∀ (x : ℕ), prefixKolmogorovComplexity f x ≤ prefixKolmogorovComplexity g x + c
  invarianceTheoremClosed : invarianceTheorem

definition KolmogorovComplexityPackage (A : AdmissibleClass) where
  plainComplexity : PlainComplexity A
  prefixComplexity : PrefixComplexity A
  plainComplexityClosed : plainComplexity.invarianceTheoremClosed
  prefixComplexityClosed : prefixComplexity.invarianceTheoremClosed

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse