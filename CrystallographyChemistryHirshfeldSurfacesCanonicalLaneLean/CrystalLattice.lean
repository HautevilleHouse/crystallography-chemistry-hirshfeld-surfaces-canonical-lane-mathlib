import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure CrystalSystem where
  crystalClass : String
  centeringType : String
  latticeParameters : Prop

structure BravaisLattice where
  crystalSystem : CrystalSystem
  conventionalCell : Prop
  latticeVectors : Prop
  pointGroup : Prop

structure BravaisLatticeEvidence (B : BravaisLattice) where
  crystalSystemClosed : B.crystalSystem.crystalClass = B.crystalSystem.crystalClass
  conventionalCellClosed : B.conventionalCell
  latticeVectorsClosed : B.latticeVectors
  pointGroupClosed : B.pointGroup

def BravaisLatticeClosed (B : BravaisLattice) : Prop :=
  B.conventionalCell ∧ B.latticeVectors ∧ B.pointGroup

theorem bravais_lattice_closed_from_evidence (B : BravaisLattice) (E : BravaisLatticeEvidence B) : BravaisLatticeClosed B := by
  exact And.intro E.conventionalCellClosed (And.intro E.latticeVectorsClosed E.pointGroupClosed)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse
