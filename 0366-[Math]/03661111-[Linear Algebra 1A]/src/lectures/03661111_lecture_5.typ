#import "/0366-[Math]/globals/template.typ": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 5",
  authors: ("יונתן מגר",),
  date: "16 בינואר, 2024",
)

#set enum(numbering: "(1.א)")

== מסקנות מכך שקיימת משוואה קנונית יחידה
+ אם $n>m$ (מספר המשתנים גדול ממספר המשוואות) אז מתקיים בדיוק אחד מהשניים:
  + אין פתרון.
  + יש לפחות $abs(F)$ (מספר האיברים בשדה $F$) פתרונות.

  *נוכיח*: אם יש שורת סתירה ($0=1$) אז אין פתרונות. אחרת, כל שורה נותנת לכל היותר איבר פותח אחד, ולכן: 
  $ "מספר המשתנים החופשיים" =  n - "מספר האיברים הפותחים" >= n-m >=1 $
  ולכן יש לפחות $abs(F)$ פתרונות. #QED

+ לכל מערכת משוואות מתקיים בדיוק אחד מהבאים:
  + אין פתרון.
  + יש פתרון יחיד.
  + יש לפחות $abs(F)$ פתרונות.

  *נוכיח*: נעבור לצורה קנונית, זה לא משנה את קבוצת הפתרונות.
  + $iff$ יש שורת סתירה.
  + $iff$ אין שורת סתירה ואין משתנים חופשיים.
  + $iff$ אין שורת סתירה ויש משתנה חופשי אחד לפחות.

  #QED

== מערכת משוואות הומוגנית
מערכת משוואות נקראת *הומוגנית* אם $b_1= dots = b_m = 0$. כלומר: $ cases(a_11 x_1 + dots + a_(1n) x_n=0, dots.v, a_(m 1) x_1 + dots + a_(m n) x_n=0) $

נקרא לפתרון $x_1=x_2=dots=x_n=0$ *הפתרון הטרוויאלי*.

=== מסקנה
במערכת משוואות הומוגנית:
+ אם $n>m$ אז יש לפחות $abs(F)$ פתרונות.
+ תמיד: 
  - או שיש את הפתרון הטריוויאלי בלבד.
  - או שיש לפחות $abs(F)$ פתרונות.

*הוכחה*: מיידי מהמסקנות הקודמות וקיום הפתרון הטריוויאלי.

#pagebreak()

= מרחבים לינאריים/וקטוריים
יהי $F$ שדה. קבוצה $V$ עם שתי פונקציות $a: V xx V -> V$ (נקראת "חיבור" ומוגדרת $forall u,v in V, v+u := a(v,u)$), $m: F xx V -> V$ (נקראת "כפל בסקלר" ומוגדרת $forall lambda in F forall v in V, lambda dot v = lambda v := m(lambda, v)$) תיקרא מרחב וקטורי (לינארי) מעל $F$ אם מתקיימות התכונות הבאות:

+ *חילופיות*: $forall v, u in V, v+u=u+v$.
+ *אסוציאטיביות*: $forall v, u, w in V, (v+u)+w = v+(u+w)$.
+ *קיום איבר אפס*: קיים $w in V$ ניטראלי לחיבור כלומר $forall v in V, v+w=w+v =v$. (תכף נראה ש-$w$ יחיד, ואז זה יצדיק להגיד "איבר האפס" ולסמנו ב-$0=0_v$).
+ *קיום נגדי*: $forall v in V exists w in V: v+w = 0_v$ הניטראלי לחיבור.
+ *חוק הפילוג 1*: $forall lambda, mu in F forall v in V, (lambda+mu) dot v = lambda v + mu v$.
+ *חוק הפילוג 2*: $forall lambda in F forall u, v in V, lambda (v+ u) = lambda v+ lambda mu$.
+ *אסוציאטיביות של כפל בסקלר*: $forall lambda, mu in F forall v in V, (lambda mu) dot v = lambda dot (mu v)$.
+ *איבר יחידה*: $forall v in V, 1_F dot v = v$.

איברים במ״ו נקראים *וקטורים*, ואיברים בשדה המתאים נקראים *סקלרים*.

== דוגמאות
+ $F^n$ הוא מ״ו מעל $F$ עם:
  - החיבור $(v_1, dots, v_n)+(v_1, dots, v_n):=(v_1+u_1, dots, v_n+u_n)$.
  - הכפל בסקלר $F in.rev lambda (v_1, dots, v_n) = (lambda v_1, dots, lambda v_n)$.

  נבדוק (1): כן, כי החיבור מוגדר לפי החיבור ב-$F$, והחיבור ב-$F$ חילופי.

  (2)-(4): כנ״ל.

  וקטור האפס הוא $0_F = (0, dots, 0)$.

  (5): $(lambda + mu)overbracket((v_1, dots, v_n), underline(v)) = (dots, (lambda+mu)v_i, dots) = (dots, lambda v_i + mu v_i, dots) = lambda underline(v)+ mu underline(v)$.

  (6)-(8): כנ״ל.

  $F^n$ נקרא המרחב הוקטורי הסטנדרטי מעל $F$.

+ נסתכל על $M_(m xx n) (F) = "קבוצת המטריצות עם m שורות ו-n עמודות"$. זה גם מ״ו מעל $F$ עם:
  - החיבור: $M_(m xx n) (F) in.rev A = (a_(i j)), B=(b_(i j))$ כך ש-$forall i, j, a_(i j), b_(i j) in F: A+B := (a_(i j)+b_(i j))$.
  - הכפל בסקלר: $lambda in F, A in M_(m xx n)(F), lambda A := (lambda a_(i j))$.

  ברור ש-(8)-(1) מתקיימים.

+ דוגמה להגדרה: יהי $V$ מ״ו מעל F. נאמר שתת קבוצה $W seq V$ היא תת מרחב וקטורי של $V$ אם:
  + $0_v in W$.
  + סגירות לחיבור: $forall w_1, w_2 in W: w_1+w_2 in W$.
  + סגירות לכפל בסקלר: $forall lambda in F forall w in W: lambda w in W$.

  *טענה*: אם $W$ תת מרחב של $V$, אז $W$ הוא מ״ו ביחס לחיבור וכפל בסקלר המושרים מ-$V$. נדלג על ההוכחה.

+ דוגמה: ${f: A->F "פונקציות"}="Func"(A, F)$ כאשר $A!=emptyset$ (למשל $f: RR->RR$). נגדיר:
  - החיבור: $(f+g)(a) := f(a)+g(a)$.
  - הכפל בסקלר: $(lambda f)(a) := lambda f(a)$.
  זהו מ״ו מעל $F$, כש-$0$ היא פונק׳ האפס.

  (האם יש קשר בין הדוגמה הנ״ל ל-$F^n$?)

#pagebreak()

5. דוגמה: נקח $V = RR_(>0) = {x in RR | x > 0}$. $F=RR$. נגדיר:
  - החיבור: $v,w in RR_(>0) , v plus.circle w = v dot w$.
  - הכפל בסקלר: $lambda in RR, v in V = RR_(>0), lambda dot.circle v := v^lambda$.

  קל לראות שזה מקיים את כל התכונות. למשל, איבר האפס של $V$ הוא $.1$

== תכונות של מרחבים וקטוריים
=== טענה
יהי $V$ מ״ו מעל $F$.
+ יש חוק צמצום: $forall v, u, w in V, v+u =w+u=>v=w$.
+ איבר האפס הוא יחיד ב-$V$.
+ לכל $v in V$ יש נגדי יחיד (נסמנו $-v$).

=== הוכחה
+ יהיו $v, u, w in V$. נניח $v+u=w+u$. נראה כי מתקיים:
  $ v = v+(u+u') = (v+u)+u' = (w+u)+u' = w+(u+u') = w $ כלומר, $v=w$ כנדרש.

+ נניח ש-$w, w'$ שניהם ניטראלים לחיבור ונוכיח $w=w'$. נראה כי מתקיים $w=w+w'=w'$.

+ אם $w, w'$ שניהם נגדיים ל-$v$: $v+w=0_v=v+w'$. מ-(1) מתקיים $w=w'$. 
#QED

=== טענה
יהי $V$ מ״ו מעל $F$.
+ $forall lambda in F, lambda dot 0_v = 0_V$.
+ $forall v in V, 0_F dot v = 0_V$.
+ $lambda dot v = 0_V => v = 0_v or lambda = 0_v$.
+ $forall v in V, (-1_F) dot v = -v$.

=== הוכחה
+ $lambda 0_V = lambda (0_V + 0_V) = lambda 0_V + lambda 0_V$. מצמצום $0_V = lambda 0_V$.
+ באופן דומה, $0_F dot v = (0_F+0_F) dot v = 0_F v + 0_F v => 0_F dot v = 0_V$.
+ נניח $lambda dot v = 0$. אם $lambda = 0$ ניצחנו. אחרת, $lambda != 0$. כלומר, $0_V = lambda^(-1)(lambda v) = (lambda^(-1)lambda)v = 1_F dot v = v$ כנדרש.
+ יודעים שהנגדי הוא יחיד, אז די להוכיח ש-$-1_F dot v$ הוא הנגדי ל-$v$. נראה כי $ -1_F dot v + v =-1 dot v + 1 dot v = (-1+1) dot v = 0_F dot v = 0_F $
#QED