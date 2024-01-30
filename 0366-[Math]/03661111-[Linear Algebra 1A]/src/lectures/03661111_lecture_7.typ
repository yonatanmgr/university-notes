#import "/template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 7",
  authors: ("יונתן מגר",),
  date: "26 בינואר, 2024",
)

// #include "/utils/toc.typ"
// #pagebreak()

#set enum(numbering: "(1.א)")
= תזכורת

== צירוף לינארי (צ״ל)
אם $V$ הוא מ״ו מעל שדה $F$, $v_1, dots, v_s$ הם סדרה של וקטורים ($0<=s in ZZ$) ו-$lambda_1, dots, lambda_s in F$ הם סקלרים בשדה, נגדיר את *הצירוף הלינארי* המתאים להיות: $ sum_(i=1)^s lambda_i v_i = lambda_1 v_1 + dots.h.c + lambda_s v_s $
(במקרה בו $s=0$, נגדיר $sum_(i=1)^0 lambda_i v_i := 0$).

==== צירופים לינארים טריוויאליים ולא טריוויאליים
הצ״ל נקרא *טריוויאלי* אם $lambda_1 = dots.h.c = lambda_s = 0$ *ולא טריוויאלי* אם קיים $i$ כך ש-$lambda_i !=0$.

== בסיס
נגיד שסדרה $B=(v_1, dots, v_s)$ של וקטורים ב-$V$ היא *בסיס* אם לכל $v in V$ קיים צ״ל יחיד\* של איברי $B$ כך שמתקיים:$ v=sum_(i=1)^s lambda_i v_i $
ניתן לדבר בצורה פשוטה גם על $B$ אינסופית (אך לא נעשה זאת).

\*כלומר: קיים $(lambda_1, dots, lambda_s) in F^n$ יחיד עבורו $v= sum_(i=1)^s lambda_i v_i$.

=== מימד
נגדיר את *המימד* של המרחב הוקטורי $V$ להיות מספר האיברים בבסיסו. נסמן $dim V = abs(B)$. לפעמים גם נסמן $dim _F V$.

=== לכל מרחב וקטורי $V$ מעל $F$ יש בסיס, וכל הבסיסים של $V$ הם מגודל (עוצמה) זהה

==== דוגמאות
+ $V=0$. הבסיס הוא הקבוצה הריקה - $B=nothing$. לכן, בהתאם לאינטואיציה, $dim V = 0$.

+ $V=F^n$ (המרחב הסטנדרטי). בהתאם, הבסיס הסטנדרטי הוא: $ B = (e_1 = vec(1,0, dots.v, 0), e_2 = vec(0,1, dots.v, 0), dots.h.c, e_n = vec(0, dots.v, 0, 1)) $
  אכן, נוכל לבחור $vec(x_1, dots.v, x_n) = v in F^n$. אז מתקיים: $ v=vec(x_1, x_2, dots.v, x_n) = x_1 vec(1, 0, dots.v, 0) + x_2 vec(0,1, dots.v, 0) + dots.c.h + x_n vec(0, dots.v, 0, 1) = sum x_i e_i $
  וזוהי הדרך היחידה. לכן, $dim F^n = n$.
+ $V=F[x]_(<=n)$ (מרחב הפולינומים ממעלה $<=n$ מעל $F$). נראה כי המרחב מוגדר גם להיות ${sum_(i=0)^n a_i x^i : a_i in F}$ ולכן $(1, x, dots, x^n)$ הוא הבסיס ו-$dim F[x]_(<=n) = n+1$.

= תלות לינארית
- סדרת וקטורים $(v_1, dots, v_s)$ ב-$F$ נקראת *תלויה לינארית* אם קיים צ״ל לא טריוויאלי ששווה לאפס. כלומר, קיימים $lambda_1, dots, lambda_s in F$ (לא כולם אפס) כך ש-$lambda_1 v_1 + dots.c.h + lambda_s v_s = 0$.
- סדרת וקטורים שהיא לא תלויה לינארית תקרא *בלתי תלויה לינארית* (בת״ל). כלומר, לכל $lambda_1, dots, lambda_s in F$ כך ש-$lambda_1 v_1 + dots.h.c + lambda_s v_s =0$ מתקיים $lambda_1=dots.h.c = lambda_s = 0$.

== דוגמאות

+ אם $0_V$ נמצא בסדרה אז היא תלויה לינארית. אכן, $0=1dot 0_V$.

+ אם $v_1 = v_2$, כלומר הסדרה היא $(v_1, v_1, v_3, v_4 dots)$ אז היא תלויה לינארית, הרי ש-$0=v_1-v_1$.

+ $V=RR^2$. ניקח את הסדרה להיות $(v_1 = (1,2), v_2 =(-2,3))$. נבדוק האם הם בת״ל:
  ניקח $lambda_1, lambda_2 in F$ כך שמתקיים $lambda_1 v_1 + lambda_2 v_2 = 0$. צריך להוכיח ש-$lambda_1=lambda_2=0$ וצריך להראות שהם בת״ל. נראה כי:
  $ lambda_1 v_1 + lambda_2 v_2 = 0 iff cases(lambda_1 - 2 lambda_2 &= 0, 2 lambda_1 + 3 lambda_2 &= 0 ) $
  מדרגים את המטריצה המצומצמת $mat(1, -2; 2, 3)$ $arrow.squiggly.l$ $mat(1,0;0,1)$ ולכן יש פתרון יחיד ($lambda_1 = lambda_2 = 0$) והסדרה בת״ל.

== תזכורת: תת-מרחב לינארי
יהי $V$ מ״ו מעל $F$ ו-$U seq V$ תת-קבוצה. נגדיר את $U$ להיות תת-מרחב אם:

+ $0 in U$
+ $U$ סגור לחיבור.
+ $U$ סגור לכפל בסקלר.

#outlinebox(
  title: "💡 הערות",
  color: "black",  centering: true
)[
  - נוכל להחליף את דרישה (1) ב-$U != nothing$.
  - נוכל להחליף את דרישות (2) ו-(3) בסגירות לצירופים לינאריים.
]

=== אם $U seq V$ תת-מרחב אז $U$ סגורה לצ״ל

==== הוכחה (באינדוקציה)
- בסיס האינדוקציה:
  אם $s=0$ אז $sum_(i=1)^0 = 0 in U$.
- צעד האינדוקציה:
  נניח את הנחת האינדוקציה - $forall v_i in U, lambda_i in F, sum_(i=1)^s lambda_i v_i in U$ ואז מתקיימת ההכלה הבאה:
  $ overbracket(sum_(i=1)^(s+1) lambda_i v_i = underbracket((sum_(i=1)^s lambda_i v_i), in U \ "מהנחת האינדוקציה") + lambda_(s+1) v_(s+1) in U, \ "כי U סגורה לצ״ל מאורך 2") $
  #QED

#pagebreak()

= קבוצה פורשת
סדרה $X=(v_1, dots, v_s)$ של וקטורים במ״ו נקראת *פורשת* אם לכל $v in V$ קיימים $lambda_1, dots, lambda_s in F$ כך ש-$v=sum_(i=1)^s lambda_i v_i$. אם $X$ פורשת, נרשום $span_F (X) = V$ או $span_F (v_1, dots, v_s) = V$. באופן יותר כללי: $ span_F (v_1, dots, v_s) = {sum_(i=1)^s lambda_i v_i : lambda_i in F} = "קבוצת כל הצירופים הלינאריים של האיברים" $

=== $span(v_1, dots, v_s)$ הוא תת-המרחב המינימלי של $V$ המכיל את $v_1, dots, v_s$
כלומר, $span(v_1, dots, v_s ) = sect.big U$ כאשר $U$ רץ על כל תתי-המרחבים של $V$ המכילים את $v_1, dots, v_s$.

==== הוכחה
נסמן $W=span(v_1, dots, v_s)$. נראה כי $sum_(i=1)^s 0 dot v_i = 0 in W$, ו-$W$ סגור לצ״ל: $ lambda underbracket(sum_(i=1)^s lambda_i v_i, in W) + mu underbracket(sum_(i=1)^s mu_i v_i, in W) = sum_(i=1)^s (lambda lambda_i + mu mu_i) v_i in W $
לכן, $W$ תת-מרחב. נוכיח כי $W$ תת-המרחב המינימלי שמכיל את $v_1, dots, v_s$.

יהי $U$ תת-מרחב של $V$ המכיל את $v_1, dots, v_s$. אז הוכחנו (היום) ש-$U$ סגור לצ״ל של $v_1, dots, v_s$ ולכן $W seq U$.
#QED

- דוגמה: $span_RR ((1,0)) = {(x,0) : x in RR} = x"ציר ה-"$.

== מרחב נוצר סופית
נאמר שמ״ו הוא נוצר סופית (נ״ס) אם קיימת תת-קבוצה סופית $X seq V$ שהיא פורשת.

=== דוגמאות

+ $F^n$ נ״ס כי $e_1, dots, e_n$ פורשים אותו.

+ $F[x]_(<=n)$ נ״ס כי $1, dots, x^n$ פורשים אותו.

+ $F[X]$ לא נ״ס.

+ $F^oo = {(a_1, dots, a_n, dots)}$ לא נ״ס.

+ $RR^RR$ לא נ״ס.

=== טענה על מרחבים נוצרים סופית
יהי $V$ מ״ו נ״ס על ידי $n$ איברים $v_1, dots, v_n$. אז לכל סדרה בת״ל יש לכל היותר $n$ איברים.
במילים אחרות, כל סדרה של יותר מ-$n$ איברים היא תלויה לינארית.

==== הוכחה
תהי $(w_1, dots, w_m)$ סדרה בת״ל. רוצים להוכיח ש-$m<=n$. נניח ש-$m>n$ ונוכיח ש-$(w_1, dots, w_m)$ תלויה לינארית. כלומר, צריכים למצוא $lambda_1, dots, lambda_m$ לא כולם אפס, כך ש-$sum_(i=1)^m lambda_i w_i = 0$.

כיוון ש-$v_1, dots, v_n$ פורשים, אז לכל $i$, $w_i$ הוא צ״ל שלהם. כלומר,
$ forall i in {1, dots, m} exists {a_(i 1), dots, a_(i n)} seq F: w_i = a_(i 1) v_1 + dots.c.h + a_(i n) v_n $

מחפשים $lambda_1, dots, lambda_m$ לא כולם אפס כך שמתקיים:
$ (**) arrow.l 0 = sum_(i=1)^m lambda_i w_i = sum_(i=1)^m sum_(j=1)^n lambda_i a_(i j) v_j = sum_(j=1)^n sum_(i=1)^m lambda_i a_(i j) v_j = sum_(j=1)^n (sum_(i=1)^m lambda_i a_(i j)) v_j $
אם $sum_(i=1)^m lambda_i a_(i j) = 0$ לכל $j$ אז ניצחנו.
אך נשים לב שזו צורה מקוצרת של מערכת המשוואות ההומוגנית:
$ (*) arrow.l cases(
  lambda_1 a_(1 1) + dots.c.h + lambda_m a_(1 m) &= 0,
  dots.v,
  lambda_1 a_(n 1) + dots.c.h + lambda_m a_(n m) &= 0
) $

זוהי מערכת משוואות הומוגנית עם $m$ נעלמים ו-$n$ משתנים, ו-$m>n$ ולכן יש פתרון לא טריוויאלי.

כלומר יש $lambda_1, dots, lambda_m$ לא כולם אפס וכך $(*)$ מתקיים, ואז לפי $(**)$ גם $sum lambda_i w_i=0$.

== שרשור

אם $X=(v_1, dots, v_n)$ סדרה של וקטורים, נסמן ב-$X uu {v}$ את השרשור $(v_1, dots, v_n, v)$.

=== אם $v in V without span(X)$ אז $X uu {v}$ בת״ל
תהי $X seq V$ סדרה בת״ל של וקטורים ב-$V$. אם $v in V without span(X)$ אז $X uu {v}$ בת״ל.

==== הוכחה
נסמן $X=(v_1, dots, v_n)$ ונניח ש-$v in V without span(X)$. בנוסף, נניח בשלילה ש-$X uu {v}$ תלויה לינארית.

לכן יש $lambda_1, dots, lambda_n, lambda in F$ לא כולם אפס כך ש-$lambda_1 v_1 + dots.h.c + lambda_n v_n + lambda v = 0$. נחלק למקרים:

+ $lambda=0$ ואז $lambda_1 v_1 + dots.h.c + lambda_n v_n$ עם $lambda_1, dots, lambda_n$ לא כולם אפס, בסתירה לכך ש-$X$ בת״ל.

+ $lambda!=0$. נעביר את $lambda v$ אגף ונחלק ב-$lambda$, ונקבל: $ v=-frac(lambda_1, lambda) v_1 - dots.h.c - frac(lambda_n, lambda) v_n = -sum_(i=0)^n frac(lambda_i, lambda) v_i in span X $ בסתירה לכך ש-$v in.not span(X)$ ולכן השלילה לא נכונה, כלומר $X uu {v}$ בת״ל.
#QED
