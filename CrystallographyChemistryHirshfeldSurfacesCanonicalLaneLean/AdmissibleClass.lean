import CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure AdmissibleClass where
  object : HirshfeldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HirshfeldWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse