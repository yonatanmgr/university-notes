#import "/template.typ": *

#show: project.with(
  title: "חדו״א 1א׳ - שיעור 11",
  authors: ("יונתן מגר",),
  date: "8 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

=== (טענה) מבחן המנה הכללי
יהי $sum an$ טור חיובי (כאן $an > 0$).

+ אם קיימים $0<q<1$ ו-$N_0 in NN$ כך שמתקיים: $frac(a_(n+1),a_n) <= q, forall n >= N_0$, אזי $sum an$ מתכנס.
+ אם $exists N_0 in NN$ כך ש-$frac(a_(n+1),a_n) >= 1, forall n >= N_0$, אזי $sum an$ מתבדר.

==== הוכחה
+ נניח $frac(a_(n+1),a_n) <= q < 1, forall n >= N_0$. נרשום:
  $ an = a_N_0 dot overbrace(a_(N_0+1)/a_N_0, <=q) dot overbrace(a_(N_0+2)/a_(N_0+1), <=q) dot dots.h.c dot overbrace(an/a_(n-1), <= q), forall n > N_0 $
  ואז   $0< an <= overbrace(a_N_0 dot q^(n-N_0), b_n), forall n > N_0$.

  ו-$sum a_N_0 q^(n-N_0)$ מתכנס כטור הנדסי עם המנה $q$, כאשר $abs(q) < 1$. לכן, לפי מבחן ההשוואה בין טורים חיוביים גם $sum an$ מתכנס.

+ מהנתון נובע $an >= a_(n-1) >= dots >= a_N_0, forall n > N_0$. כלומר, $an >= a_N_0, forall n > N_0$ ולכן $an cancel(->) 0$. \ אחרת, $0>=a_N_0$, בסתירה ל-$a_N_0 > 0$ ואז הטור $sum an$ מתבדר.

#QED

=== (טענה) מבחן המנה הגבולי
יהי $sum an$ טור חיובי (כאן $an > 0$). נסמן $l = overline(lim) frac(a_(n+1), an)$ ו-$u = underline(lim) frac(a_(n+1), an)$.

+ אם $l < 1$ אזי הטור $sum an$ מתבדר.
+ אם $u > 1$ אזי הטור $sum an$ מתבדר.

==== הוכחה
+ נניח כי $l < 1$. כלומר, $exists q. tb(l<q<1,q=l+epsilon "," exists epsilon >0,"")$. מהטענה המתאימה עבור $limsup$ נובע ש-$frac(a_(n+1), an) <= q$ כמעט תמיד. כלומר, $exists N_0 in NN$ כך ש-$frac(a_(n+1), an) <= q, forall n >= N_0$, ואז לפי מבחן המנה הכללי (סעיף 1) הטור $sum an$ מתכנס.

+ נניח כי $u > 1$. כלומר, $exists Q. tb(1<Q<u,Q=u-epsilon "," exists epsilon >0,"")$. מהטענה המתאימה עבור $liminf$ נובע ש-$frac(a_(n+1), an)>=Q = u- epsilon$ כמעט תמיד. יחד עם זאת, נובע גם כי $frac(a_(n+1), an) >= 1$ כמעט תמיד. כלומר, $exists N_0 in NN$ כך ש-$frac(a_(n+1), an) >= 1, forall n >= N_0$. ואז, ממבחן המנה הכללי (סעיף 2) הטור $sum an$ מתבדר.

#QED

==== הערה
אם $l=1$ או $u=1$ לא ניתן לדעת על ההתכנסות של הטור $sum an$:

- $sum 1/n$ מתבדר, וגם $frac(a_(n+1), an) = frac(n, n+1) -> 1$ $arrl$ $l=u=1$.

- $sum 1/n^2$ מתכנס, וגם $frac(a_(n+1), an) = frac(n^2, (n+1)^2) -> 1$ $arrl$ $l=u=1$.

#pagebreak()

=== (טענה) מבחן העיבוי
יהי $suminf(a,n)$ טור כך ש-$a_n >= a_(n+1) >=0$ לכל $n in NN$. אזי: $suminf(a,n)$ מתכנס $iff$ $sum_(n=0)^oo 2^n a_(2^n)$ מתכנס.

==== רעיון ההוכחה
$
  suminf(a,n) &= a_1 + (a_2 + a_3) + (a_4 + a_5 + a_6 + a_7) + (a_8 + a_9 + dots.h.c + a_15) + dots.h.c
\ &<=  a_1 + (a_2 + a_2) + ( a_4 + a_4 + a_4 + a_4) + (a_8 + a_8 + dots.h.c + a_8) + dots.h.c
\ &= a_1 + 2a_2 + 4a_4 + 8a_8 + dots.h.c = sum_(n=0)^oo 2^n a_(2^n)
\ &<= a_1 + (a_2 + a_2) + (a_3 + a_3 + a_4 + a_4) + (a_5 + a_5 + a_6 + a_6 + a_7 + a_7 + a_8 + a_8) + dots.h.c
\ &<= 2 suminf(a,n)
$

=== (דוגמה) לאיזה $p in RR$ הטור $sum_(n=1)^oo 1/n^p$ מתכנס?

==== פתרון
נחלק למקרים:

- אם $p<=0$ הטור מתבדר כי $1/n^p cancel(->) 0$.

- אם $p>0$ נשתמש במבחן העיבוי: $sum_(n=1)^oo 1/n^p$ מתכנס $iff$ $sum_(n=0)^oo 2^n 1/2^(n p)$ מתכנס. אך הטור האחרון הוא הנדסי, עם המנה: $ q = frac(2^(n+1) dot frac(1, 2^((n+1) p)), 2^n dot 1/2^(n p)) = 2 dot 1/2^p = 2^(1-p) $ ואז הטור מתכנס אם ורק אם $2^(1-p) = abs(q)<1$ כלומר כאשר $p>1$. כלומר - הטור $sum 1/n^p$ מתכנס אם ורק אם $p>1$.

=== (דוגמה) האם $sum_(n=2)^oo 1/(n ln(n))$ מתכנס או מתבדר?

==== פתרון
הטור מתבדר כי:
$sum_(n=0)^oo cancel(2^n) dot 1/(cancel(2^n) ln(2^n)) = sum_(n=1)^oo 1/(n ln(2))$ מתבדר.

== טורים עם סימנים מתחלפים

=== (הגדרה) מתכנס בתנאי
אם $sum an$ מתכנס אבל הטור $sum abs(an)$ מתבדר, אז הטור $sum an$ נקרא *מתכנס בתנאי*.

=== (משפט) משפט לייבניץ
תהי $(an)$ סדרה חיובית, מונוטונית יורדת ל-$0$. אזי הטור $sum_(n=1)^oo (-1)^n an$ מתכנס.

==== הוכחה
נוכיח שמתקיים קריטריון קושי להתכנסות טורים. נתון $an > 0$ ו-$lim an = 0$. אזי, $forall epsilon>0 exists N(epsilon) in NN$  כך שמתקיים: $0 < a_(N(epsilon)) = abs(a_(N(epsilon))-0)<epsilon$. אז, עבור $m >= N(epsilon)$ ו-$p in NN$ נקבל:
$ abs(sum_(n=m+1)^(m+p) (-1)^n a_n) &= abs((-1)^(m+1) a_(m+1) + (-1)^(m+2) a_(m+2) + (-1)^(m+3) a_(m+3) + dots.h.c pm a_(m+p))
  \ &= abs((-1)^(m+1) (a_(m+1) - a_(m+2) + a_(m+3) - dots.h.c pm a_(m+p)))
  \ &= underbracket(a_(m+1) - a_(m+2), >=0) + underbracket(a_(m+3), >= 0) - dots.h.c pm a_(m+p) <= a_(m+1) < a_(N(epsilon)) < epsilon
$
#QED

=== (טענה/תרגיל) נתון $an >= 0$ לכל $n in NN$ ו-$limsup root(n, an) = +oo$. צ״ל כי הטור $sum an$ מתבדר.

==== הוכחה
מהנתון קיימת תת״ס $(ank)$ כך ש-$root(n_k, ank) -> +oo$. כלומר, $forall M>0 exists k_M in NN : forall k > k_M, root(n_k, ank)>M$.

בפרט, עבור $M=2$: $ exists k_0 in NN : root(n_k, ank) > 2, forall k > k_0 \ ank > 2^(n_k), forall k > k_0 => a_n cancel(->) 0 $ ואז הטור $sum an$ מתבדר.
