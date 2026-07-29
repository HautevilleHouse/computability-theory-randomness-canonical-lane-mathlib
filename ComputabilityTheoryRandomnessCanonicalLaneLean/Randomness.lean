import computabilityTheoryRandomnessCanonicalLaneLean.KolmogorovComplexity

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure RandomnessPackage (K : KolmogorovComplexityPackage) where
  martingaleDefined : Prop
  randomnessTest : Prop
  typicalSequence : Prop
  randomnessEquivalence : Prop

structure RandomnessEvidence {K : KolmogorovComplexityPackage} (R : RandomnessPackage K) where
  martingaleDefinedClosed : R.martingaleDefined
  randomnessTestClosed : R.randomnessTest
  typicalSequenceClosed : R.typicalSequence
  randomnessEquivalenceClosed : R.randomnessEquivalence

def RandomnessClosed {K : KolmogorovComplexityPackage} (R : RandomnessPackage K) : Prop :=
  R.martingaleDefined ∧ R.randomnessTest ∧ R.typicalSequence ∧ R.randomnessEquivalence

theorem randomness_closed_from_evidence
    {K : KolmogorovComplexityPackage} (R : RandomnessPackage K) (E : RandomnessEvidence R) :
    RandomnessClosed R := by
  exact And.intro E.martingaleDefinedClosed
    (And.intro E.randomnessTestClosed
      (And.intro E.typicalSequenceClosed E.randomnessEquivalenceClosed))

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse