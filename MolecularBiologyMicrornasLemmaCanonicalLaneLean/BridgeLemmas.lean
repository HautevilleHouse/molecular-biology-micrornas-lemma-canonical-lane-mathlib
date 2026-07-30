import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MirnaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse