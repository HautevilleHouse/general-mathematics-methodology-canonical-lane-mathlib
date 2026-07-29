import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

structure PhylogeneticsPackage where
  treeTopology : Prop
  branchLengths : Prop
  substitutionModel : Prop
  likelihoodFunction : Prop
  maximumParsimony : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  substitutionModelClosed : P.substitutionModel
  likelihoodFunctionClosed : P.likelihoodFunction
  maximumParsimonyClosed : P.maximumParsimony

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.substitutionModel ∧
  P.likelihoodFunction ∧ P.maximumParsimony

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed
      (And.intro E.substitutionModelClosed
        (And.intro E.likelihoodFunctionClosed E.maximumParsimonyClosed)))

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
