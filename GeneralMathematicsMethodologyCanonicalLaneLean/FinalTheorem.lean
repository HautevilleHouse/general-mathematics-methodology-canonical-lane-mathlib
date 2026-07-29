import HautevilleHouse.GeneralMathematicsMethodologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

def ConstrainedMethodologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_methodology_endgame (A : AdmissibleClass) :
    ConstrainedMethodologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
