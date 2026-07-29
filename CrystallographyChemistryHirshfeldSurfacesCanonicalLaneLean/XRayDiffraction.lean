import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure XRayDiffractionPattern where
  incidentWavelength : Real
  braggAngle : Real
  millerIndices : Nat × Nat × Nat
  structureFactor : Real
  measuredIntensity : Real

structure XRayDiffractionEvidence (X : XRayDiffractionPattern) where
  braggLawClosed : X.incidentWavelength > 0 ∧ X.braggAngle > 0
  structureFactorComputed : X.structureFactor > 0
  intensityMeasured : X.measuredIntensity > 0

def XRayDiffractionClosed (X : XRayDiffractionPattern) : Prop :=
  X.incidentWavelength > 0 ∧ X.braggAngle > 0 ∧ X.structureFactor > 0 ∧ X.measuredIntensity > 0

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPattern) (E : XRayDiffractionEvidence X) : XRayDiffractionClosed X := by
  exact And.intro E.braggLawClosed.1 (And.intro E.braggLawClosed.2 (And.intro E.structureFactorComputed E.intensityMeasured))

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse
