import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure ChaitinOmegaPackage (M : AdmissibleClass) where
  prefixFreeMachine : Type
  haltingProbability : Type
  chaitinConstantDefined : Prop
  randomReal : Prop
  omegaDefinableButNotComputable : Prop

structure ChaitinOmegaEvidence {M : AdmissibleClass} (Ω : ChaitinOmegaPackage M) where
  chaitinConstantDefinedClosed : Ω.chaitinConstantDefined
  randomRealClosed : Ω.randomReal
  omegaDefinableButNotComputableClosed : Ω.omegaDefinableButNotComputable

def ChaitinOmegaClosed {M : AdmissibleClass} (Ω : ChaitinOmegaPackage M) : Prop :=
  Ω.chaitinConstantDefined ∧ Ω.randomReal ∧ Ω.omegaDefinableButNotComputable

theorem chaitin_omega_closed_from_evidence {M : AdmissibleClass}
    (Ω : ChaitinOmegaPackage M) (E : ChaitinOmegaEvidence Ω) :
    ChaitinOmegaClosed Ω := by
  exact And.intro E.chaitinConstantDefinedClosed
    (And.intro E.randomRealClosed E.omegaDefinableButNotComputableClosed)

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse