import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure MartinLofTestPackage (M : AdmissibleClass) where
  sequentialTest : Type
  randomnessDefined : Prop
  universalityTheorem : Prop
  constructiveNullCover : Prop

structure MartinLofTestEvidence {M : AdmissibleClass} (T : MartinLofTestPackage M) where
  randomnessDefinedClosed : T.randomnessDefined
  universalityTheoremClosed : T.universalityTheorem
  constructiveNullCoverClosed : T.constructiveNullCover

def MartinLofRandomnessClosed {M : AdmissibleClass} (T : MartinLofTestPackage M) : Prop :=
  T.randomnessDefined ∧ T.universalityTheorem ∧ T.constructiveNullCover

theorem martin_lof_randomness_closed_from_evidence {M : AdmissibleClass}
    (T : MartinLofTestPackage M) (E : MartinLofTestEvidence T) :
    MartinLofRandomnessClosed T := by
  exact And.intro E.randomnessDefinedClosed
    (And.intro E.universalityTheoremClosed E.constructiveNullCoverClosed)

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse