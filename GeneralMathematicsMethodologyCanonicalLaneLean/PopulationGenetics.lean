import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

structure PopulationGeneticsPackage where
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  linkageDisequilibrium : Prop
  populationStructure : Prop
  geneticDriftModel : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  alleleFrequenciesClosed : P.alleleFrequencies
  genotypeFrequenciesClosed : P.genotypeFrequencies
  linkageDisequilibriumClosed : P.linkageDisequilibrium
  populationStructureClosed : P.populationStructure
  geneticDriftModelClosed : P.geneticDriftModel

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.alleleFrequencies ∧ P.genotypeFrequencies ∧
  P.linkageDisequilibrium ∧ P.populationStructure ∧
  P.geneticDriftModel

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage)
    (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P := by
  exact And.intro E.alleleFrequenciesClosed
    (And.intro E.genotypeFrequenciesClosed
      (And.intro E.linkageDisequilibriumClosed
        (And.intro E.populationStructureClosed E.geneticDriftModelClosed)))

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
