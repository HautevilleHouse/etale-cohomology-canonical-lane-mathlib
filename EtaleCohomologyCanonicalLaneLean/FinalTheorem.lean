import EtaleCohomologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EtaleCohomologyCanonicalLaneLean

def ConstrainedEtaleCohomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_etale_cohomology_endgame (A : AdmissibleClass) :
    ConstrainedEtaleCohomologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EtaleCohomologyCanonicalLaneLean
end HautevilleHouse