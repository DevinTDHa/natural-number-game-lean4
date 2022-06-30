example (P Q R : Type) : (P → (Q → R)) → ((P → Q) → (P → R)) := by
  intro p_qr
  intro p_q
  intro p
  apply p_qr
  case a =>
    exact p
  case a =>
    apply p_q
    exact p

example (P Q R : Type) : (P → (Q → R)) → ((P → Q) → (P → R)) := by
  intro p_qr
  intro p_q
  intro p
  apply p_qr
  . exact p
  apply p_q
  exact p