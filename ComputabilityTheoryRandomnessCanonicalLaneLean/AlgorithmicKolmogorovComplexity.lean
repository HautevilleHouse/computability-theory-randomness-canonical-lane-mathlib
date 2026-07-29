import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure KolmogorovComplexityPackage (M : AdmissibleClass) where
  universalMachine : Type
  descriptionLength : Type
  conditionalComplexity : Type
  kolmogorovComplexityDefined : Prop
  invarianceTheorem : Prop
  chainRule : Prop

structure KolmogorovComplexityEvidence {M : AdmissibleClass} (K : KolmogorovComplexityPackage M) where
  kolmogorovComplexityDefinedClosed : K.kolmogorovComplexityDefined
  invarianceTheoremClosed : K.invarianceTheorem
  chainRuleClosed : K.chainRule

def KolmogorovComplexityClosed {M : AdmissibleClass} (K : KolmogorovComplexityPackage M) : Prop :=
  K.kolmogorovComplexityDefined ∧ K.invarianceTheorem ∧ K.chainRule

theorem kolmogorov_complexity_closed_from_evidence {M : AdmissibleClass}
    (K : KolmogorovComplexityPackage M) (E : KolmogorovComplexityEvidence K) :
    KolmogorovComplexityClosed K := by
  exact And.intro E.kolmogorovComplexityDefinedClosed
    (And.intro E.invarianceTheoremClosed E.chainRuleClosed)

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse