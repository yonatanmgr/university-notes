#import "../template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 6",
  authors: ("יונתן מגר",),
  date: "18 בינואר, 2024",
)

#set enum(numbering: "(1.א)")

= תתי-מרחבים וקטוריים ומושגים נוספים
=== תזכורת
יהי $V$ מ״ו מעל השדה $F$ ותהי $U seq V$ תת-קבוצה של $V$. נאמר ש-$U$ הוא ת״מ של $V$ אם $U$ מ״ו מעל $F$ ביחס לאותן פעולות של חיבור וכפל בסקלר מ-$F$. מספיק להראות:
+ $U$ סגורה לחיבור.
+ $U$ סגורה לכפל בסקלר מ-$F$.
+ $0 in U$, או לחילופין, $U != emptyset$.

נוכל לדרוש במקום (1) ו-(2) *סגירות לצירופים לינאריים*, כלומר: $forall u, w in U, forall alpha, beta in F: alpha dot u + beta dot w in U$.

== צירופים לינאריים
יהי $V$ מ״ו מעל השדה $F$, ויהיו $v_1, v_2, dots, v_n in V$ וקטורים ב-$V$. לכל $lambda_1, lambda_2, dots, lambda_n in F$, הסכום: $ sum_(k=1)^n lambda_k v_k = lambda_1 dot v_1 + lambda_2dot v_2+ dots + lambda_n dot v_n $
נקרא *צירוף לינארי (צ״ל)*.

== דוגמה: מרחב הפולינומים
$ F [x] = {sum_(k=0)^n a_k x^k | n in ZZ_(>=0) and a_0,a_1, dots,a_k in F } $
מרחב זה מורכב מכל הצ״ל האפשריים של המונומים ${1, x, x^2, x^3, dots}$.

חיבור פולינומים מתבצע בעזרת חיבור המקדמים בהתאמה: 
$
  sum_(k=0)^n a_k x^k + sum_(k=0)^n b_k x^k = sum_(k=0)^n (a_k+b_k) x^k
$

וכן כפל בסקלר מתבצע ע״י מכפלת המקדמים בסקלר זה:
$ 
  lambda dot (sum_(k=0)^n a_k x^k) = sum_(k=0)^n (lambda dot a_k) x^k
$


#outlinebox(title: "זהירות!", centering: true, color: "red")[#align(center)[
  פולינום בקורס שלנו הוא יותר מהערכים שהוא מחזיר!
  למשל, ב-$ZZ_2$ נתבונן בפולינום $x^2+x$:
  $ (x^2+x)(0) = 0 and (x^2+x)(1) = 0 $
  אך פולינום זה *אינו* פולינום האפס, למרות שהם מחזירים את אותם הערכים.
]]

#pagebreak()

נתבונן באוסף הפולינומים ממעלה $n >=$ עבור $n in ZZ_(>=0)$: 
$ F_n [x] = {sum_(k=0)^n a_k x^k | a_0, dots, a_n in F} $

זוהי ודאי תת-קבוצה של $F_[x]$, אך האם זהו ת״מ? $ alpha dot (sum_(k=0)^n a_k x^k)+ beta dot (sum_(k=0)^n a_k x^k) = sum_(k=0)^n overbrace((alpha a_n + beta b_k), in F) x^k in F_n [x] => "ישנה סגירות לצ״ל" $

ופולינום האפס מתקבל מהצ״ל שבו כל המקדמים אפסים $sum_(k=0)^n 0 dot x^k$. כלומר, זהו אכן ת״מ!

== האם איחוד וחיתוך של ת״מ נשאר ת״מ?

נסתכל על $V=RR^2 = {binom(a,b) | a, b in RR}$ ועל תתי-המרחבים $U$ (ציר ה-$x$) ו-$W$ (ציר ה-$y$).

- נראה כי $U nn W = {binom(0, 0)}$ הוא ת״מ טריוויאלי.
- נראה כי $U uu W$ הוא מערכת הצירים, אך לא ת״מ כי אינו סגור לחיבור.


=== טענה
יהי $V$ מ״ו מעל $F$ ויהיו $U,W$ זוג ת״מ של $V$. אז:
+ החיתוך $U nn W$ הינו ת״מ של $V$ גם כן.
+ האיחוד $U uu W$ הוא ת״מ של $V$ אם״ם $U seq W or W seq U$.

=== הוכחה
+ יהיו $v_1, v_2 in U nn W$ ויהיו $alpha, beta in F$. נתבונן בצ״ל $alpha v_1 + beta v_2 in U$ כי $v_1, v_2 in U$ ו-$U$ סגור לצ״ל, וגם $alpha v_1 + beta v_2 in W$ הרי ש-$v_1, v_2 in W$ ו-$W$ ת״מ וסגור לצ״ל. הראנו את הסגירות לצ״ל של $U nn W$. $U$ ת״מ ולכן $0 in U$ וגם $W$ ת״מ ולכן $0 in W$, כלומר $0 in U nn W$, והראנו שהחיתוך $U nn W$ ת״מ שהרי הוא מכיל את $0$ וגם סגור לצ״ל.

+ 
  - $=>$: אם $U seq W$ אז $U uu W = W$ וזהו ת״מ, וגם אם $W seq U$ אז $V uu W = U$ וזהו ת״מ.
  - $arrow.l.double$: נניח ש-$U uu W$ ת״מ ונניח בשלילה ש-$U subset.eq.not W$ וגם $W subset.eq.not U$. $U subset.eq.not W$  ולכן קיים $u in U$ כך ש-$u in.not W$, גם $W subset.eq.not U$ ולכן יש $w in W$ כך ש-$w in.not U$. אבל, $u, w in U uu W$ וזהו ת״מ ולכן גם $u + w in U uu W$, בה״כ נניח $u + w in W$. נקבל $u = u+w+(-w) in W$, בסתירה להנחה. 
  #QED

== סכום של תתי-מרחבים וקטוריים
יהי $V$ מ״ו מעל $F$ ויהיו $U, W$ זוג ת״מ של $V$. נגדיר את הסכום $U+W = {u+w | u in U and w in W}$.

כאשר $U nn W = {0}$ נאמר *שהסכום ישר* ונסמן $U plus.circle W$.

=== טענה
יהיו $U, W$ זוג ת״מ של מ״ו $V$ מעל השדה $F$, אז $U+W$ הינו גם כן ת״מ של $V$. 
זהו למעשה תת-המרחב המינימלי שמכיל את $U uu W$.

=== הוכחה
יהיו $u_1 + w_1, u_2+w_2 in U + W$. כאן $u_1, u_2 in U and w_1, w_2 in W$. יהיו $alpha, beta in F$. נביט בצ״ל:
$ alpha dot (u_1+w_1) + beta dot (u_2 + w_2) = underbrace(alpha u_1 + beta u_2, in U) + underbrace(alpha w_1 + beta w_2, in W) $

$U, W$ ת״מ ולכן $0 in U$ וגם $0 in W$ וכן: $0 = underbracket(0, in U) + underbracket(0, in W) in U + W$. #QED

#outlinebox(title: "הערת אזהרה!", centering: true, color: "red")[#align(center)[
בחיבור ת״מ *אין* חוק צמצום, כלומר אם $u + w_1 = u + w_2$ *לא* ניתן להסיק מכך ש-$w_1 = w_2$.
]]

=== טענה
יהיו $U, W$ זוג ת״מ של מ״ו $V$ מעל השדה $F$. אז:

הסכום $U+W$ הוא סכום ישר אם״ם כל וקטור בסכום ניתן להביע בצורה *יחידה* כסכום של וקטור מ-$U$ ווקטור מ-$W$.

=== הוכחה
- $arrow.l.double$: נניח ש-$U nn W = {0}$. יהיו $u_1, u_2 in U$ ו-$w_1, w_2 in W$ כך ש-$u_1+w_1 = u_2+w_2 in U + W$. נסיק:
  $u_1 - u_2 = w_2 - w-1 in U nn W = {0}$. כלומר: $u_1-u_2 =0 and w_1-w_2 =0$ ומכך $u_1=u_2 and w_1 = w_2$ והראנו את היחידות.

- $arrow.r.double$: נניח שכל וקטור ב-$U+W$ ניתן להביע בצורה יחידה. נראה כי $0 in U nn W$ ויהי $v in U nn W$. נציג:

  $v = underbracket(v, in U)+underbracket(0, in W) = underbracket(0, in U) + underbracket(v, in W)$ ומיחידות ההצגה נסיק $v=0$.
  #QED

= בסיס למרחב
יהי $V$ מ״ו מעל $F$ ותהי $B$ קבוצת וקטורים מ-$V$. נאמר ש-$B$ הינו *בסיס* של $V$ אם כל וקטור ב-$V$ ניתן להבעה *בצורה יחידה* כצ״ל של איברי $B$.

== דוגמאות
+ ${0}$ תת-המרחב הטריוויאלי. כאן הבסיס הוא הקב׳ הריקה (כי צ״ל של אפס וקטורים הוא וקטור האפס שניטרלי לחיבור).
+
  + ב-$F^n$ נגדיר את *הבסיס הסטנדרטי* כך:
  $ E = {e_1 = mat(1;0;0;dots.v;0), e_2 = mat(0;1;0;dots.v;0), dots, e_n = mat(0;0;0;dots.v;1)} $
  נראה כי:
  $
    mat(lambda_1;lambda_2;dots.v;lambda_n) = lambda_1 dot mat(1;0;dots.v;0) + lambda_2 dot mat(0;0;dots.v;0) + dots + lambda_n dot mat(0;0;dots.v;1)
  $

  2.  ב-$RR^2$:
  $ 
    E= {mat(1;0), mat(0;1)}, B={mat(1;1), mat(1;-1)} \
    mat(x;y) = x mat(1;0)+y mat(0;1)=frac(x+y, 2) mat(1;1)+ frac(x-y,2) mat(1;-1)
  $

3. ב-$F[x]$ בסיס אחד יהיה מורכב מהמונומים: ${1,x,x^2, dots}$.

#pagebreak()

// #colorbox()[
  
// ]

== משפט
יהי $V$ מ״ו מעל שדה $F$. אז ל-$V$ קיים בסיס $B$, ובנוסף, לכל זוג בסיסים $B_1, B_2$ של $V$ מתקיים: $abs(B_1)=abs(B_2)$.

=== אתגר: נסו להוכיח את המשפט ב-$RR^2$.

= פרישה של מרחב
יהי $V$ מ״ו מעל $F$ ותהי $A seq V$. נגדיר את *הפרישה* של $A$ להיות אוסף כל הצירופים הלינאריים של וקטורי $A$. נסמן: $ "Sp" _F (A) = { sum_(k=0)^n lambda_k v_k | n in ZZ_(>=0), lambda_1, dots, lambda_n in F, v_1, dots, v_n in A } $

== טענה
יהי $V$ מ״ו מעל $F$ ותהי $A seq V$, אז $"Sp"_F (A)$ הינו ת״מ של $V$.

=== הוכחה
צ״ל של אפס וקטורים ייתן את וקטור האפס, ולכן $0 in "Sp"_F (A)$. סגירות לצ״ל מתקבלת בקלות:
$ alpha (sum_(k=0)^n  lambda_k v_k) + beta (sum_(k=0)^m  mu_k u_k) = sum_(k=0)^n alpha lambda_k v_k +sum_(k=0)^m beta mu_k u_k in "Sp"_F (A) $
#QED