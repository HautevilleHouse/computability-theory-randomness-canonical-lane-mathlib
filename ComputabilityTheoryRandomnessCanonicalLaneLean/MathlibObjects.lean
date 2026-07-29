import computabilityTheoryRandomnessCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure ComputabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ComputabilityAdmittedObject where
  machine : Type
  language : Set machine
  haltingOracle : Prop
  conclusion : haltingOracle

def ComputabilityWitnessClosed (O : ComputabilityAdmittedObject) : Prop :=
  O.haltingOracle

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse