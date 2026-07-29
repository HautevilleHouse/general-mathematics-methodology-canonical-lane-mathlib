import HautevilleHouse.GeneralMathematicsMethodologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MethodologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
