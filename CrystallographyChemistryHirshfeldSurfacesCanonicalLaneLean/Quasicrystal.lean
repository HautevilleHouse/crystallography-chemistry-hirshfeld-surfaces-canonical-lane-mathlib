import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

structure QuasicrystalModel where
  tilingType : String
  localIsohedral : Prop
  diffractionPattern : Prop
  forbiddenSymmetry : Prop
  modelClosed : Prop

structure QuasicrystalEvidence (Q : QuasicrystalModel) where
  tilingClosed : Q.tilingType = Q.tilingType
  isohedralClosed : Q.localIsohedral
  diffractionClosed : Q.diffractionPattern
  symmetryClosed : Q.forbiddenSymmetry
  modelClosedTerm : Q.modelClosed

def QuasicrystalClosed (Q : QuasicrystalModel) : Prop :=
  Q.localIsohedral ∧ Q.diffractionPattern ∧ Q.forbiddenSymmetry ∧ Q.modelClosed

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalModel) (E : QuasicrystalEvidence Q) : QuasicrystalClosed Q := by
  exact And.intro E.isohedralClosed (And.intro E.diffractionClosed (And.intro E.symmetryClosed E.modelClosedTerm))

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse
