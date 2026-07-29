import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure HirshfeldSurfacePackage where
  molecularCrystal : Type u
  atomTypes : List String
  dNorm : molecularCrystal -> molecularCrystal -> Float
  dExt : molecularCrystal -> molecularCrystal -> Float
  de : molecularCrystal -> molecularCrystal -> Float
  surfaceAttributed : Prop
  diNormAttributed : Prop
  deAttributed : Prop

structure HirshfeldSurfaceEvidence (H : HirshfeldSurfacePackage) where
  surfaceAttributedClosed : H.surfaceAttributed
  diNormAttributedClosed : H.diNormAttributed
  deAttributedClosed : H.deAttributed

def HirshfeldSurfaceClosed (H : HirshfeldSurfacePackage) : Prop :=
  H.surfaceAttributed ∧ H.diNormAttributed ∧ H.deAttributed

theorem hirshfeld_surface_closed_from_evidence (H : HirshfeldSurfacePackage) (E : HirshfeldSurfaceEvidence H) : HirshfeldSurfaceClosed H := by
  exact And.intro E.surfaceAttributedClosed (And.intro E.diNormAttributedClosed E.deAttributedClosed)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse