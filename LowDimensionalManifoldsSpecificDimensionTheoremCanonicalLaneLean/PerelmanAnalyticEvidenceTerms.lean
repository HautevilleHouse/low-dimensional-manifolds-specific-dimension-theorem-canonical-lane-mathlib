import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms (C : CurvatureAnalyticCertificate) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : RiemannianCurvatureClosed

def CurvatureAnalyticCertificate.evidenceTerms (C : CurvatureAnalyticCertificate) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := riemannian_curvature_closed_from_evidence C.curvatureEvidence
  }

structure HamiltonDeTurckEvidenceTerms (H : HamiltonDeTurckCertificate) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversRicciFlow : H.pullbackRecoversRicciFlow
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : RicciFlowPDEClosed

def HamiltonDeTurckCertificate.evidenceTerms (H : HamiltonDeTurckCertificate) : HamiltonDeTurckEvidenceTerms H :=
  {
    gaugeChoice := H.gaugeChoiceClosed
    stronglyParabolicReduction := H.stronglyParabolicReductionClosed
    deTurckVectorField := H.deTurckVectorFieldClosed
    pullbackRecoversRicciFlow := H.pullbackRecoversRicciFlowClosed
    uniquenessCompatibility := H.uniquenessCompatibilityClosed
    flowClosed := ricci_flow_pde_closed_from_evidence H.flowEvidence
  }

structure ShortTimeEvidenceTerms (C : ShortTimeAnalyticCertificate) where
  parabolicRegularity : C.parabolicRegularity
  localExistenceInterval : C.localExistenceInterval
  uniquenessOnOverlap : C.uniquenessOnOverlap
  continuationCriterion : C.continuationCriterion
  shortTimeClosed : ShortTimeExistenceClosed

def ShortTimeAnalyticCertificate.evidenceTerms (C : ShortTimeAnalyticCertificate) : ShortTimeEvidenceTerms C :=
  {
    parabolicRegularity := C.parabolicRegularityClosed
    localExistenceInterval := C.localExistenceIntervalClosed
    uniquenessOnOverlap := C.uniquenessOnOverlapClosed
    continuationCriterion := C.continuationCriterionClosed
    shortTimeClosed := short_time_existence_closed_from_evidence C.shortTimeEvidence
  }

structure EntropyEvidenceTerms (C : EntropyAnalyticCertificate) where
  conjugateHeatEquation : C.conjugateHeatEquation
  wFunctionalDefined : C.wFunctionalDefined
  muFunctionalDefined : C.muFunctionalDefined
  entropyMonotonicityFormula : C.entropyMonotonicityFormula
  reducedVolumeMonotonicity : C.reducedVolumeMonotonicity
  entropyClosed : PerelmanEntropyClosed

def EntropyAnalyticCertificate.evidenceTerms (C : EntropyAnalyticCertificate) : EntropyEvidenceTerms C :=
  {
    conjugateHeatEquation := C.conjugateHeatEquationClosed
    wFunctionalDefined := C.wFunctionalDefinedClosed
    muFunctionalDefined := C.muFunctionalDefinedClosed
    entropyMonotonicityFormula := C.entropyMonotonicityFormulaClosed
    reducedVolumeMonotonicity := C.reducedVolumeMonotonicityClosed
    entropyClosed := perelman_entropy_closed_from_evidence C.entropyEvidence
  }

structure NoncollapsingEvidenceTerms (C : NoncollapsingAnalyticCertificate) where
  noLocalCollapsing : C.noLocalCollapsing
  scaleInvariantVolumeLowerBound : C.scaleInvariantVolumeLowerBound
  curvatureScaleCompatibility : C.curvatureScaleCompatibility
  ancientSolutionCompactnessInput : C.ancientSolutionCompactnessInput
  noncollapsingClosed : NoncollapsingClosed

def NoncollapsingAnalyticCertificate.evidenceTerms (C : NoncollapsingAnalyticCertificate) : NoncollapsingEvidenceTerms C :=
  {
    noLocalCollapsing := C.noLocalCollapsingClosed
    scaleInvariantVolumeLowerBound := C.scaleInvariantVolumeLowerBoundClosed
    curvatureScaleCompatibility := C.curvatureScaleCompatibilityClosed
    ancientSolutionCompactnessInput := C.ancientSolutionCompactnessInputClosed
    noncollapsingClosed := noncollapsing_closed_from_evidence C.noncollapsingEvidence
  }

structure SingularityEvidenceTerms (C : SingularityAnalyticCertificate) where
  blowupSequenceChosen : C.blowupSequenceChosen
  pointedLimitExists : C.pointedLimitExists
  ancientKappaSolution : C.ancientKappaSolution
  asymptoticShrinkersControlled : C.asymptoticShrinkersControlled
  singularityModelsClosed : SingularityModelsClosed

def SingularityAnalyticCertificate.evidenceTerms (C : SingularityAnalyticCertificate) : SingularityEvidenceTerms C :=
  {
    blowupSequenceChosen := C.blowupSequenceChosenClosed
    pointedLimitExists := C.pointedLimitExistsClosed
    ancientKappaSolution := C.ancientKappaSolutionClosed
    asymptoticShrinkersControlled := C.asymptoticShrinkersControlledClosed
    singularityModelsClosed := singularity_models_closed_from_evidence C.singularityEvidence
  }

structure CanonicalNeighborhoodEvidenceTerms (P : CanonicalNeighborhoodAnalyticCertificate) where
  highCurvaturePointClassified : P.highCurvaturePointClassified
  neckCapOrRoundComponent : P.neckCapOrRoundComponent
  surgeryScaleAdmissible : P.surgeryScaleAdmissible
  persistenceUnderFlow : P.persistenceUnderFlow
  canonicalNeighborhoodsClosed : CanonicalNeighborhoodsClosed

def CanonicalNeighborhoodAnalyticCertificate.evidenceTerms (P : CanonicalNeighborhoodAnalyticCertificate) : CanonicalNeighborhoodEvidenceTerms P :=
  {
    highCurvaturePointClassified := P.highCurvaturePointClassifiedClosed
    neckCapOrRoundComponent := P.neckCapOrRoundComponentClosed
    surgeryScaleAdmissible := P.surgeryScaleAdmissibleClosed
    persistenceUnderFlow := P.persistenceUnderFlowClosed
    canonicalNeighborhoodsClosed := canonical_neighborhoods_closed_from_evidence P.canonicalNeighborhoodEvidence
  }

end LowDimensionalManifoldsSpecificDimensionTheoremCanonicalLaneLean
end HautevilleHouse