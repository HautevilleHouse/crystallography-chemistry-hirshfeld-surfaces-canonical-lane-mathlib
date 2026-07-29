import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure StructureFactorPackage where
  crystalLattice : Type u
  structureFactor : crystalLattice -> Float
  hirshfeldSurface : Type v
  correlationFunction : crystalLattice -> hirshfeldSurface -> Float
  diffractionPattern : Prop
  surfaceReflection : Prop
  bridgeConsistency : Prop

structure StructureFactorEvidence (S : StructureFactorPackage) where
  diffractionPatternClosed : S.diffractionPattern
  surfaceReflectionClosed : S.surfaceReflection
  bridgeConsistencyClosed : S.bridgeConsistency

def StructureFactorClosed (S : StructureFactorPackage) : Prop :=
  S.diffractionPattern ∧ S.surfaceReflection ∧ S.bridgeConsistency

theorem structure_factor_closed_from_evidence (S : StructureFactorPackage) (E : StructureFactorEvidence S) : StructureFactorClosed S := by
  exact And.intro E.diffractionPatternClosed (And.intro E.surfaceReflectionClosed E.bridgeConsistencyClosed)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse