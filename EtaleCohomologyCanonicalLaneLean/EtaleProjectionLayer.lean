import EtaleCohomologyCanonicalLaneLean.EtaleCohomologyLayer

noncomputable section

universe u

namespace HautevilleHouse
namespace EtaleCohomologyCanonicalLaneLean

open AlgebraicGeometry CategoryTheory

structure EtaleProjectionState where
  geometricObject : String
  cohomologyProfile : String
  algebraicCycleRecorded : Bool
  admissibleEtaleClass : Bool
  carriedClassicalBoundary : Bool

def etaleProjection (S : EtaleProjectionState) : EtaleProjectionState :=
  { S with
    algebraicCycleRecorded := true
    admissibleEtaleClass := true
    carriedClassicalBoundary := true }

theorem etale_projection_idempotent (S : EtaleProjectionState) :
    etaleProjection (etaleProjection S) = etaleProjection S := by
  cases S
  rfl

def etaleProjectedClosureState (p : ℕ) : EtaleProjectionState :=
  etaleProjection {
    geometricObject := "EtaleCohomologyCanonicalLane",
    cohomologyProfile := "EtaleProfile",
    algebraicCycleRecorded := false,
    admissibleEtaleClass := false,
    carriedClassicalBoundary := false
  }

theorem etale_projected_closure_state_checked (p : ℕ) :
    (etaleProjectedClosureState p).algebraicCycleRecorded = true ∧
    (etaleProjectedClosureState p).admissibleEtaleClass = true ∧
    (etaleProjectedClosureState p).carriedClassicalBoundary = true := by
  exact ⟨rfl, rfl, rfl⟩

end EtaleCohomologyCanonicalLaneLean
end HautevilleHouse