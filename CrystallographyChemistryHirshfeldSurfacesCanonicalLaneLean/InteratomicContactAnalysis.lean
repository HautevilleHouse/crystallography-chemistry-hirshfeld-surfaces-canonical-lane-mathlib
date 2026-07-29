import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure InteratomicContactPackage where
  crystal : Type u
  atomPair : Type v
  contactDistance : atomPair -> Float
  vanDerWaalsRadii : String -> Float
  contactType : atomPair -> String
  contactAttributed : Prop
  closeContactsClassified : Prop
  contactContributionToSurface : Prop

structure InteratomicContactEvidence (C : InteratomicContactPackage) where
  contactAttributedClosed : C.contactAttributed
  closeContactsClassifiedClosed : C.closeContactsClassified
  contactContributionToSurfaceClosed : C.contactContributionToSurface

def InteratomicContactClosed (C : InteratomicContactPackage) : Prop :=
  C.contactAttributed ∧ C.closeContactsClassified ∧ C.contactContributionToSurface

theorem interatomic_contact_closed_from_evidence (C : InteratomicContactPackage) (E : InteratomicContactEvidence C) : InteratomicContactClosed C := by
  exact And.intro E.contactAttributedClosed (And.intro E.closeContactsClassifiedClosed E.contactContributionToSurfaceClosed)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse