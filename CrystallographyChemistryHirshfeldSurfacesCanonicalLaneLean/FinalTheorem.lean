import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean

def CrystallographyHirshfeldClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem crystallography_hirshfeld_endgame (A : AdmissibleClass) : CrystallographyHirshfeldClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CrystallographyChemistryHirshfeldSurfacesCanonicalLaneLean
end HautevilleHouse
