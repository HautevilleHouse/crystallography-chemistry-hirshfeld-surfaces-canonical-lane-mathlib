import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure SpaceGroupPackage where
  crystalSystem : Type u
  latticeSystem : Type v
  pointGroup : Type w
  spaceGroupNumber : Nat
  bravaisLatticeType : String
  symmetryOperations : Prop
  hirshfeldCompatibility : Prop
  classificationComplete : Prop

structure SpaceGroupEvidence (S : SpaceGroupPackage) where
  symmetryOperationsClosed : S.symmetryOperations
  hirshfeldCompatibilityClosed : S.hirshfeldCompatibility
  classificationCompleteClosed : S.classificationComplete

def SpaceGroupClosed (S : SpaceGroupPackage) : Prop :=
  S.symmetryOperations ∧ S.hirshfeldCompatibility ∧ S.classificationComplete

theorem space_group_closed_from_evidence (S : SpaceGroupPackage) (E : SpaceGroupEvidence S) : SpaceGroupClosed S := by
  exact And.intro E.symmetryOperationsClosed (And.intro E.hirshfeldCompatibilityClosed E.classificationCompleteClosed)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse