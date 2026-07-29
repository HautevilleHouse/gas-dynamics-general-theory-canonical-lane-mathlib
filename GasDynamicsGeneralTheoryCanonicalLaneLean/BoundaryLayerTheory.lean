import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GasDynamicsGeneralTheoryCanonicalLaneLean

structure BoundaryLayerTheoryPackage where
  prandtlEquations : Prop
  boundaryLayerThickness : Prop
  separationCriteria : Prop
  skinFriction : Prop
  heatTransfer : Prop

structure BoundaryLayerTheoryEvidence (P : BoundaryLayerTheoryPackage) where
  prandtlEquationsClosed : P.prandtlEquations
  boundaryLayerThicknessClosed : P.boundaryLayerThickness
  separationCriteriaClosed : P.separationCriteria
  skinFrictionClosed : P.skinFriction
  heatTransferClosed : P.heatTransfer

def BoundaryLayerTheoryClosed (P : BoundaryLayerTheoryPackage) : Prop :=
  P.prandtlEquations ∧ P.boundaryLayerThickness ∧
  P.separationCriteria ∧ P.skinFriction ∧ P.heatTransfer

theorem boundary_layer_theory_closed_from_evidence (P : BoundaryLayerTheoryPackage)
    (E : BoundaryLayerTheoryEvidence P) : BoundaryLayerTheoryClosed P := by
  exact And.intro E.prandtlEquationsClosed
    (And.intro E.boundaryLayerThicknessClosed
      (And.intro E.separationCriteriaClosed
        (And.intro E.skinFrictionClosed E.heatTransferClosed)))

end GasDynamicsGeneralTheoryCanonicalLaneLean
end HautevilleHouse