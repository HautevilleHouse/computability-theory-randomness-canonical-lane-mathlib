import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure NPCompletenessPackage where
  satCnfDefined : Prop
  cookLevinTheorem : Prop
  reductionsCatalog : Prop
  pVsNpOpen : Prop
  evidence : NPCompletenessEvidence this

structure NPCompletenessEvidence (N : NPCompletenessPackage) where
  satCnfDefinedClosed : N.satCnfDefined
  cookLevinTheoremClosed : N.cookLevinTheorem
  reductionsCatalogClosed : N.reductionsCatalog
  pVsNpOpenClosed : N.pVsNpOpen

def NPCompletenessClosed (N : NPCompletenessPackage) : Prop :=
  N.satCnfDefined ∧ N.cookLevinTheorem ∧ N.reductionsCatalog ∧ N.pVsNpOpen

theorem np_completeness_closed_from_evidence (N : NPCompletenessPackage) (E : NPCompletenessEvidence N) : NPCompletenessClosed N := by
  exact And.intro E.satCnfDefinedClosed (And.intro E.cookLevinTheoremClosed (And.intro E.reductionsCatalogClosed E.pVsNpOpenClosed))

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse
