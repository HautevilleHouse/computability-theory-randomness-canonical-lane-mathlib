import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

structure RandomnessSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RandomnessAdmittedObject where
  space : RandomnessSpace
  algorithmicallyRandom : Prop
  martingaleExistence : Prop
  prefixComplexityBound : Prop
  conclusion : algorithmicallyRandom ∧ martingaleExistence ∧ prefixComplexityBound

def RandomnessWitnessClosed (O : RandomnessAdmittedObject) : Prop :=
  O.conclusion

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse