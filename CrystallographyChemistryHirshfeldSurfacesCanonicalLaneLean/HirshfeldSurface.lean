import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure HirshfeldSurface where
  moleculeA : String
  moleculeB : String
  surfaceType : String
  dNorm : Real → Prop
  dElectron : Real → Prop
  fragmentCurve : Real → Prop
  surfaceClosed : Prop

structure HirshfeldSurfaceEvidence (H : HirshfeldSurface) where
  dNormClosed : ∀ r, H.dNorm r
  dElectronClosed : ∀ r, H.dElectron r
  fragmentCurveClosed : ∀ r, H.fragmentCurve r
  surfaceClosedTerm : H.surfaceClosed

def HirshfeldSurfaceClosed (H : HirshfeldSurface) : Prop :=
  H.dNorm 0.0 ∧ H.dElectron 0.0 ∧ H.fragmentCurve 0.0 ∧ H.surfaceClosed

theorem hirshfeld_surface_closed_from_evidence (H : HirshfeldSurface) (E : HirshfeldSurfaceEvidence H) : HirshfeldSurfaceClosed H := by
  exact And.intro (E.dNormClosed 0.0) (And.intro (E.dElectronClosed 0.0) (And.intro (E.fragmentCurveClosed 0.0) E.surfaceClosedTerm))

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse
