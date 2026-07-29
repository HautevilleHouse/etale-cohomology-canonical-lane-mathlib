import Mathlib.CategoryTheory.Sites

noncomputable section

universe u

namespace HautevilleHouse
namespace EtaleCohomologyCanonicalLaneLean

open CategoryTheory

structure NativeEtaleSite (X : Type u) [Category X] where
  covers : X → Set (Set (X → X))
  grothendieckTopology : Sieve X

default instance : Topology (NativeEtaleSite X) := sorry

structure EtaleSiteSubstrate where
  siteObject : Bool
  sheafCondition : Bool
  derived : Bool

def etaleSiteSubstrate : EtaleSiteSubstrate := {
  siteObject := true,
  sheafCondition := true,
  derived := true
}

end EtaleCohomologyCanonicalLaneLean
end HautevilleHouse