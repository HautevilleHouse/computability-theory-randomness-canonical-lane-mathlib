import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

def ConstrainedRandomnessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_randomness_endgame (A : AdmissibleClass) :
    ConstrainedRandomnessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse