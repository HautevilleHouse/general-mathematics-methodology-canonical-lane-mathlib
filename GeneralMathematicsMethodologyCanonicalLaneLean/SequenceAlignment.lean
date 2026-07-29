import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneralMathematicsMethodologyCanonicalLaneLean

structure SequenceAlignmentPackage where
  editDistance : Prop
  substitutionMatrix : Prop
  gapPenalty : Prop
  alignmentAlgorithm : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  editDistanceClosed : S.editDistance
  substitutionMatrixClosed : S.substitutionMatrix
  gapPenaltyClosed : S.gapPenalty
  alignmentAlgorithmClosed : S.alignmentAlgorithm
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.editDistance ∧ S.substitutionMatrix ∧ S.gapPenalty ∧
  S.alignmentAlgorithm ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.editDistanceClosed
    (And.intro E.substitutionMatrixClosed
      (And.intro E.gapPenaltyClosed
        (And.intro E.alignmentAlgorithmClosed E.optimalAlignmentClosed)))

end GeneralMathematicsMethodologyCanonicalLaneLean
end HautevilleHouse
