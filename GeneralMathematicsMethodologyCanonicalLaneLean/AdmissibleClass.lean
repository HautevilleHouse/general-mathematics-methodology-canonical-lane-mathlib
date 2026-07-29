import HautevilleHouse.GeneralMathematicsMethodologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

structure AdmissibleClass where
  object : MethodologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MethodologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
