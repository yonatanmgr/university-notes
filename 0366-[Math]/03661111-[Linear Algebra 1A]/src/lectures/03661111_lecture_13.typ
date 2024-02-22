#import "/template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 13",
  authors: ("יונתן מגר",),
  date: "15 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

= כפל מטריצות
== תזכורת - העתקת הקואורדינטות ומטריצות מייצגות
=== העתקת הקואורדינטות
$[v]_B = vec(a_1, dots.v, a_n) iff v = sum_(i=1)^n a_i v_i$ עבור $B = (v_1, dots, v_n)$ בסיס של מ״ו $V$.

=== מטריצה מייצגת
המטריצה המייצגת של הה״ל $T$ במעבר מהבסיס $B$ לבסיס $C$ היא:
$ [T]_underbracket(C, space"הטווח")^overbracket(B, "התחום") = (a_(i j)) = mat(|,,|; [T v_1]_C, dots.h.c, [T v_n]_C; |, , |) $ כאשר $C = (v_1, dots, v_n)$ בסיס של $U$ ו-$T: V->U$.

=== $hom(V,U) tilde.eq M_(m xx n)(F)$ ע״י $T |-> [T]_C^B$.

=== תזכורת נוספת
מתקיים $forall v in V, [T v]_C = [T]_C^B dot [v]_B$, כאשר הגדרנו $A=(a_(i j))_(&i=1,dots,m \ &j=1,dots,n )$ ו-$v=vec(x_1, dots.v,x_n) in F^n$, אז: $ A dot v = vec(sum_(j=1)^n a_(1 j) x_j, dots.v, sum_(j=1)^n a_(m j) x_j) $
ומתקיים:
$ mat(a_(1 1), dots.h.c, a_(1 n); dots.v,, dots.v; a_(m 1), dots.h.c, a_(m n)) dot vec(x_1, dots.v, x_n) = vec(a_(1 1) x_1 + dots.h.c + a_(1 n)x_n, dots.v, a_(m 1) x_1 + dots.h.c + a_(m n)x_n) $

== מוטיבציה לכפל מטריצות
בהינתן $B$ בסיס של $V$ ו-$C$ בסיס של $U$ יש לנו איזומורפיזם $hom(V,U) -> M_(m xx n) (F)$. נראה כי אגף שמאל הוא הרכבה, ולכן נרצה שכפל מטריצות יהיה הדבר המתאים להרכבה.

== הגדרה
יהיו $M=(a_(i j))_(&i=1,dots,m \ &j=1,dots,s ) in M_(m xx s) (F)$ ו-$N=(b_(i j))_(&i=1,dots,s \ &j=n,dots,n ) in M_(s xx n)(F)$.

נגדיר כפל, כלומר מטריצה חדשה: $M N = M dot N = (c_(i j)) in M_(m xx n) (F)$,
כאשר $c_(i j) = sum_(k=1)^s a_(i k) dot b_(k j)$ לכל $i in {1, dots, m}$ ולכל $j in {1, dots, n}$.

#pagebreak()
=== דוגמאות
+ כפל מטריצות מגודל $1 xx s$ ו-$s xx 1$:

  נסמן $m=1, n=1$, $s$ כלשהו. נקבל $mat(a_1, dots, a_s) dot mat(b_1;dots.v;b_s) = a_1 b_1 + a_2 b_2 + dots.h.c + a_s b_s in M_(1 xx 1)(F)$.

+ אם $M_(i->) in M_(1 xx s) $ זו השורה ה-$i$ של $M$, ו-$N_(j arrow.t) in M_(s xx 1)$ העמודה ה-$j$ של $N$ אז $M N = (M_(i ->) N_(j arrow.t))_(i j)$.

+
  נסמן $e_i = vec(0,dots.v, 1, dots.v, 0) in M_(n xx 1) (F)$ כש-$1$ בשורה ה-$i$. נסמן $e_i^t = mat(0, dots.h.c, 1, dots.h.c, 0) in  M_(1 xx m)(F)$ כש-$1$ בעמודה ה-$i$.

  אז $e^t_i dot M = M_(i->)$, כלומר השורה ה-$i$-ית של $M$, ו-$N dot e_j = N_(j arrow.t)$, כלומר העמודה ה-$j$-ית של $N$.

+ $ mat(1, -1, 2; 3, -2, 1)mat(5,2;0,-3;-1,4) = mat(5+0-2, 2 + 3 + 8; 15 +0-1, 6+6+4) = mat(3,13;14,16) in M_(2 xx 2)(F) $

+ $ mat(1;2;3) mat(1,2,3,4) = mat(1,2,3,4;2,4,6,8;3,6,9,12) in M_(3 xx 4)(F) $

=== (טענה) יהיו $V, U, W$ מ״ו מעל שדה $F$ עם בסיסים סופיים $B,C,D$ בהתאמה ויהיו $T:V->U$ ו-$S:U->W$ העתקות לינאריות. אזי $[S of T]_D^B=[S]_D^C dot [T]_C^B$.

==== הוכחה
נסמן $B=(v_1, dots, v_n), C=(u_1, dots, u_s), D=(w_1, dots, w_m)$. נבצע "בדיקת שפיות":
$ [S]_D^C & in M_(m xx s)(F) \ [T]_C^B & in M_(s xx n)(F) \ [S of T]_D^B & in M_(m xx n)(F) $
ולכן הגדלים באמת מסתדרים. נבדוק בכל אחד מהאגפים האם הרכיב ה-$i,j$ שווה או לא. נסמן:

$ [S]_D^C &= (s_(i j))_(&i=1, dots, m\ &j=1,dots,s) \
  [T]_C^B &= (t_(i j))_(&i=1, dots, s\ &j=1,dots,n) \
  [S of T]_D^B &= (x_(i j))_(&i=1, dots, m\ &j=1,dots,n)
$

לפי ההגדרות:
$
  T v_i = sum_(k=1)^s t_(k i) u_k \
  S of T v_i = S(T(v_i)) = S (sum_(k=1)^s t_(k i) u_k ) = sum_(k=1)^s t_(k i) S(u_k) = sum_(k=1)^s sum_(j=1)^m t_(k i) s_j k w_j = sum_(k=1)^m (sum_(k=1)^s s_(j k) t_(k i)) w_j
$
מצד שני, $sum_(k=1)^s s_(j k) t_(k i)$ הוא האיבר ה-$j,i$ של המכפלה $[S]_D^C dot [T]_C^B$, כנדרש. #QED

#pagebreak()
=== (מסקנה) כפל של מטריצות הוא אסוציאטיבי ודיסטריבוטיבי. כלומר:
+ $(A B) C = A(B C)$ לכל שלוש מטריצות מסדרים בהם הכפל מוגדר.
+ $(A+B) C = A C + B C, A (B + C) = A B + A C$ עבור מטריצות בגודל בו הכפל והחיבור מוגדרים.

==== הוכחה
+ אפשר להוכיח ע״י נוסחאות או #underline[ע״י העתקות והקשר למטריצות].

  נבחר העתקות ובסיסים כך ש-$A,B,C$ יהיו המטריצות המייצגות. למשל, $A in M_(m xx s), B in M_(s xx n), C in M_(n xx r)$.
  נסמן:
  $
    &T_A: F^s->F^m &&wide T_A (v) = A v wide [T_A]_E^E = A space(E "הבסיס הסטנדרטי")
  \ &T_B: F^n->F^s &&wide T_B (v) = B v
  \ &T_C: F^r->F^n &&wide T_C (v) = C v
  $
  $ A dot (B C) = [T_A] dot [T_B of T_C] = [T_A of (T_B of T_C)] = [T_A of T_B of T_C] = [(T_A of T_B) of T_C] = (A B) dot C $

+ הוכחה זהה לסעיף הקודם.

#QED
==== (הערה) הכפל אינו חילופי:
$ A = mat(0,1;0,0), B=mat(0,0;0,1), A B = mat(0,1;0,0) != mat(0,0;0,0) = B A $
- אתגר - ליצור דוגמה כזו מסדר $n xx n$ לכל $n>1$.
- עבור $n = 1$ $M_(1 xx 1) (F) tilde.eq  F$ ולכן חילופי.

=== (הגדרה) מטריצת היחידה
$ I_n = mat(1,0,dots.h.c,0; 0, dots.down, dots.down, dots.v; dots.v, dots.down, dots.down, 0; 0, dots.h.c, 0, 1) in M_(n xx n) (F) $
נראה ישירות ש-$I_n dot A = A$ ו- $B dot I_n = B$ לכל $A_(n xx s), B_(s xx n)$.

ואכן $A=(a_(i j))$ ונסמן $I = (delta_(i j))$ כאשר $delta_(i j) = cases(0 "if" i != j, 1 "if" i = j)$.

$ underbrace((I_n dot A)_(i j), i j"סימון לרכיב ה-") = sum_(k=1)^n delta_(i k) dot a_(k j) = delta_(i i) a_(i j) = a_(i j) $
לכן $I_n dot A = A$.

- נשים לב: אם $V$ עם בסיס $B=(v_1, dots, v_n)$ אז העתקת הזהות $id(V): V->V$ מקיימת $[id(V)]_B^B = I_n$.

#pagebreak()
= כתיב מטריציוני של מערכות משוואות

נסמן מערכת משוואות:
$ ast.circle = cases(a_(1 1)x_1 &+ a_(1 2)x_2 &&+ dots.h.c + a_(1 n)x_n &&&= b_1, dots.v, a_(m 1)x_1 &+ a_(m 2)x_2 &&+ dots.h.c + a_(m n)x_n &&&= b_m) $

נסמן $underline(x) = vec(x_1, dots.v, x_n) in F^n, A = (a_(i j)) in M_(m xx n)(F)$ ו-$underline(b) = vec(b_1, dots.v, b_n) in F^m$. אז $ast.circle$ שקול ל-$A underline(x) = underline(b)$.

זה שקול ללהשוות עם משוואה לינארית אחת עם משתנה $a x = b$.

==== מסקנה: הוכחה חדשה לזה שקבוצת הפתרונות של מערכת משוואות היא מ״ו:
במערכת הומוגנית:
$A underline(x) = 0 iff T_A underline(x) = 0$ ומכך קבוצת הפתרונות היא $ker T_A $. \
במערכת לא הומוגנית: $A_x = b iff T_A x = b$ ומכך קבוצת הפתרונות היא $inv(T_A) (b)$.

== המטריצה המשוחלפת (Transpose)
בהינתן מטריצה $A in M_(m xx n) (F)$ נגדיר $A^t in M_(n xx m)(F)$ ע״י $A=(a_(i j))$ $arrl$ $A^t = (a_(j i))$. כלומר, אנחנו מחליפים שורות ועמודות.

לדוגמה: $mat(pi, e, i; -1, 0, 1)^t = mat(pi, -1; e, 0; i, 1)$.

=== (טענה) פעולות עם מטריצות משוחלפות
יהיו $A, B in M_(m xx s)(F)$ ו-$lambda in F$.

+ $(A^t)^t = A$.
+ $(lambda A)^t = lambda A^t$.
+ $(A+B)^t = A^t + B^t$.
+ $(A B)^t = B^t A^t$ (כשהכפל מוגדר, בגדלים המתאימים).

כלומר $dot^t : M_(m xx s)(F) -> M_(s xx m)$ (כאשר $dot^t$ סימון לפונקציה $(dot^t)(A)=A^t$, בדומה לפונקציה $[dot]_B: V->F^n$ שהתמונה של $v$ היא $[v]_B$ כלומר $[dot]_B (v) = [v]_B$) היא לינארית.

==== הוכחה
+ $((A^t)^t)_(i j) = (A^t)_(j i) = A_(i j)$.

+ $(lambda A)_(i j)^t = (lambda A)_(j i) = lambda A_(j i) = lambda(A^t)_(i j)$.

+ $(A+B)^t_(i j) = (A+B)_(j i) = A_(j i) + B_(j i) = (A^t)_(i j) + (B^t)_(i j)$.

+ $(A B)^t_(i j) = (A B)_(j i) = sum_(k=1)^n a_(j k) dot b_(k i) = sum_(k=1)^n A^t_(k j) dot B_(i k)^t =(B^t A^t)_(i j)$.
#QED
