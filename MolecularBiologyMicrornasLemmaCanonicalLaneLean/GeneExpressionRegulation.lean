import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  transcriptionalActivation : Prop
  transcriptionalRepression : Prop
  splicingRegulation : Prop
  epigeneticModification : Prop
  feedbackMechanism : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  transcriptionalActivationClosed : G.transcriptionalActivation
  transcriptionalRepressionClosed : G.transcriptionalRepression
  splicingRegulationClosed : G.splicingRegulation
  epigeneticModificationClosed : G.epigeneticModification
  feedbackMechanismClosed : G.feedbackMechanism

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.transcriptionalActivation ∧ G.transcriptionalRepression ∧ G.splicingRegulation ∧ G.epigeneticModification ∧ G.feedbackMechanism

theorem gene_expression_regulation_closed_from_evidence
    (G : GeneExpressionRegulationPackage) (E : GeneExpressionRegulationEvidence G) :
    GeneExpressionRegulationClosed G := by
  exact And.intro E.transcriptionalActivationClosed
    (And.intro E.transcriptionalRepressionClosed
      (And.intro E.splicingRegulationClosed
        (And.intro E.epigeneticModificationClosed E.feedbackMechanismClosed)))

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse