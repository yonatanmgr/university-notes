#import "../template.typ": *

#show: project.with(
  title: "חדוא 1א׳ - שיעור 6",
  authors: ("יונתן מגר",),
  date: "16 בינואר, 2024",
)

#set enum(numbering: "(1.א)")

= טענות נוספות על התכנסות סדרות
== מבחן השורש הכללי
תהי סדרה $an >= 0 forall n in NN$ ו-$exists 0 <= alpha < 1$ ו-$exists n_0 in NN$ כך ש-$an ^(1/n) <= alpha forall n > n_0$. אזי $exists liminf(an) = 0$.
=== הוכחה
$0 <= an <= alpha^n, forall n > n_0$. מכיוון ש-$alpha^n$ שואפת ל-$0$ וכך גם הסדרה הקבועה $0$, גם $an$ שואפת ל-$0$ (כלל הסנדוויץ׳). #QED

=== שאלה
תהי סדרה $an >= 0 forall n in NN$ המקיימת $an ^(1/n)<1 forall n in NN$. האם הסדרה $(an)$ בהכרח מתכנסת? #underline[לא]. למשל, הסדרה: $ an:  1/2, 1/3, 1/2, 1/3 dots $
ואז $an ^(1/n) < 1 forall n in NN$, אך אין גבול $liminf(an)$!

== מבחן השורש הגבולי
תהי סדרה $an >= 0 forall n in NN$ ונניח כי $exists liminf(an^(1/n)) = P$. אזי:
+ אם $P<1$ #math.arrow.l.double $exists liminf(an) = 0$.
+ אם $P>1$ #math.arrow.l.double $liminf(an) = +oo$.

=== הוכחה
+ אם $P<1$, נבחר $0<epsilon<1-P$ $arrl$ $P + epsilon<1$. אז מהגדרת הגבול: $exists n_epsilon in NN: abs(an^(1/n)-P)<epsilon forall n > n_epsilon$. ואז, בפרט, $an^(1/n) < P+epsilon <1$. מהמשפט הקודם ($alpha = P+epsilon$), סיימנו.
+ אם $P>1$, נבחר $0< epsilon < P-1$ $arrl$ $1< P-epsilon$. מהגדרת הגבול: $exists n_epsilon in NN: abs(an^(1/n)-P)<epsilon forall n > n_epsilon$. בפרט, $1<P-epsilon<an^(1/n) forall n > n_epsilon$. ואז, $1<(P-epsilon)^n<an forall n > n_epsilon$.
#QED

== מבחן המנה הגבולי
תהי $an > 0 forall n in NN$ כך ש-$liminf(frac(a_(n+1), an))=L$. 
+ אם $L<1$ $arrl$ $lim an = 0$.
+ אם $L>1$ $arrl$ $lim a_n = +oo$.

== מבחן המנה הכללי
+ נתונה סדרה חיובית $(an)$ ונתונים $n_0 in NN$ ו-$L<1$ כך ש-$a_(n+1)<L a_n forall n > n_0$. אזי $lim a_n =0$.
+ נתונה סדרה חיובית $(an)$ ונתונים $n_0 in NN$ ו-$L>1$ כך ש-$a_(n+1)>L a_n forall n > n_0$. אזי $lim a_n =+oo$.

#pagebreak()
= סדרות מונוטוניות
- סדרה $(an)$ נקראת *מונוטונית עולה* אם $a_(n+1) >= a_n forall n in NN$, ונקראת *מונוטונית יורדת* אם $a_(n+1) <= a_n forall n in NN$.
- אם מתקיים $a_(n+1) > a_n forall n in NN$ אז הסדרה *עולה ממש*, ואם $a_(n+1) < a_n forall n in NN$ אז הסדרה *יורדת ממש*.

== משפט
תהי $(an)$ סדרה מונוטונית עולה וחסומה מלמעלה. אזי, $exists lim an=sup an$. אם $(an)$ מונוטונית יורדת וחסומה מלמטה, אז $exists lim an = inf an$.
=== הוכחה
נוכיח את המקרה הראשון (השני זהה); נסמן $L = sup an$ ונוכיח $lim an = L$. יהי $epsilon > 0$ שרירותי. קיים $n_epsilon in NN$ כך ש-
$ overbrace(L-epsilon <, L=sup an) underbrace(a_n_epsilon <=, forall n > n_epsilon) overbrace(a_n <= L, sup an = L) underbrace(< L + epsilon, epsilon>0) $
כלומר הוכחנו: $ forall epsilon >0 exists n_epsilon in NN: L-epsilon < a_n < L+epsilon, forall n > n_epsilon $ 
#QED

=== דוגמה
נתונה סדרה $an = (1-1/2) dot (1-1/2^2) dot dots dot (1-1/2^n)$. האם היא מתכנסת?

=== פתרון
$a_(n+1)=overbracket((1-1/2) dot dots dot (1-1/2^n), an) dot (1-1/2^(n+1)) <= an forall n in NN$ ואז הסדרה מונ׳ יורדת. מצד שני,  $0<an forall n in NN$, כלומר הסדרה חסומה מלמטה, ואז לפי המשפט הקודם $exists lim an$.

=== דוגמה
נתונה סדרה המוגדרת ע״י $a_1 = sqrt(6)$ ו-$a_(n+1) = sqrt(6 + a)_n forall n in NN$. צ״ל כי $exists lim an$ ולחשב אותו.

=== פתרון
- נוכיח באינדוקציה כי הסדרה עולה (ברור ש-$an >= 0 forall n in NN$).

  + $a_2 >= a_1$: $a_2 = sqrt(6+a_1)=sqrt(6+sqrt(6))>=sqrt(6)=a_1$.
  + נתון $a_n >= a_(n-1)$ ואז $a_(n+1) = sqrt(6+an) >= sqrt(6+a_(n-1)) = an$. 

- נוכיח באינדוקציה כי הסדרה חסומה מלמעלה.

  + $a_1 <= 3$: $a_1 = sqrt(6) <=3$.
  + נתון $an <= 3$ ואז $a_(n+1) = sqrt(an + 6) <= 3$. 

לכן $exists lim an = a$. נחשב את $a$: מהמשפטים הקודמים $lim a_(n+1) = a$ וגם $lim sqrt(6+ an) = sqrt(6 + a)$. מכאן מתקיים $0<= a = sqrt(6+a)$. פתרונות המשוואה הריבועית $a^2 - a - 6 =0$ הם $a_1 = 3, a_2= -2$, כלומר $a=3$.
#QED

== טענה
סדרה $(an)$ מונוטונית עולה ולא חסומה מלמעלה מתכנסת ל-$+oo$. בדומה, סדרה $(an)$ מונוטונית יורדת ולא חסומה מלמטה מתכנסת ל-$-oo$.

#pagebreak()
== סדרה השואפת ל-$e$
=== טענה
הסדרה $an = (1+ 1/n)^n$ מונוטונית עולה וחסומה.

=== הוכחה
- עליה:
$ an &= (1+ 1/n)^n = sum_(j = 0)^n binom(n,j)^(n-j) dot (1/n)^j = sum_(j = 0)^n frac(n!, j!(n-j)!) dot 1/n^j \
  &= 1 + 1 + sum_(j = 2)^n frac(cancel((n-j)!)(n-j+1) dot dots dot n,j!cancel((n-j)!) dot (n dot n dot dots dot n)) \
  &= 1+1+sum_(j = 2)^n  1/j! (frac(n-j+1, n) dot frac(n-j+2, n) dot dots dot frac(n-1, n) dot cancel(n/n)) \ 
  &= 1+1+sum_(j = 2)^n  1/j! (1-1/n)(1-2/n)dots(1-frac(j-1,n)) \
  &<= 1+1+sum_(j = 2)^n  1/j! (1-1/(n+1))(1-2/(n+1))dots(1-frac(j-1,n+1)) \
  &<= 1+1+sum_(j = 2)^(n+1) 1/j! (1-1/(n+1))dots(1-frac(j-1,n+1)) = (1+frac(1, n+1))^(n+1) = a_(n+1)
$

- חסימות: 
$ 2 &= a_1 <= a_n = (1+1/n)^n <= 1+1 + sum_(j = 2)^n  1/j! = 1+1+1/2+1/(2 dot 3)+dots + frac(1, 2 dot 3 dot dots dot n) \
  & <= 1+ 1 + 1/2 + frac(1, 2 dot 2) + dots + frac(1, underbracket(2 dot 2 dot dots dot 2, "פעמים" n-1)) = 1 + 1 + frac(cancel(1/2)(1-(1/2)^(n-1)),cancel(1-1/2)) = 2+1-frac(1, 2^(n-1)) \
  &= 3 -frac(1, 2^(n-1)) < 3
$
#QED

=== מסקנה
הסדרה $an$ עולה וחסומה מלמעלה, לכן $exists lim (1+1/n)^n$. מסמנים את הגבול ב-$e$ ($2<=e<=3$). 

=== הערה
בהמשך הקורס רואים שמתקיים גם $e=liminf(sum_(k=1)^n 1/k!)$. ניתן לחשב $e=2.71828dots$.

=== טענה (בתרגיל)
תהי $x_n-> +oo$ (או $x_n->-oo$). אזי, $liminf((1+1/x_n)^(x_n)) = e$.