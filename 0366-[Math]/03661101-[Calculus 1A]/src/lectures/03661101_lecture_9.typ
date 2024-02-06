#import "/template.typ": *

#show: project.with(
  title: "חדו״א 1א׳ - שיעור 9",
  authors: ("יונתן מגר",),
  date: "1 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

== קבוצה סגורה
נאמר שקבוצה $B seq RR$ הינה סגורה (או סגורה סדרתית) אם לכל סדרה $(x_n) subset B$ כך ש-$x_n->x in RR$ מתקיים $x in B$.

=== (משפט) קבוצת הגבולות החלקיים היא סגורה

=== (טענה) תהי $(a_n)$ סדרה חסומה ותהי $(b_m) subset P(a_n)$ סדרת הגבולות החלקיים של $(a_n)$ כך ש-$(b_m)->b$. אזי $b in P(a_n)$.

==== הוכחה

נראה כי מתקיים:
$ lim b_m = b => forall epsilon>0 exists b_(k(epsilon)) : abs(b_(k(epsilon))-b) < epsilon/2 $
מצד שני, מתקיים:
$
  b_(k(epsilon)) in P(a_n) => exists a_n_p -->^(p->oo) b_(k(epsilon)) \ arrow.b.double \
  forall epsilon>0, exists p_(0 space (k_epsilon))in NN : abs(a_(n_p k(epsilon))-b_(k(epsilon))) < epsilon/2, forall p > p_(0 space (k_epsilon)) \ arrow.b.double \
  abs(a_(n_p k(epsilon))-b) <= abs(a_(n_p k(epsilon))-b_(k(epsilon))) + abs(b_(k(epsilon)) - b) < epsilon/2 + epsilon/2 = epsilon, forall p > p_(0 space (k_epsilon))
$

כלומר, הקבוצה ${b: abs(a_n-b)<epsilon}$ היא אינסופית ואז $b in P(an)$. #QED

=== (דוגמה) בניית סדרה שהגבולות החלקיים שלה הוא כל הקטע $[0,1]$

==== פתרון
ראשית נבצע מניה של הרציונליים ב-$[0,1]$: $QQ nn [0,1] = {z_1, z_2, z_3, dots}$. כעת, נבנה סדרה שמכילה כל $z_j$ כגבול חלקי. למשל: $(a_n): z_1, z_1, z_2, z_1, z_2, z_3, dots$. ואז, $P(an) subset [0,1]$. מצד שני, $forall x in [0,1] exists ank -->^(k->oo) x$ מצפיפות הרציונליים בממשיים. כלומר, $x in P(an)$, ולכן $[0,1] subset P(an)$. #QED

=== טענה ששקולה למושג $liminf \/ limsup$

==== הגדרות
- *"עובדה שכיחה"* - עובדה שמתקיימת למספר אינסופי של איברי הסדרה.
- עובדה שמתקיימת *"כמעט תמיד"* - עובדה שמתקיימת לכל איברי הסדרה פרט למספר סופי (או $0$) של איברים.
===== דוגמה
נתונה הסדרה $(an): 1,2,3,1,2,1,2,1,2,1,2, dots$. העובדה $an=1$ היא שכיחה, בעוד שהעובדה $an=3$ איננה שכיחה, שזה שקול לכך ששלילית העובדה, כלומר $an!=3$ מתקיימת כמעט תמיד.

#pagebreak()
=== (טענה) תהי $(an)$ סדרה חסומה. אזי $L = liminf an$ אם״ם $forall epsilon>0$ מתקיימים:
+ $an < L+epsilon$ שכיחה
+ $L-epsilon < an$ מתקיימת כמעט תמיד (כלומר $L-epsilon >= an$ מתקיים למס׳ סופי של איברים)

==== הוכחה

- $arrow.l.double$: נניח $L= liminf an$ אזי $L$ הינו גבול חלקי של $(an)$. ניקח $epsilon>0$ שרירותי. מהטענה המתאימה נובע כי יש מס׳ אינסופי של איברים של הסדרה בקטע $(L-epsilon, L+epsilon)$. מזה נוכל להסיק את (1) באופן מיידי. נניח בשלילה ש-(2) אינו מתקיים. אזי, התנאי $L-epsilon>=an$ שכיח. בפרט, קיימת תת״ס $(ank)_(k=1)^oo$ עבורה $L-epsilon >= ank$. מצד שני, $(ank)_(k=1)^oo$ חסומה ולכן ממשפט ב״ו נובע שיש לה תת״ס מתכנסת: $a_n_k_j -->_(j->oo) l  in RR$. כלומר $l in P(an)$. \ נתון $a_n_k_j <= L- epsilon$. מכך, $l <= L-epsilon < L$ -- בסתירה לעובדה ש-$L$ הוא הגבול החלקי הקטן ביותר.

- $arrow.r.double$: מ-(1) ו-(2) נובע שהטענה $L-epsilon < an < L+epsilon$ לכל $epsilon>0$. בפרט, מהטענה המתאימה נובע ש-$L$ הינו גבול חלקי של $(an)$. כדי להוכיח ש-$L$ הינו הגבול החלקי המינימלי של $(an)$. נניח בשלילה כי קיים גבול חלקי נוסף $L'<L$. נבחר $epsilon = (L-L')/2 > 0$. אזי, מצד אחד, נקבל כי $an < L'+epsilon = (L'+L)/2$ טענה שכיחה. ומצד שני, לפי (2), מתקיים כי $(L'+L)/2=L-epsilon < an$ כמעט תמיד $arrow.l.long.double$ $an <= (L'+L)/2$ מתקיים למס׳ סופי של איברים, בסתירה. #QED

=== (טענה) תהי $(an)$ סדרה חסומה. אזי $L = limsup an$ אם״ם $forall epsilon>0$ מתקיימים:
+ $an < L+epsilon$  מתקיימת כמעט תמיד (כלומר $an >= L+epsilon$ מתקיים למס׳ סופי של איברים)
+ $L-epsilon < an$ שכיחה

== קריטריון קושי
=== הגדרה
סדרה $(an)$ נקראת *סדרת קושי* אם מתקיים קריטריון *קושי*: $ forall epsilon > 0, exists N_0 (epsilon) in NN : forall n, m >= N_0 (epsilon), abs(a_n-a_m) < epsilon $

=== הערה
מבלי להגביל את הכלליות, ניתן לדרוש שהתנאי למעלה מתקיים עבור האינדקסים $m,n$ כך ש-$m >n >= N_0 (epsilon)$ או $m = n+p, n>= N_0 (epsilon), p in NN$.

=== (למה) כל סדרת קושי הינה סדרה חסומה

==== הוכחה

תהי $(an)$ סדרת קושי. בפרט, עבור $epsilon = 17$, מתקיים: $ exists N_0 in NN: abs(a_n - a_N_0) < 17, forall n>= N_0 $
או באופן שקול, $a_N_0 - 17 < an < a_N_0 + 17, forall n > N_0$. אזי, $forall n in NN$ מתקיים:
$ min{a_1, dots, a_N_0, a_n_0 - 17} = m <= an <= M= max{a_1, dots, a_N_0, a_N_0 + 17} $ #QED

#pagebreak()
=== (משפט) קריטריון קושי
סדרה $(an)$ מתכנסת $iff$ $(an)$ סדרת קושי.

==== הוכחה
- $arrow.l.double$:  נניח $an -> a in RR$. מהגדרת הגבול, $forall epsilon > 0 exists N_0 (epsilon) in NN : abs(a_k - a) < epsilon/2, forall k >= N_0 (epsilon)$. אזי:
$ forall n,m >= N_0 (epsilon), abs(a_n-a_m) <= abs(a_n - a) + abs(a- a_m) < epsilon/2 + epsilon/2 = epsilon $

- $arrow.r.double$: נניח $(an)$ סדרת קושי. בהוכחת הלמה, ניקח במקום $17$ את $epsilon > 0$ שרירותי ונקבל: $ a_(N_0 (epsilon)) - epsilon < an < a_(N_0 (epsilon)) + epsilon, forall n > N_0 (epsilon) $
  ואז $a_(N_0 (epsilon)) - epsilon <= liminf an <= limsup an <= a_(N_0 (epsilon)) + epsilon$. כלומר, $ 0<= limsup an - liminf an <= 2epsilon, forall epsilon>0 $
  ואז $limsup an = liminf an$ ואז לפי המשפט המתאים קיים גבול $L$ של הסדרה: $L = limsup an = liminf an$.
  #QED

=== (דוגמה) צ״ל: הסדרה $an = 1+1/2^2 + 1/3^2 + dots.h.c + 1/n^2$ מתכנסת

==== פתרון
נשתמש בעובדה הפשוטה: $ 1/k^2 < 1/(k(k-1)) = 1/(k-1) - 1/k, forall k>1 $

ניקח $m>n>=1$ טבעיים, ונקבל: $ forall epsilon > 0, abs(a_m - a_n) &= 1/(n+1)^2 + dots.h.c + 1/m^2 \ &< 1/n - cancel(1/(n+1)) + cancel(1/(n+1)) - cancel(1/(n+2)) + dots.h.c + cancel(1/(m-1)) - 1/m \ &= 1/n-1/m < 1/ n < epsilon $
כאשר $n>1/epsilon$. מכך, $N_0 (epsilon) = [1/epsilon] + 1 in NN, forall n >= N_0 (epsilon) >1/epsilon$. #QED
