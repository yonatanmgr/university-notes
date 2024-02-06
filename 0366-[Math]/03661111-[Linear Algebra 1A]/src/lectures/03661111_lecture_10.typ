#import "/template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 10",
  authors: ("יונתן מגר",),
  date: "6 בפברואר, 2024",
)

// #include "/utils/toc.typ"
// #pagebreak()

#set enum(numbering: "(1.א)")

= העתקות לינאריות - המשך
== תזכורת
יהיו $U,V$ זוג מ״ו מעל אותו שדה $F$, ותהי $T: U->V$ העתקה. נאמר ש-$T$ ה״ל אם:
$ forall u_1, u_2 in U, forall alpha, beta in F: T(alpha u_1 + beta u_2) = alpha T u_1 + beta T u_2 $

ובהכללה:
$ forall u_1, dots, u_n in U, lambda_1, dots, lambda_n in F: T(sum_(k=1)^n lambda_k u_k) = sum_(k=1)^n lambda_k T u_k $

=== גרעין ותמונה
אם $T: U->V$ ה״ל, הגרעין $ker T = {u in U : T u = 0}$ הוא ת״מ של $U$ והתמונה $im T = {T u : u in U}$ היא ת״מ של $V$.

- ה״ל $T: U->V$ היא *חח״ע* אם $forall u_1, u_2 in U: T u_1 = T u_2 iff u_1 = u_2$.
  - הוכחנו ש-$T$ חח״ע אם״ם $ker T = {0_U}$.
- ה״ל $T: U->V$ היא *על* אם $im T = V$.
  - הוכחנו גם שאם $T$ לינארית אז $T(0_U) = 0_V$.
- ה״ל $T: U->V$ נקראת *איזומורפיזם* אם $T$ חח״ע ועל.
  - הוכחנו שאם $T$ איזומורפיזם קיימת $T: U->V$ שהיא גם כן לינארית וגם כן איזומורפיזם.
// #figure(image("/image.png", width: 20%), caption: [איזומופריזם])

נסמן ב-$hom(U, V)$ את אוסף כל הה״ל מ-$U$ ל-$V$, ונסמן ב-$hom(V)$ את אוסף כל הה״ל מ-$V$ לעצמו.


=== (טענה) יהיו $U,V$ זוג מ״ו מעל אותו שדה $F$. אזי, $hom(U,V)$ הוא בעצמו מ״ו מעל $F$ עם הפעולות:

+ $forall T,S in hom(U,V) forall u in U:  (T+S) (u) = T u + S u$
+ $forall T in hom(U,V) forall lambda in F forall u in U: (lambda T)(u) = lambda T u$

==== הוכחה
$hom (U,V)$ הינו תת-קב׳ של מרחב הפונק׳ מ-$U$ ל-$V$ ($V^U$). בכדי להסיק שזהו ת״מ מספיק להראות שהעתקת האפס היא לינארית (ראינו בשיעור הקודם) וגם שיש סגירות לצ״ל של ה״ל.
$ forall T, S in hom(U,V), forall alpha, beta in F, forall u_1, u_2 in U, forall lambda, mu in F : \ (alpha T + beta S) (lambda u_1 + mu u_2) = lambda(alpha T + beta S) (u_1) + mu(alpha T + beta S) (u_2)
$
נרצה להראות ש-$alpha T+beta T$ לינארית:
$ (alpha T + beta S)(lambda u_1 + mu u_2) &= alpha T (lambda u_1 + mu u_2) + beta S (lambda u_1 + mu u_2) \ &= lambda (alpha T u_1 + beta S u_1) + mu (alpha T u_2 + beta S u_2) \ &= lambda (alpha T + beta S)(u_1) + mu(alpha T + beta S) (u_2) $
#QED

=== (טענה) תהי $T: U->V$ ה״ל ותהי $S: V->W$ גם ה״ל כאשר $U,V,W$ מ״ו מעל אותו שדה $F$. אז ההרכבה $S of T: U->W$ היא גם לינארית.
==== הוכחה
$ forall u_1, u_2 in U, forall alpha, beta in F: S of T(alpha u_1 + beta u_2) = S(T(alpha u_1+beta u_2)) \ = S (alpha T u_1 + beta T u_2) = alpha S(T u_1) + beta S (T u_2) = alpha dot S of T (u_1) + beta dot S of T (u_2) $
#QED

נתבונן ב-$hom(V)$. ההרכבה מתנהגת כפעולת כפל, ומקיימת:

+ קיום איבר נייטרלי - העתקת הזהות.
+ חוק הקיבוץ: לכל שלישייה של ה״ל $T, S, R: V->V$ מתקיים $(T of S) of R = T of (S of R)$.
+ חוקי הפילוג: לכל שלישייה של ה״ל $T, S, R: V->V$ מתקיים:
 $ T of (S+R) = T of S + T of R or (T+S) of R = T of R + S of R $
+ $T of (lambda S) = lambda (T of S)$:
  $ T of (lambda S) u = T (lambda S u) = lambda T (S u) = lambda dot T of S (u) $

#outlinebox(
  title: "🚸 זהירות!",
  color: "red",  centering: true
)[
  אין חוק חילוף בהרכבת ה״ל:
  $ S(x,y) = (x,0), T(x,y) = (y,x), S, T: RR^2->RR^2
    \ T of S (x,y) = T(x,0) = (0,x)
    \ S of T (x,y) = S(y,x) = (y,0)
  $
]

=== (משפט) ה״ל מוגדרת היטב לפי פעולתה על איברי בסיס.

==== הוכחה
יהי $V$ מ״ו מעל השדה $F$ ויהי $B$ בסיס סדור של $V$.
כל וקטור ב-$B$ ניתן להביע בצורה יחידה כצ״ל של איברי $B$.
$ forall v in V exists n in NN_0, exists b_1, dots, b_n in B, exists lambda_1, dots, lambda_n in F: v = sum_(k=1)^n lambda_k b_k $
כעת, $T v = T (sum_(k=1)^n lambda_k b_k) = sum_(k=1)^n lambda_k T b_k $. מהיחידות אנו מסיקים גם שההעתקה מוגדרת היטב (ח״ע). #QED

=== (דוגמה) מעגל היחידה
נגדיר ה״ל נחמדה $T: RR^2->RR^2$:
$ &T vec(1,0) = vec(cos phi, sin phi) \
  &T vec(0,1) = vec(cos (phi + R/2), sin (phi + R/2)) = vec(-&&sin phi, &&cos phi)
$

בהצגה פולארית:
$ T vec(R cos theta, R sin theta) = T (R cos theta vec(1,0) + R sin theta vec(0,1)) = R cos theta dot T vec(1,0) + R sin theta dot T vec(0,1) = \ R cos theta dot vec(cos phi, sin phi) + R sin theta dot vec(-&&sin phi, &&cos phi) = R dot vec(cos theta cos phi - sin theta sin phi, cos theta sin phi+ sin theta cos phi) = R dot vec(cos(theta+phi), sin (theta+phi)) $

=== (משפט) משפט המימד
תהי $T: U->V$ ה״ל כאשר $dim U < oo$. אזי: $dim U = dim ker T + dim im T$.

==== הוכחה
הגרעין הינו ת״מ של $U$, ויהי $B = (b_1, dots, b_n)$ בסיס של $ker T$. נשלים את $B$ לבסיס של $U$ ע״י הוספה של $C=(c_1, dots, c_m)$. כלומר, $dim U = n+m$.
אם נראה ש-$(T c_1, dots, T c_m)$ בסיס של $im T$ נוכל להסיק את המשפט.
יהי $v in im T$. מכאן שקיים $u in U$ כך ש-$T u = v$. $B uu U$ בסיס של $U$, כלומר: $u = sum_(k=1)^n alpha_k b_k + sum_(k=1)^m beta_k c_k$. כעת:
$ v= T u = T (sum_(k=1)^n alpha_k b_k + sum_(k=1)^m beta_k c_k) overbrace(=, "T ה״ל") sum_(k=1)^n T b_k + sum_(k=1)^m beta k T c_k in span{T c_1, dots, T c_n} $
ואכן $span{T c_1, dots, T c_m} = im T $, ואז נותר להראות ש-${T c_1, dots, T c_m}$ בת״ל:
$ 0 = sum_(k=1)^m alpha_k T c_k = T (underbrace(sum_(k=1)^m alpha_k c_k, in ker T)) $

#QED
