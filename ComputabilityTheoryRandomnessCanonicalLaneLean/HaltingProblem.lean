import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure HaltingProblemPackage (M : AdmissibleClass) where
  haltingSet : Type
  oracleMachine : Type
  turingJump : Type
  haltingUndecidable : Prop
  riceTheorem : Prop
  creativeSets : Prop

structure HaltingProblemEvidence {M : AdmissibleClass} (H : HaltingProblemPackage M) where
  haltingUndecidableClosed : H.haltingUndecidable
  riceTheoremClosed : H.riceTheorem
  creativeSetsClosed : H.creativeSets

def HaltingProblemClosed {M : AdmissibleClass} (H : HaltingProblemPackage M) : Prop :=
  H.haltingUndecidable ∧ H.riceTheorem ∧ H.creativeSets

theorem halting_problem_closed_from_evidence {M : AdmissibleClass}
    (H : HaltingProblemPackage M) (E : HaltingProblemEvidence H) :
    HaltingProblemClosed H := by
  exact And.intro E.haltingUndecidableClosed
    (And.intro E.riceTheoremClosed E.creativeSetsClosed)

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse