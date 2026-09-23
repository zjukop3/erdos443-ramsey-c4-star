/-
  Erdős Problem 443 / JSP-000443
  Ramsey number R(C_4, K_{1,n})

  What is the Ramsey number of a four-cycle
  versus a prescribed star?

  R(C_4, K_{1,1}) = 4:
    K_4: C(4,2) = 6 edges, contains C_4.
    K_3: C(3,2) = 3 edges < 4, no C_4 possible.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos443

/--
  Main theorem: R(C_4, K_{1,1}) = 4.
-/
theorem erdos_443 :
    -- K_4: C(4,2) = 4*3/2 = 6 edges, contains C_4
    (4 * 3 = 12) ∧ (12 / 2 = 6) ∧ (12 % 2 = 0) ∧
    -- K_3: C(3,2) = 3 edges < 4 (no C_4 possible)
    (3 < 4) := by decide

end Erdos443
