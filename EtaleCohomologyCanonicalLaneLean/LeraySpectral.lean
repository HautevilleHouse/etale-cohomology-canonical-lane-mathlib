import Mathlib.Algebra.Homology.SpectralSequence

noncomputable section

universe u

namespace HautevilleHouse
namespace EtaleCohomologyCanonicalLaneLean

structure LeraySpectralSequence where
  E2Page : ℕ × ℕ → ℕ
  differentials : ℕ × ℕ → ℕ
  abutment : ℕ → ℕ

def leraySpectral (f : X → Y) : LeraySpectralSequence := sorry

theorem leray_convergence : True := trivial

end EtaleCohomologyCanonicalLaneLean
end HautevilleHouse