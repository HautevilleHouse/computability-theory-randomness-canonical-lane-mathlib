import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure TimeHierarchyPackage where
  timeConstructibleFunction : ℕ → ℕ
  dtineNonDeterministic : Type u
  timeHierarchyTheorem : Prop
  nondeterministicTimeHierarchy : Prop
  timeHierarchyTheoremTerm : timeHierarchyTheorem
  nondeterministicTimeHierarchyTerm : nondeterministicTimeHierarchy

structure TimeHierarchyEvidence (T : TimeHierarchyPackage) where
  timeHierarchyTheoremClosed : T.timeHierarchyTheorem
  nondeterministicTimeHierarchyClosed : T.nondeterministicTimeHierarchy

def TimeHierarchyClosed (T : TimeHierarchyPackage) : Prop :=
  T.timeHierarchyTheorem ∧ T.nondeterministicTimeHierarchy

theorem time_hierarchy_closed_from_evidence (T : TimeHierarchyPackage) (E : TimeHierarchyEvidence T) : TimeHierarchyClosed T := by
  exact And.intro E.timeHierarchyTheoremClosed E.nondeterministicTimeHierarchyClosed

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse