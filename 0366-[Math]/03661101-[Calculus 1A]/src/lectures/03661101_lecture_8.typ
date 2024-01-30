#import "/template.typ": *

#show: project.with(
  title: "חדו״א 1א׳ - שיעור 8",
  authors: ("יונתן מגר",),
  date: "30 בינואר, 2024",
)

#set enum(numbering: "(1.א)")

= גבולות חלקיים
== הגדרה
מספר $x in RR$ (או $x=pm oo$) נקרא *גבול חלקי* (במובן הרחב) של סדרה $(an)_(n=1)^oo$ אם קיימת תת-סדרה $(a_n_k)_(k=1)^oo$ כך ש:
$ lim_(k->oo) a_n_k = x $
== דוגמאות

+ $an = (-1)^n$. נראה כי $exists.not lim an$. אך תת-הסדרה $a_n_k = a_(2k) = 1$ שואפת ל-$1$ ולכן $1$ גבול חלקי של $(an)$. נראה כי גם $a_n_k = a_(2k-1) = -1 -> -1$ ולכן גם $-1$ הוא גבול חלקי של $(an)$.

+ תהי $M = {x_1, dots, x_m}$ קבוצה סופית של מספרים ממשיים. נבנה סדרה $(an)$ כך שכל איבר מ-$M$ הינו גבול חלקי שלה: $an: x_1, dots, x_m, x_1, dots, x_m, dots$. נראה כי קיים לסדרה גבול חלקי לכל איבר מ-$M$ עבור כל תת-סדרה לפי הנוסחה $a_n_k=a_(m+k)$ ו-$m$ הולך מ-$0$ ל-$oo$.

+ תהי ${x_1, x_2, dots, x_m, dots}$ קבוצה אינסופית. נבנה סדרה $(an)$ שכל איבר מ-$M$ הינו גבול חלקי שלה: $ an: x_1, x_1, x_2, x_1, x_2, x_3, dots $
  האם מובטח שאין לה גבולות חלקיים שונים מ-$M$? #underline[לא], למשל, $M={1, 1/2, 1/3, dots}$. כאשר נבנה את הסדרה באותו האופן, נראה כי גם $0$ הוא גבול חלקי שלה, אך הוא לא נמצא ב-$M$.

== טענות, משפטים ומסקנות
=== (טענה) הסדרה $(an)$ אינה חסומה מלמעלה אם״ם $+oo$ הינו גבול חלקי של $(an)$ (בדומה, חסימות מלמטה של $(an)$ שקולה לכך ש-$-oo$ איננו גבול חלקי שלה)

==== הוכחה

אם $+oo$ גבול חלקי אז $exists ank -->^(k-oo) +oo$. כלומר, $forall M>0 exists k_M in NN : ank > M, forall k>k_M$ ואז $(an)$ לא חסומה מלמעלה.

נניח עתה כי $(an)$ איננה חסומה מלמעלה. אזי, קיים איבר בסדרה $1<a_n_1$. נתבונן כעת בתת״ס $a_(n_1+1), a_(n_1+2), dots$. תת״ס זו גם איננה חסומה מלמעלה. לכן, ניתן למצוא איבר בתת״ס $2< a_n_2$ (נשים לב ש-$n_2>n_1$). נמשיך ונקבל $k<ank$ לכל $k$ טבעי. ואז $limits(lim)_(k->oo) ank = + oo$.
#QED

=== (טענה) לכל סדרה יש לפחות גבול חלקי אחד (כולל במובן הרחב)

=== (טענה) המספר $L in RR$ גבול חלקי של הסדרה $(an)$ אם״ם לכל $epsilon >0$ הקבוצה ${n: abs(an-L)<epsilon}$ אינסופית
(הטענה שקולה למושג גבול חלקי).

==== הוכחה

נניח כי $L$ גבול חלקי. כלומר, $exists ank -->^(k->oo) L$, ואז $forall epsilon>0, exists n_epsilon in NN: abs(ank-L)<epsilon, forall k> n_epsilon$.

נניח עתה כי $forall epsilon> 0$ הקבוצה ${n: abs(an-L)<epsilon}$ היא אינסופית. נבנה את התת״ס $(ank)_(k=1)^oo$ השואפת ל-$L$ באופן הבא: נבחר $n_1 in NN$ כך ש-$abs(a_n_1 - L) < 1/1$. נבחר $n_2>n_1$ כך ש-$abs(a_n_2 - L) < 1/2$. נמשיך כך, כלומר נבחר את $n_k$ באופן הבא: $abs(a_n_k - L) < 1/k$. ואז, $L-1/k < ank < L+1/k$. לפי כלל הסנדוויץ׳, כאשר $k->oo$, גם $ank->oo$. $QED$

= $liminf$ ו-$limsup$
== הגדרה

תהי $(an)$ סדרה. נסמן ב-$P$ את אוסף הגבולות החלקיים הסופיים שלה, ונסמן ב-$hat(P)$ את אוסף הגבולות החלקיים שאינם בהכרח סופיים. ברור ש-$P seq hat(P)$ ו-$hat(P) != nothing$. למשל, $1,1,3,1,5,dots$. נראה כי $P={1}, hat(P)={1, +oo}$.
- *הערה* - אם $(an)$ חסומה אז $pm oo$ אינם גבולות חלקיים ואז $nothing != P=hat(P)$.
*נגדיר*:
$ limsup an &= overline(lim) an &&= sup hat(P)
  \ liminf an &= underline(lim) an &&= inf hat(P)
$

==== הערה
ברור כי $forall m in NN: underbracket(inf an, M_1) <= a_m <= underbracket(sup an, M_2) $. מכאן נובע כי: $ inf an &<= limsup an&&<= sup an \ inf an &<= liminf an &&<= sup an $ וייתכן ש-$limsup an < sup an$ ובאופן דומה $inf an < liminf an$.

למשל, בסדרה $-1, 1, 1/2, 1/3, 1/4, dots$ : $sup an = 1$, $limsup an = 0$, $lim an = -1$, $liminf an = 0$, $hat(P) = {0}$.

== טענות, משפטים ומסקנות
=== (טענה) $hat(P) = {L} iff lim an = L in RR$
==== הוכחה
- $arrow.l.double$: הוכחנו.
- $arrow.r.double$: נניח כי $hat(P)={L}$ ו-$L != pm oo$. נראה כי $lim an = L$. מהנתון נובע ש-$(an)$ חסומה, כי אחרת $pm oo in
 hat(P)$ בסתירה. אז $exists M>0: abs(an) <= M, forall n in NN$. נזכיר את הגדרת $lim an = L$:
 $ forall epsilon > 0 exists n_epsilon in NN: forall n > n_epsilon, abs(an - L) < epsilon $
 נניח בשלילה כי מתקיים: $ exists epsilon_0 > 0 forall n in NN : exists n_0 > n, abs(a_n_0 - L) >= epsilon_0 $
  בפרט, יש אינסוף של ערכים של $n$ עבורם $abs(an - L) >= 0$. כלומר, $an-L >= epsilon_0$ או $an-L <= -epsilon_0$. כלומר, $L + epsilon_0 <= an <= M$ או $-M <= an <= L- epsilon_0$.

  לכן, לפחות באחד מהקטעים $[L+epsilon_0, M]$ או $[-M, L-epsilon_0]$ יש מספר אינסופי של איברי הסדרה.

  נניח כי ב-$[-M, L-epsilon_0]$ יש מספר אינסופי של איברי הסדרה $(an)$. ואז, מאינסוף איברים אלה נבחר תת-סדרה $(ank)$ של $(an)$. כלומר, מתקיים $-M<=ank<=L-epsilon_0, forall k in NN$.

  מכך נובע כי קיימת תת״ס $(a_n_k_l)_(l=1)^oo$ של $(ank)_(k=1)^oo$ כך ש- $a_n_k_l -->^(l -> oo) L' in RR$.

  בגלל ש-$(a_n_k_l)_(l=1)^oo$ היא גם תת״ס של $(an)$ אזי מסיקים ש-$L' in hat(P)$.
  מצד שני, $a_n_k_l <= L- epsilon_0$ ואז מתקיים: $ L'<=L-epsilon_0<L => L' != L $ בסתירה ל-$hat(P)={L}$.
#QED

=== (תרגיל) $hat(P)={+oo} iff lim an = +oo$
באופן דומה, גם $hat(P)={-oo} iff lim an = -oo$.

=== (מסקנה מהטענות) $L = lim an$ (סופי או אינסופי) אם״ם $limsup an = liminf an = L$.

=== (משפט) אם $(an)$ סדרה חסומה (ואז $hat(P)=P$) אזי $exists min P$ ו-$exists max P$

==== הערה
מהמשפט נובע כי $liminf an in P and limsup an in P$.
