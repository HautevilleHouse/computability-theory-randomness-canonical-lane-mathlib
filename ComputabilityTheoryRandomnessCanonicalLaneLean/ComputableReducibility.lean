import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure ComputableReducibilityPackage (M : AdmissibleClass) where
  manyOneReduction : Type
  turingReduction : Type
  jumpOperator : Type
  reductionHierarchy : Prop
  completeness : Prop
  jumpInversion : Prop

structure ComputableReducibilityEvidence {M : AdmissibleClass} (R : ComputableReducibilityPackage M) where
  reductionHierarchyClosed : R.reductionHierarchy
  completenessClosed : R.completeness
  jumpInversionClosed : R.jumpInversion

def ComputableReducibilityClosed {M : AdmissibleClass} (R : ComputableReducibilityPackage M) : Prop :=
  R.reductionHierarchy ∧ R.completeness ∧ R.jumpInversion

theorem computable_reducibility_closed_from_evidence {M : AdmissibleClass}
    (R : ComputableReducibilityPackage M) (E : ComputableReducibilityEvidence R) :
    ComputableReducibilityClosed R := by
  exact And.intro E.reductionHierarchyClosed
    (And.intro E.completenessClosed E.jumpInversionClosed)

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse