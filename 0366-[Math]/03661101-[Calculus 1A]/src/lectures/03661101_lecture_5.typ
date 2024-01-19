#import "../template.typ": *

#show: project.with(
  title: "חדוא 1א׳ - שיעור 5",
  authors: ("יונתן מגר",),
  date: "11 בינואר, 2024",
)

#set enum(numbering: "(1.א)")

= חשבון גבולות

== משפט
נתונות שתי סדרות $(a_n)$ ו-$(b_n)$, ונניח $lim a_n =a$ ו-$lim b_n = b$. אזי:
+ $exists lim (a_n + b_n) = lim a_n + lim b_n = a + b$
+ $exists lim (a_n dot b_n) = lim a_n dot lim b_n = a dot b$
+ $exists lim a_n / b_n = (lim a_n) / (lim b_n) = a / b$ (בתנאי נוסף: $forall n in NN, b_n != 0$ ו-$b != 0$).

=== הוכחה
+ נתון $forall epsilon>0 exists n'_epsilon in NN : abs(a_n - a) < epsilon/2, forall n > n'_epsilon$ ונתון $forall epsilon>0 exists n''_epsilon in NN : abs(b_n - b) < epsilon/2, forall n > n''_epsilon$.

  ואז $forall n > n_epsilon = max{n'_epsilon, n''_epsilon}$: $ abs((a_n+b_n) - (a+b)) = abs(a_n-a+b_n-b) <= abs(a_n-a)+abs(b_n-b) < epsilon/2 + epsilon/2 = epsilon $ 
  #QED

+ יהי $epsilon > 0$ שרירותי. הסדרה $(a_n)$ מתכנסת ולכן חסומה, כלומר $exists M > 0: abs(a_n) <= M, forall n in NN$. ואז: 
  $ abs(a_n b_n - a b) = abs(a_n b_n - a_n b + a_b b - a b) <= abs(a_n b_n - a_n b) + abs(a_n b - a b) = \ 
    = abs(a_n) abs(b_n - b) + abs(b) abs(a_n -a) <= M abs(b_n - b) + abs(b) abs(a_n - a), forall n in NN
  $
  מצד שני, מהנתון נובע:
  $ exists n'_epsilon in NN : abs(a_n-a) < epsilon/(2abs(b)), forall n > n'_epsilon \
    exists n''_epsilon in NN : abs(b_n-b) < epsilon/(2 M), forall n > n''_epsilon
  $
  ואז $forall n > n_epsilon = max{n'_epsilon, n''_epsilon}$, מ-(1) נובע:
  $ abs(a_n b_n - a b) < epsilon/2 + epsilon/2 dot frac(abs(b), abs(b)+1) < epsilon $
  #QED

+ הוכחנו (2), ולכן מספיק להוכיח $lim 1/b_n = 1/b$. מהנתון $b_n -> b!=0$ ומכך $abs(b_n) -> abs(b) > 0$.

  נשתמש בלמה מהשיעור הקודם, ונסיק כי $0<r<abs(b)$, עבור $r$ מסוים. נראה כי $exists n_0 in NN : abs(b) > r, forall n > n_0$. נשים לב כי $forall n > n_0$ מתקיים $abs(1/b_n-1/b) = frac(abs(b-b_n), abs(b_n) abs(b)) < 1/(r abs(b)) abs(b_n - b)$. כעת, יהי $epsilon > 0$ שרירותי. אז: $ exists n'_epsilon in NN : abs(b_n - b) < epsilon r abs(b), forall n < n'_epsilon $ ואז $forall n > n_epsilon = max {n_0, n'_epsilon}$: $ abs(1/b_n - 1/b)<1/(r abs(b)) abs(b_n - b) < 1/cancel(r abs(b)) dot epsilon cancel(r abs(b)) = epsilon $ #QED

=== דוגמה
$ liminf(sqrt(n)) (sqrt(n+1) -sqrt(n)) = limitn frac(sqrt(n)(sqrt(n+1) -sqrt(n))(sqrt(n+1) +sqrt(n)), sqrt(n+1)+ sqrt(n)) = \ 
  limitn frac((n+1)-n, sqrt(1+1/n)+1) = limitn 1/(sqrt(1+1/n)+1) = 1/2
$

= מונוטוניות הגבול
== למה
נתונה סדרה $(d_n)$ כאשר $d_n >= 0$ ו-$d_n->d$. אזי $d>=0$.

=== הוכחה
מהנתון נובע $forall epsilon > 0 exists n_epsilon in NN : abs(d_n - d) < epsilon, forall n > n_epsilon$. נניח בשלילה ש-$d < 0$, ונבחר $0 < epsilon < -d$. מכך נובע ש-$d+epsilon<0$. 

אז עבור $epsilon$, $exists n_0 in NN$ כך ש-$abs(d_n -d) < epsilon, forall n >n_0$ $arrow.double.l$ $d_n -d < epsilon, forall n > n_0$  $arrow.double.l$ $d_n < d+ epsilon, forall n > n_0$ וזו סתירה $forall n > n_0, d_n >=0$. #QED

=== הערה 
מעבר לגבול ״לא מכבד״ אי-שיוויון חזק, למשל $d_n = 1/n > 0 = d_n$ בגבול $0 >= 0$.

== משפט (הכללה של הלמה)
נתונות שתי סדרות $(a_n)$ ו-$(b_n)$, ונניח $lim a_n =a$ ו-$lim b_n = b$ ו-$a_n <= b_n$. אזי $a<=b$.

=== הוכחה
נגדיר $d_n = b_n - a_n >=0$. לכן, $d_n -> b-a$. לפי הלמה, $b-a >=0$, כלומר $a<=b$. #QED

בפרט, המשפט אומר שאם $c<=a_n<=b$ ו-$c_n -> a$, אז $c<=a<=b$.

= כלל הסנדוויץ'
נתונות שלוש סדרות $(x_n), (y_n), (z_n)$ כך ש-$(x_n)->L, (y_n)->L$. נניח גם ש-$ exists n_0 in NN : x_n <= z_n <= y_n, forall n < n_0 $ אזי $liminf(z_n)=L$.

=== הוכחה
נתון:
$ forall epsilon > 0 exists n'_epsilon in NN: L- epsilon < x_n < L+ epsilon, forall n > n'_epsilon \
  exists n''_epsilon in NN : L- epsilon < y_n < L+ epsilon, forall n > n''_epsilon \ 
  exists n_0 in NN : x_n <= z_n <= y_n, forall n > n_0 \ 
$

לכן, $forall n > n_epsilon = max{n'_epsilon, n''_epsilon, n_0}$ מתקיים $L- epsilon < x_n <= z_n <= y_n < L+ epsilon$. כלומר, 
$ forall epsilon >0 exists n_epsilon in NN: L- epsilon < z_n < L+epsilon, forall n>n_epsilon $ 
#QED

=== דוגמאות
- תרגיל: $liminf(sqrt(1+1/n)) = 1$

- פתרון בכלל הסנדוויץ׳: $x_n = 1<= z_n = sqrt(1+1/n)<= 1 + 1/n =y_n$ וכל הסדרות שואפות ל-$1$.

- תרגיל: $frac(n, n^2 + 5n +3) = frac(1/n, 1+5/n+3/n^2) = frac(0, 1+0+0)=0$

- פתרון בכלל הסנדוויץ׳: $0 <= frac(n, n^2 + 5n +3) <= n/n^2 = 1/n, forall n>=1$ וכל הסדרות שואפות ל-$.0$


== דוגמה 
תהי $(a_n)$ סדרה חסומה. אזי הסדרה $a_n/n -> 0$.

=== הוכחה
מהנתון $exists M >0: abs(a_n) <= M, forall n in NN$. כלומר $-M <= a_n <= M, forall n in NN$ ולכן $-M/n <= a_n/n <= M/n forall n in NN$ וכל הסדרות שואפות ל-0 לפי כלל הסנדוויץ׳.

== טענה
תהי קבוצה $B != emptyset$ חסומה מלמעלה. אז $exists (x_n) seq B$ כך ש-$lim x_n = sup B$.

=== הוכחה
מתקיים $forall epsilon >0 exists x_epsilon in B: sup B - epsilon <= x_epsilon <= sup B$.

נבחר $epsilon = 1/n >0$, כלומר $exists x_n in B$ כך ש-$forall n>=1, sup B - 1/n <= x_n <= sup B$ וכל הסדרות שואפות ל-$sup B$.

== הערה
אם קבוצה $B != emptyset$ חסומה מלמטה, אז $exists x_n in B$ לכל $n in NN$ כך ש-$liminf(x_n) = inf B$.

= נוסחת סטירלינג
הנוסחה: $n! tilde.eq frac(n^n, e^n) sqrt(2 pi n)$. כלומר $limitn frac(n!, n^n/e^n sqrt(2 pi n)) =1$