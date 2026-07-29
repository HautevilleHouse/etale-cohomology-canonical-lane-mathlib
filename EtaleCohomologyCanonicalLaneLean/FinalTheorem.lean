import EtaleCohomologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EtaleCohomologyCanonicalLaneLean

def ConstrainedEtaleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_etale_endgame (A : AdmissibleClass) :
    ConstrainedEtaleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EtaleCohomologyCanonicalLaneLean
end HautevilleHouse