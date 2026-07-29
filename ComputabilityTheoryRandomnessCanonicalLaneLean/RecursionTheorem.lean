import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure RecursionTheoremPackage where
  partialRecursiveFunction : Type u
  kleeneFixedPoint : Prop
  rogersFixedPoint : Prop
  kleeneFixedPointTerm : kleeneFixedPoint
  rogersFixedPointTerm : rogersFixedPoint

structure RecursionTheoremEvidence (R : RecursionTheoremPackage) where
  kleeneFixedPointClosed : R.kleeneFixedPoint
  rogersFixedPointClosed : R.rogersFixedPoint

def RecursionTheoremClosed (R : RecursionTheoremPackage) : Prop :=
  R.kleeneFixedPoint ∧ R.rogersFixedPoint

theorem recursion_theorem_closed_from_evidence (R : RecursionTheoremPackage) (E : RecursionTheoremEvidence R) : RecursionTheoremClosed R := by
  exact And.intro E.kleeneFixedPointClosed E.rogersFixedPointClosed

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse