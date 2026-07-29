import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure MartinLofTest (A : AdmissibleClass) where
  testSequence : ℕ → Set (ℕ → ℕ)
  uniformlyC1 : Prop
  measureVanishes : Prop
  testSequenceClosed : uniformlyC1 ∧ measureVanishes

structure SchnorrTest (A : AdmissibleClass) where
  martinLofTest : MartinLofTest A
  computableMeasure : Prop
  computableMeasureClosed : computableMeasure

definition AlgorithmicRandomnessPackage (A : AdmissibleClass) where
  martinLofRandom : ℕ → ℕ → Prop
  schnorrRandom : ℕ → ℕ → Prop
  martinLofTestExists : ∃ (φ : MartinLofTest A), φ.testSequenceClosed
  schnorrTestExists : ∃ (φ : SchnorrTest A), φ.computableMeasureClosed

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse