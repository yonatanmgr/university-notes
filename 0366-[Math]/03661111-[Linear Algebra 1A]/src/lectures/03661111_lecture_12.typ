#import "/template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 12",
  authors: ("יונתן מגר",),
  date: "13 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

= מטריצות ייצוג
תהי $T: U->W$ ה״ל כאשר $B=(b_i)_(i=1)^n$ בסיס של $U$ ו-$C=(c_i)_(i=1)^m$ בסיס של $W$.

$ [T v]_C = [T(sum_(k=1)^n lambda_k b_k)]_C = [sum_(k=1)^n lambda_k T b_k]_C = sum_(k=1)^n lambda_k dot overbrace([T b_k]_C, in F^m)
  \ [v]_B = vec(lambda_1, dots.v, lambda_n) <==> v = sum_(k=1)^n lambda_k b_k $

המטריצה $mat(|, |, , |;[T b_1]_C, [T b_2]_C, dots.h.c, [T b_n]_C;|, |, , |)$ נקראת *המטריצה המייצגת של הה״ל $T$ במעבר מהבסיס $B$ לבסיס $C$* ונסמן: $[T]_C^B in M_(m xx n)(F)$. בעמודות רשומים וקטורי הקואורדינטות ביחס ל-$C$ של דמויות איברי הבסיס $B$.

=== (הגדרה) מכפלת מטריצת ייצוג ב-$n$-יה
בהינתן מטריצה $A in M_(m xx n)(F)$ ובהינתן $x in F^n$ נגדיר את המכפלה $A dot x$ כצ״ל של עמודות המטריצה עם מקדמים שהם רכיבי $x$. לדוגמה:
$ mat(|, |, , |;c_1, c_2, dots.h.c, c_n;|, |, , |) dot vec(x_1, x_2, dots.v, x_n) = x_1 c_1 + x_2 c_2 + dots.h.c + x_n c_n in F^m $

==== דוגמאות

+ $ mat(1,2;3,4;5,6) dot vec(7,8) = 7 dot vec(1,3,5) + 8 dot vec(2,4,6) $

+ $ mat(1,2;3,4;5,6) dot vec(7,8,9) = cancel(7 dot vec(1,3,5) + 8 dot vec(2,4,6) + 9 dot ?, cross: #true) -> "לא מוגדר" $

=== (משפט) אם $T: U->W$ ה״ל כאשר $B=(b_i)_(i=1)^n$ בסיס של $U$ ו-$C=(c_i)_(i=1)^m$ בסיס של $W$ אז לכל $u in U$ מתקיים: $[T u]_C = [T]^B_C dot [u]_B$.

#pagebreak()
==== הוכחה
$ [u]_B = vec(lambda_1, lambda_2, dots.v, lambda_n) = [T u]_C &= [T(sum_(k=1)^n lambda_k b_k)]_C = [sum_(k=1)^n lambda_k T b_k]_C = sum_(k=1)^n lambda_k [T b_k]_C = \ &= mat(|, , |;[T b_1]_C, dots.h.c, [T b_n]_C;|, , |) vec(lambda_1, dots.v, lambda_n) = [T]_C^B dot [u]_B $
#QED

=== (דוגמה) $T_theta : RR^2 -> RR^2$ העתקת סיבוב בזווית $theta$
נבנה את המטריצה המייצגת ביחס לבסיס הסטנדרטי:
$ [T_theta]^E_E = mat(|, |;[T theta vec(1,0)]_E, [T theta vec(0,1)]_E;|, |) = mat(cos theta, -sin theta; sin theta, cos theta) $
נעבור להצגה פולארית:
$ [T_theta vec(r cos phi, r sin phi)]_E = [T_theta]^E_E dot [vec(r cos phi, r sin phi)]_E = \ = mat(cos theta, -sin theta; sin theta, cos theta) vec(r cos phi, r sin phi) = r cos phi vec(cos theta, sin theta) + r sin phi vec(-sin theta, cos theta) $

=== (נוסחה) $A in M_(m xx n)(F), x in F^n: tb((A x)_j, "", 1<=j<=m) = sum_(i=1)^n x_i dot A_(j i) = sum_(i=1)^n A_(j i) dot x_i$

==== דוגמה
$ mat(1,2,3;4,5,6) vec(1, -1, 1) = vec(1 dot 1 + 2 dot (-1)+3 dot 1, 4 dot 1 + 5 dot (-1) + 6 dot 1) = vec(2,5) $

=== (טענה) מטריצה $A in M_(m xx n)(F)$ מגדירה ה״ל $T_A: F^n -> F^m$ באופן הבא: $T_A (x) = A dot x$

==== הוכחה
לכל $x, y in F^n$ ולכל $alpha, beta in F$ נחשב:
$ tb((A dot (alpha x + beta y))_i, "", 1<=i<=m) = sum_(j=1)^n A_(i j) dot (alpha x + beta y)_j = sum_(j=1)^n overbrace(A_(i j), in F) dot (overbrace(alpha, in F) overbrace(x_j, in F) + overbrace(beta, in F) overbrace(y_j, in F)) =
\ = alpha dot underbrace(sum_(j=1)^n A_(i j) x_j, (A x)_i) + beta dot underbrace(sum_(j=1)^n A_(i j) y_j, (A y)_i) = alpha(A x)_i + beta(A y)_i = (alpha A x +beta A y)_i $ #QED

=== (טענה) אם $B$ בסיס של מ״ו $U$ ממימד $n$ ו-$C$ בסיס של מ״ו $W$ ממימד $m$, אז $[dot]_C^B: hom(u,w)->M_(m xx n)(F)$ איזומורפיזם.
#pagebreak()
$ mat(T &\:, U, -->, W,; "", wide arrow.b [dot]_B ,, wide arrow.b [dot]_C; T_[T]_C^B &:, F^n, -->, F^m) $

==== הוכחה
ננסה להגדיר ה״ל הופכית $M_(m xx n)(F) -> hom(u,w)$. לכל $A in M_(m xx n)(F)$ נגדיר: $phi(A)=[dot]_C^(-1) of T_A of [dot]_B$. \ זוהי ה״ל כהרכבת ה״ל.

נחשב:
$ [dot]_C^B of phi(A) = [phi(A)]_C^B = mat(|, |, , |;[phi(A)(b_1)]_C, [phi(A)(b_2)]_C, dots.h.c, [phi(A)(b_n)]_C;|, |, , |) =
\ [phi(A)(b_j)]_C = [dot]_C of [dot]_C^(-1) of T_A of [b_j]_B = underbrace(mat(,;,;,;,,;,;,;,;,;,,,,,,,,,,), A) dot vec(0,0, dots.v, 1, 0, dots.v, 0) -> j "המקום ה-" $

$ phi of [dot]_C^B (T) = phi ([T]_C^B) = [dot]_C^(-1) of T_[T]_C^B of [dot]_B = T \
  [dot]_C^(-1) of T_[T]_C^B of [dot]_B (v) = [dot]_C (underbrace([T]_C^B dot [v]_B, [T v]_C)) = T v
$
#QED
