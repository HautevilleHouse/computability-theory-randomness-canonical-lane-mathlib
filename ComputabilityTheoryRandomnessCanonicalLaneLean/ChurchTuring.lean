import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure ChurchTuringPackage where
  turingMachineFormalization : Prop
  lambdaCalculusEquivalence : Prop
  partialRecursiveEquivalence : Prop
  thesisFormulated : Prop
  evidence : ChurchTuringEvidence this

structure ChurchTuringEvidence (C : ChurchTuringPackage) where
  turingMachineFormalizationClosed : C.turingMachineFormalization
  lambdaCalculusEquivalenceClosed : C.lambdaCalculusEquivalence
  partialRecursiveEquivalenceClosed : C.partialRecursiveEquivalence
  thesisFormulatedClosed : C.thesisFormulated

def ChurchTuringClosed (C : ChurchTuringPackage) : Prop :=
  C.turingMachineFormalization ∧ C.lambdaCalculusEquivalence ∧ C.partialRecursiveEquivalence ∧ C.thesisFormulated

theorem church_turing_closed_from_evidence (C : ChurchTuringPackage) (E : ChurchTuringEvidence C) : ChurchTuringClosed C := by
  exact And.intro E.turingMachineFormalizationClosed (And.intro E.lambdaCalculusEquivalenceClosed (And.intro E.partialRecursiveEquivalenceClosed E.thesisFormulatedClosed))

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse
