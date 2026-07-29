import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse
