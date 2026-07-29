import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

structure HardyWeinbergPackage where
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  randomMating : Prop
  equilibriumCondition : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  alleleFrequenciesClosed : H.alleleFrequencies
  genotypeFrequenciesClosed : H.genotypeFrequencies
  randomMatingClosed : H.randomMating
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.alleleFrequencies ∧ H.genotypeFrequencies ∧
  H.randomMating ∧ H.equilibriumCondition

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage)
    (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.alleleFrequenciesClosed
    (And.intro E.genotypeFrequenciesClosed
      (And.intro E.randomMatingClosed E.equilibriumConditionClosed))

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
