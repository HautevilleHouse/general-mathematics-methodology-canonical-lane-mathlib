import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

structure GeneticMappingPackage where
  crossovers : Prop
  recombinationFraction : Prop
  mapDistance : Prop
  centimorganDefinition : Prop
  linkageGroup : Prop

structure GeneticMappingEvidence (G : GeneticMappingPackage) where
  crossoversClosed : G.crossovers
  recombinationFractionClosed : G.recombinationFraction
  mapDistanceClosed : G.mapDistance
  centimorganDefinitionClosed : G.centimorganDefinition
  linkageGroupClosed : G.linkageGroup

def GeneticMappingClosed (G : GeneticMappingPackage) : Prop :=
  G.crossovers ∧ G.recombinationFraction ∧ G.mapDistance ∧
  G.centimorganDefinition ∧ G.linkageGroup

theorem genetic_mapping_closed_from_evidence (G : GeneticMappingPackage)
    (E : GeneticMappingEvidence G) : GeneticMappingClosed G := by
  exact And.intro E.crossoversClosed
    (And.intro E.recombinationFractionClosed
      (And.intro E.mapDistanceClosed
        (And.intro E.centimorganDefinitionClosed E.linkageGroupClosed)))

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
