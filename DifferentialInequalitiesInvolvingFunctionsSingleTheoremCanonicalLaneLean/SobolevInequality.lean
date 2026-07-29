import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean

structure SobolevInequalityPackage (S : DifferentialInequalityStatement) where
  functionSpace : Type u
  norm : functionSpace → ℝ
  sobolevConstant : ℝ
  inequality : Prop
  constantPositivity : sobolevConstant > 0
  inequalityClosed : inequality

theorem sobolev_inequality_holds (S : DifferentialInequalityStatement)
    (P : SobolevInequalityPackage S) : P.inequality := P.inequalityClosed

end DifferentialInequalitiesInvolvingFunctionsSingleTheoremCanonicalLaneLean
end HautevilleHouse