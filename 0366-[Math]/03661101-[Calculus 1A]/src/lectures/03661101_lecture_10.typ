#import "/template.typ": *

#show: project.with(
  title: "חדו״א 1א׳ - שיעור 10",
  authors: ("יונתן מגר",),
  date: "6 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

= טורים
== סדרת הסכומים החלקיים
תהי $(an)$ סדרה. נגדיר סדרה חדשה שנקראת *סדרת הסכומים החלקיים* של $(an)$ באופן הבא: $S_n = sum_(k=1)^n a_k$: $ S_1 = a_1, S_2 = a_1+a_2, dots, S_n = a_1 + a_2 + dots.h.c + a_n $

== הגדרת הטור
נאמר כי *הטור האינסופי* (או פשוט *הטור*) $sum_(k=1)^oo a_k = a_1 + a_2 + dots.h.c$ *מתכנס* אם הסדרה $(S_n)$ מתכנסת ואז נגדיר:
$ sum_(k=1)^oo a_k = liminff(S_n) $
אחרת, נאמר שהטור $sum_(k=1)^oo a_k$ *מתבדר*.

== דוגמאות

+ $sum_(k=1)^oo 1$ $arrl$ $forall k in NN, a_k = 1$ $arrl$ $S_n = 1+1+dots.h.c+1 =n$ $arrl$ $liminff(S_n)=oo$ כלומר הטור מתבדר.

+ $sum_(k=1)^oo (-1)^k$ $arrl$ $a_k = (-1)^k, forall k in NN$ $arrl$ $S_n = -1+1-1+1- dots.h.c = cases(-1 &"if" n "odd",0 &"else")$ $arrl$ $exists.not lim S_n$
  והטור מתבדר.

+ $sum_(k=1)^oo 1/(2^k)$ $arrl$ $a_k = 1/(2^k), k in NN$ $arrl$ $S_n = 1/2 + 1/2^2+dots.h.c+1/2^n=frac(1/2 (1-(1/2)^n),1-1/2) = 1-1/2^n->1$ והטור מתכנס.

=== (טענה) הטור הגיאומטרי $sum_(k=1)^oo a_k$ (כלומר $a_k=a_1 q^(k-1)$) מתכנס אם״ם $abs(q)<1$ ובמקרה זה $sum_(k=1)^oo a_k = a_1/(1-q)$.

=== (טענה) הטור ההרמוני $sum_(k=1)^oo 1/k$ מתבדר.
==== הוכחה
בשיעור הקודם, הוכחנו שהסדרה $an = 1+1/2+dots.h.c + 1/n$ לא מתכנסת (בעזרת קריטריון קושי). אז, הטור $sum 1/k$ מתבדר.

== טענת כלליות על טורים
=== (טענה) אם הטור $sum an$ מתכנס אזי $an->0$. באופן שקול, אם $an cancel(->) 0$ אז $sum an$ מתבדר.
==== הוכחה
$sum an$ מתכנס $arrl$ $exists L in RR : S_n = sum_(k=1)^n a_k -->^(n->oo) L$ $arrl$ נגדיר $S_0 = 0$, ונקבל:
$ lim a_n = lim (S_n-S_(n-1)) = lim S_n - lim S_(n-1) = L-L=0 $ #QED

=== (משפט) קריטריון קושי להתכנסות טורים
הטור $sum an$ מתכנס $iff$ $forall epsilon>0 exists N(epsilon) in NN : abs(sum_(n=m+1)^(m+p) an) < epsilon, forall m >= N(epsilon) forall p in NN$ (1).

==== הוכחה
נסמן $S_n = sum_(k=1)^n a_k$ ואז $sum an$ מתכנס $iff$ קיים גבול ל-$(S_n)$ $iff$ הסדרה $(S_n)$ מקיימת את קריטריון קושי לסדרות, וזה בדיוק (1) כי:
$ abs(S_(m+p) - S_m) = abs(sum_(n=m+1)^(m+p) an) < epsilon, forall m >= N(epsilon) forall p in NN $ #QED

=== (טענה) חשבון טורים

+ אם $sum an$ ו-$sum b_n$ טורים מתכנסים, אזי הטור $sum an + b_n = sum an + sum b_n$ גם מתכנס.
+ אם $sum an$ מתכנס ו-$alpha in RR$ אזי הטור $sum (alpha an) = alpha sum an$ מתכנס.

== טור מתכנס בהחלט
נאמר כי $sum an$ *מתכנס בהחלט* אם הטור $sum abs(an)$ מתכנס.

=== (משפט) אם הטור $sum an$ מתכנס בהחלט אזי הוא מתכנס (גם לא בהחלט).

==== הוכחה
נתון $sum abs(an)$ מתכנס. לכן, לפי קריטיריון קושי עבור טורים:
$ forall epsilon>0 exists N(epsilon) in NN : abs(sum_(n=m+1)^(m+p) abs(an)) < epsilon, forall m >= N(epsilon) forall p in NN $
ואז, מאי-שוויון המשולש:
$ abs(sum_(n=m+1)^(m+p) an) <= sum_(n=m+1)^(m+p) abs(an) = abs(sum_(n=m+1)^(m+p) abs(an)) < epsilon, forall m >= N(epsilon) forall p in NN $
כלומר מתקיים קריטריון קושי לטור $sum an$ ואז הוא מתכנס.
#QED

== טורים חיוביים (אי-שליליים)
נסתכל בטורים $sum an$ כך ש-$forall n in NN, an >=0$. טורים כאלה נקראים *טורים חיוביים*.

=== (טענה) טור חיובי $sum an$ מתכנס $iff$ הסדרה $(S_n)$ חסומה מלמעלה.
=== (טענה) מבחן ההשוואה
יהיו $sum an$ ו-$sum b_n$ טורים חיוביים כך ש-$exists N_0 in NN: a_n >= b_n, forall n >=N_0$. אזי:

+ אם הטור $sum an$ מתכנס אז גם הטור $sum b_n$ מתכנס.
+ אם הטור $sum b_n$ מתבדר אז גם הטור $sum an$ מתבדר.

==== הוכחה
נסמן $S_n^a = sum a_k$ ו-$S_n^b = sum b_k$.

+ $sum an$ מתכנס $iff$ הסדרה $(S_n^a)$ מתכנסת $arrl$ הסדרה $(S_n^a)$ חסומה $arrl$ $(S_n^a)$ חסומה  מלמעלה  $arrl$ הסדרה $(S_n^b)$ חסומה מלמעלה $arrl$ $sum b_n$ מתכנס.

+ בשלילה. נניח $sum an$ מתכנס. אז, לפי (1), $sum b_n$ מתכנס. סתירה.
#QED
=== (טענה) מבחן השורש הכללי
יהי $sum an$ טור חיובי. אם קיימים $0<q<1$ ו-$N_0 in NN$ כך ש-$forall n >= N_0, root(n, an) <=q$, אזי הטור $sum an$ מתכנס.

==== הוכחה
$an <= q^n, forall n >= N_0$ ו-$sum q^n$ מתכנס כהנדסי עם $abs(q)<1$. אז, מקריטריון ההשוואה, $sum an$ מתכנס. $wide wide wide$ $QED$

=== (טענה) מבחן השורש הגבולי
יהי $sum an$ טור חיובי. נסמן $limsup root(n, an) = l$. אם $l<1$ אז הטור $sum an$ מתכנס; ואם $l>1$ אז הטור מתבדר.

==== הוכחה
+ נניח ראשית כי $l<1$. לכן $exists q, l tb(<q<,l+epsilon "," exists epsilon>0,"") 1$, כלומר $limsup root(n, an) < l+epsilon <1$ ואז לפי התכונות של $limsup$,  $root(n, an) <= q = l+epsilon$ מתקיים כמעט תמיד. כלומר, $exists N_0 in NN : root(n, an) <= q forall n >= N_0$ ואז אנחנו עומדים בתנאי מבחן השורש הכללי.

+ נניח עתה כי $l>1$. אזי, $exists Q: 1 tb(<q<,l+epsilon "," exists epsilon>0,"") l = limsup root(n, an)$. ואז, לפי התכונות של $limsup$ העובדה $l-epsilon = Q <= root(n, an)$ הינה שכיחה. כלומר, יש אינסוף איברי הסדרה $Q <= root(n, an)$. כלומר, קיימת תת״ס עבורה מתקיים $1< Q<= root(n_k, ank)$ $arrl$ $1< Q^(n_k) <= ank$. אז $limits(lim)_(k->oo) ank = +oo$ $arrl$ $liminff(an) != 0$ $arrl$ $sum an$ מתבדר. #QED
