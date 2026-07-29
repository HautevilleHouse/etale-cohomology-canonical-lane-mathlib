import EtaleCohomologyCanonicalLaneLean.EtaleCertificate

noncomputable section

namespace HautevilleHouse
namespace EtaleCohomologyCanonicalLaneLean

def EtaleAdmittedClosure (A : AdmissibleClass) : Prop :=
  ConstrainedEtaleClosure A ∧ EtaleAdmittedCertificateClosed

theorem etale_admitted_closure_checked (A : AdmissibleClass) :
    EtaleAdmittedClosure A := by
  exact ⟨constrained_etale_closure A, etale_admitted_certificate_checked⟩

theorem etale_unrestricted_classical_boundary_carried :
    etaleCertificate.unrestrictedClassicalEtaleClosure = false := by
  rfl

end EtaleCohomologyCanonicalLaneLean
end HautevilleHouse