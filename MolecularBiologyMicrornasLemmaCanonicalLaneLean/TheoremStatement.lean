import MolecularBiologyMicrornasLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MolecularBiologyMicrornasLemmaCanonicalLaneLean

structure MirnaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MirnaAdmittedObject where
  space : MirnaSpace
  mirnaRegulation : Prop
  targetSiteBinding : Prop
  expressionProfile : Prop
  conclusion : mirnaRegulation ∧ targetSiteBinding ∧ expressionProfile

structure MirnaEndgameState where
  object : MirnaAdmittedObject

def MirnaWitnessClosed (O : MirnaAdmittedObject) : Prop :=
  O.mirnaRegulation ∧ O.targetSiteBinding ∧ O.expressionProfile

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  molecularConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end MolecularBiologyMicrornasLemmaCanonicalLaneLean
end HautevilleHouse