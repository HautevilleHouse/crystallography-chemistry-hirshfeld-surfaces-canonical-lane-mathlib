import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure FingerprintPlotPackage where
  hirshfeldSurface : Type u
  di : hirshfeldSurface -> Float
  de : hirshfeldSurface -> Float
  fingerprintFunction : (Float × Float) -> Float
  normalizedFingerprint : Prop
  regionDecomposition : Prop
  uniquePattern : Prop

structure FingerprintPlotEvidence (F : FingerprintPlotPackage) where
  normalizedFingerprintClosed : F.normalizedFingerprint
  regionDecompositionClosed : F.regionDecomposition
  uniquePatternClosed : F.uniquePattern

def FingerprintPlotClosed (F : FingerprintPlotPackage) : Prop :=
  F.normalizedFingerprint ∧ F.regionDecomposition ∧ F.uniquePattern

theorem fingerprint_plot_closed_from_evidence (F : FingerprintPlotPackage) (E : FingerprintPlotEvidence F) : FingerprintPlotClosed F := by
  exact And.intro E.normalizedFingerprintClosed (And.intro E.regionDecompositionClosed E.uniquePatternClosed)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse