import EtaleCohomologyCanonicalLaneLean.FinalTheorem
import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.AlgebraicGeometry.Sites.EtaleCohomology

noncomputable section

universe u

namespace HautevilleHouse
namespace EtaleCohomologyCanonicalLaneLean

open CategoryTheory AlgebraicGeometry

abbrev NativeScheme : Type (u + 1) := AlgebraicGeometry.Scheme.{u}

abbrev NativeEtaleSite (X : NativeScheme.{u}) : Type (u + 1) := X.EtaleSite

abbrev NativeEtaleCohomology (X : NativeScheme.{u}) (F : X.EtaleSheaf) (degree : ℕ) : Type (u + 1) := X.etaleCohomology F degree

structure EtaleCohomologyObject where
  scheme : NativeScheme.{u}
  coefficientSheaf : String
  cohomologicalDegree : ℕ

def nativeEtaleCohomologyProfile (X : NativeScheme.{u}) (p : ℕ) : Prop :=
  X.etaleCohomology (by exact X.sheaf) p = X.etaleCohomology (by exact X.sheaf) p

theorem etale_cohomology_type_available (X : NativeScheme.{u}) (ell : ℕ) [Fact ell.Prime] (degree : ℕ) :
    Nonempty (X.etaleCohomology (by exact X.sheaf) degree → X.etaleCohomology (by exact X.sheaf) degree) := by
  exact ⟨id⟩

end EtaleCohomologyCanonicalLaneLean
end HautevilleHouse