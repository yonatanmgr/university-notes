#import "/template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 11",
  authors: ("יונתן מגר",),
  date: "8 בפברואר, 2024",
)

// #include "/utils/toc.typ"
// #pagebreak()

#set enum(numbering: "(1.א)")

==== תזכורת
$phi: V -> U$ העתקה לינארית אם $phi (lambda_1 v_1 + lambda_2 v_2) = lambda_1 phi(v_1) + lambda_2 phi(v_2)$.

=== (משפט) משפט המימדים
$dim V = dim im phi + dim ker phi$. ניסוח שקול: $dim im phi = dim v - dim ker phi$.

=== (טענה)
תהי $phi: V->U$ העתקה לינארית, ויהי $B=(v_1, dots, v_s)$ סדרת וקטורים ב-$V$ ונסמן $phi(B) = (phi(v_1), dots, phi(v_s))$ הסדרה של התמונות. אזי:

+ אם $phi(B)$ בת״ל אז $B$ בת״ל.
+ אם $B$ פורשת אז $phi(B)$ פורשת את $im phi$. בפרט, אם $phi$ על, אז $phi(B)$ פורשת את $U$.
+ אם $ker phi = 0$, אז $B$ בת״ל $iff$ $phi(B)$ בת״ל.
+ אם $phi$ היא איזומורפיזם אז $B$ בסיס/פורש/בת״ל $iff$ $phi(B)$ בסיס/פורש/בת״ל (בהתאמה).

==== הוכחה
+ נניח ש-$phi(B)$ בת״ל. נוכיח ש-$B$ בת״ל. כלומר, נניח ש-$(*) sum_(i=1)^s a_i v_i = 0$. צ״ל: $a_1 = dots.h.c = a_s = 0$: נפעיל את $phi$ על $(*)$: $0 = phi(0) = phi(sum_(i=1)^s a_i v_i) = sum_(i=1)^s a_i phi(v_i)$. כיוון ש-$phi(v_i)$ בת״ל, $a_1 = dots.h.c = a_s = 0$ כנדרש.

+ נניח ש-$B$ פורשת. כלומר,  $forall v in V exists (a_1, dots, a_s) seq F$ כך ש-$v = sum_(i=1)^s a_i v_i$. נוכיח ש-$phi(B)$ פורשת את $im phi$:

  יהי $u in im phi$. צ״ל: קיימים $a_1, dots, a_s$ כך ש-$u=sum_(i=1)^s a_i phi(v_i)$. ואכן, $u in im phi$ גורר כי קיים $v in V$ כך ש-$u = phi(u)$. לפי ההנחה ש-$B$ פורשת את $V$, קיימים $a_1, dots, a_s in F$ כך ש-$v = sum_(i=1)^s a_i v_i$. נפעיל את $phi$:
  $ u = phi(v) = phi(sum_(i=1)^s a_i v_i) = sum_(i=1)^s a_i phi(v_i) $ כנדרש (שימו לב שברור ש-$span(phi(B)) seq im phi$).

+ בסעיף (1) ראינו ש-$phi(B)$ בת״ל $arrl$ $B$ בת״ל. לכן, די להוכיח את הכיוון השני, תחת ההנחה ש-$ker phi = 0$. נניח ש-$B$ בת״ל. צ״ל ש-$phi(B)$ בת״ל:

  נניח ש-$0 = sum_(i=1)^s a_i phi(v_i)$. צ״ל: $a_1 = dots.h.c = a_s = 0$. ואכן, מתקיים כנדרש:
  $ 0 = sum_(i=1)^s a_i phi(v_i) = phi(sum_(i=1)^s a_i v_i) => sum_(i=1)^s a_i v_i in ker phi = 0 => sum_(i=1)^s a_i v_i = 0 tb(=>, "בת״ל" B, "") a_1 = dots.h.c = a_2 = 0 $

+ נניח ש-$phi$ איזומורפיזם. בפרט, $phi$ חח״ע כלומר $ker phi = 0$. לכן, לפי (3) $B$ בת״ל $iff$ $ker phi$ בת״ל. בפרט $phi$ על, לכן לפי (2) $B$ פורש $arrl$ $phi(B)$ פורש. אבל $phi$ הפיכה וההפכית $phi^(-1)$ היא גם איזומורפיזם. לכן,  אם $phi(B)$ פורש אז גם $phi^(-1)(phi(B))=B$ פורש. נשאר להוכיח בסיס $iff$ בסיס, אבל זה נובע מבת״ל ופורש כי בסיס $iff$ בת״ל ופורש.

#QED

#pagebreak()
=== (מסקנות ממשפט המימדים) תהי $phi: V->U$ העתקה לינארית ונניח $dim V < oo$. אזי:

+ אם $phi$ שיכון אזי $dim V <= dim U$.
+ אם $phi$ על אזי $dim V >= dim U$.
+ אם $phi$ איזומורפיזם אזי $dim V = dim U$.
+ אם $phi$ חח״ע ו-$dim V = dim U$ אז $phi$ על (ולכן איזומורפיזם), וגם אם $phi$ על ו-$dim V = dim U$ אז $phi$ חח״ע (ולכן איזומורפיזם).

==== הוכחה
+ $dim V = dim im phi + dim ker phi = dot.circle = dim im phi <= dim U$.
+ $dim V = dim im phi + dim ker phi = dim U + dim ker phi >= dim U$.
+ נובע מ-(1) ו-(2).
+ נניח ש-$phi$ חח״ע. אז $dim U = dim V = dim im phi$. לכן $im phi$ הוא ת״מ של $U$ מאותו מימד ולכן $im phi = U$ ואז $phi$ על. באופן דומה, אם $phi$ על, אז $dim U = dim V = dim U + dim ker phi = 0$ ולכן $phi$ חח״ע.

#QED
=== (משפט) משפט המימדים השני
יהיו $U, W seq V$ תתי-מרחבים. אזי: $dim(U+W) = dim U + dim W - dim(U nn W)$.

==== דוגמה
$
V = RR^2
\ U = "ציר ה-x" = {(x, 0) : x in RR} seq V
\ W = "ציר ה-y" = {(0, y) : y in RR} seq V
\ U + W = RR^2
\ cases(dim (U+W) = 2, dim U = dim W = 1, dim(U nn W) = dim(dot.circle) = 0)
$

=== (למה) $dim U xx W = dim U + dim W$.

==== הוכחה
ניקח $phi: U xx W -> W, phi(u, w) = w$. ברור שמתקיימים:
+ $phi$ העתקה לינארית.
+ $phi$ על $(**)$.
ו-$ker phi = {(u,0) : u in U}$ ו-$dim ker phi = dim U (*)$ (כי $psi: ker phi -> U, psi(u,0) = u$ זה איזומורפיזם).

לכן, $dim U xx W = underbracket(dim W,"התאמה" (**)) + underbracket(dim U, "מימד הגרעין" (*))$.
#QED

==== הוכחת משפט המימדים השני
נגדיר $U xx W = {(u, w) : u in U, w in W}$ (נשים לב שזהו מ״ו).
\ נחשב את $dim(U+W)$. נגדיר העתקה $T: U xx W->V, T(u,w)=u+w$.

+ זו העתקה לינארית כי
  $ T(lambda_1 (u_1, w_1) + lambda_2 (u_2, w_2)) = T(lambda_1 u_1 + lambda_2 u_2, lambda_1 w_1 + lambda_2 w_2) = lambda_1 u_1 + lambda_2 u_2 + lambda_1 w_1 + lambda_2 w_2
  \ = lambda_1 (u_1 + w_1) + lambda_2 (u_2 + w_2) = lambda_1 T(u_1, w_1) + lambda_2 T (u_2, w_2)
  $

+ $im T = U + W$ לפי הגדרה.

+ $ker T = { (u,w) : T(u,w) = 0} = {(u,w) in U xx W : u+w = 0} = {(u,w) : u = -w}$.

  אם $u = -w$ אז $u in U and u in W$. לכן, $ker T = {(u, -u) : u in U nn W}$ ואז $dim ker T = dim U nn W$ (כי ההעתקה $S: ker T -> U nn W, S(u,-u)=u$ היא איזומורפיזם).

לכן נקבל ממשפט המימדים להעתקות לינאריות:
$underbracket(dim(U+W), dim im T) = underbracket(dim U + dim W, dim(U xx V)) - underbracket(dim(U nn W), dim ker T)$.
#QED

=== (הגדרה) מרחב איזומורפי למרחב
נאמר ש-$U$ איזומורפי ל-$V$ (ונסמן $U tilde.eq V$) אם קיים איזומורפיזם $phi: U->V$.

= בסיסים ומסקנות
*המטרה*: להשתמש במושג הבסיס כדי להפוך את האלגברה הלינארית המופשטת (מ״ו, ה״ל וכו׳) למשהו קונקרטי.

=== (הגדרה) וקטור הקואורדינטות
יהי $V$ מ״ו ממימד סופי $n$ מעל שדה $F$, ויהי $B = (v_1, dots, v_n)$ בסיס של $V$.

לדוגמה - $V=RR^2, B_1=(e_1 = vec(1,0), e_2 = vec(0,1))$, אך אפשר גם $V = RR^2, B_2 = (v_1 = vec(1,0), v_2 = vec(1,1))$.

לכל וקטור $v in V$ יש הצגה יחידה: $ v = a_1 v_1 + dots.h.c + a_n v_n = sum_(i=1)^n a_i v_i $
נסמן ב-$[v]_B = vec(a_1, dots.v, a_n) in F^n$ את *וקטור הקואורדינטות* של $v$ לפי $B$.

בדוגמה, $[vec(2,3)]_B_1 = vec(2,3)$ אך $[vec(2,3)]_B_2 = vec(-1, 3)$ (מכיוון ש-$vec(2,3) = -v_1 + 3 v_2$).

=== (משפט) יהי $V$ מ״ו מעל $F$ ממימד $n$ ו-$B=(v_1, dots, v_n)$ בסיס של $V$. אזי, ההעתקה $phi_B: F^n -> V$ המוגדרת ע״י $phi_B (a_1, dots, a_n) = sum_(i=1)^n a_i v_i$ היא איזומורפיזם ו-$forall v in V: phi_B^(-1) (v) = [v]_B$.

==== הוכחה
ראשית נראה ש-$phi_B, phi_B^(-1)$ העתקות לינאריות:
$ phi_B (lambda vec(a_1, dots.v, a_n) + mu vec(b_1, dots.v,b_n)) = phi_B (vec(lambda a_1+ mu b_1, dots.v, lambda a_n+ mu b_n)) = sum (lambda a_i + mu b_i) v_i =
\ lambda sum a_i v_i + mu sum b_i v_i = lambda phi_B vec(a_1, dots.v, a_n) + mu phi_B vec(b_1, dots.v, b_n)
$
ולכן $phi_B$ ה״ל. כנ״ל: העתקה $[dot]_B: V->F^n$ היא העתקה לינארית.
$ vec(a_1, dots.v, a_n) -->^(phi_B) sum a_i v_i -->^([dot]_B) vec(a_1, dots.v, a_n) $ ולכן $[dot]_B of phi_B = id(F^n)$, ובאופן דומה $phi_B of [dot]_B (v) = phi_B ([v]_B)underbracket(=, "לפי הגדרה")v$. #QED
