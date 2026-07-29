import CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HirshfeldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse