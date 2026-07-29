import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputabilityTheoryRandomnessCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputabilityTheoryRandomnessCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputabilityTheoryRandomnessCanonicalLaneLean
end HautevilleHouse
