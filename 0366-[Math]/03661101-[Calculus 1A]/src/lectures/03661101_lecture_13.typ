#import "/template.typ": *

#show: project.with(
  title: "חדו״א 1א׳ - שיעור 13",
  authors: ("יונתן מגר",),
  date: "13 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

= פונקציות

== מושג הפונקציה
נתונות שתי קבוצות $A$ ו-$B$.

- *פונקציה* $f: A->B$ היא התאמה שמתאימה $forall a in A$ איבר יחיד $b in B$, ומסמנים $b = f(a)$.

- הקבוצה $A$ נקראת *תחום ההגדרה* של $f$ ($D(f)=A$) והקבוצה $B$ נקראת *הטווח* של $f$. תחום ההגדרה "הגדול ביותר" נקרא *תחום קיום* או *תחום ההגדרה הטבעי* של $f$.

- *התמונה* של $f: A->B$ הינה הקבוצה $I(f) = {f(x): x in A}=f(A)$.

=== (הגדרה) פונקציה חד-חד-ערכית (חח״ע)
נאמר ש-$f: A->B$ *חד-חד-ערכית* אם $a != a'$ $arrl$ $f(a)!=f(a')$, או, באופן שקול, $f(a)=f(a')$ $arrl$ $a=a'$.

==== דוגמה
עבור הפונקציה $f(x)=x^2: RR->RR$, נראה כי:
- התמונה היא $I(f)=[0,+oo)$.
- תחום ההגדרה הוא $D(f)= RR$.
- הפונקציה לא חח״ע כי $-1 != 1$ אך $f(-1) = f(1) = 1$.

=== (הגדרה) פונקציה על
נאמר ש-$f: A->B$ *"על $B$"* אם $forall b in B exists a in A: f(a)=b$, כלומר $B = I(f)$.

==== הערה
הפונקציות $f pm g$, $f dot g$, $k dot f$ (k מספר קבוע) ו-$f/g$ מוגדרות באופן טבעי, כלומר:

- $(f+g)(x)=f(x)+g(x)$. נראה כי $D(f+g) = D(f) nn D(g)$.

- $(f/g)(x) = f(x)/g(x)$. נשים לב כי במקרה זה, $D(f/g) = {x in D(f) nn D(g): g(x) != 0}$.

=== (הגדרה) הרכבה של פונקציות
*ההרכבה* של הפונקציה $f: A->B$ עם $g: B->C$ זו פונקציה המוגדרת $h(a)=g(f(a)), forall a in A$. מסמנים את ההרכבה $h=g of f$.

==== הערה - מצב כללי יותר
אם $f: D(f)-> B$ ו-$g: D(g)-> C$, אז $h(x)=g(f(x))$, אך $D(h)={x in D(f): f(x) in D(g)}$.

לדוגמה, $f(x)=1/sqrt(x), D(f)={x > 0}$, ו-$g(x)=sqrt(-x), D(g)={x <= 0}$. נראה כי ההרכבה $h(x)=g(f(x))$ היא $sqrt(-f(x))=sqrt(-1/sqrt(x))$. נקבל כי $D(h)={x > 0 : 1/sqrt(x) <= 0} = emptyset$. לכן לא קיימת ההרכבה.

==== הערה - אין קומוטטיביות בהרכבת פונקציות, אך יש אסוציאטיביות
$f of g != g of f$, אך $f of (g of h) = (f of g) of h$.

=== (הגדרה) פונקצית הזהות
*פונקצית הזהות* על קבוצה $A$, המסומנת $Id(A)$, הינה הפונקציה המקיימת $Id(A)(x) = x, forall x in A$.

=== (הגדרה) הפיכות של פונקציות

נאמר שפונקציה $f:A->B$ הינה *הפיכה* אם קיימת $g: B->A$ כך שמתקיים $g of f = Id(A)$ וגם $f of g = Id(B)$, ואז נאמר ש-$g$ הפכית של $f$ (ולהיפך).

==== הערה
אפשר לבדוק שפונקציה $f:A->B$ הפיכה $iff$ $f$ חח״ע ועל.

=== (טענה) אם $f:A->B$ הפיכה, אז יש לה הפכית יחידה

==== הוכחה
אם $g, h$ שתי הפכיות של $f$, אז מתקיים: $g = g of Id(B) = g of (f of h) = (g of f) of h = Id(A) of h = h$ #QED

=== (הגדרה) הפונקציה ההפכית
נסמן את ההפכית של $f: A->B$ ב-$f^(-1): B->A$ $arrl$ $f of f^(-1)=Id(B)$, כלומר $f(f^(-1)(b))=b, forall b in B$ ובהתאמה $f^(-1) of f = Id(A)$, כלומר $f^(-1)(f(a)) = a, forall a in A$. כמו כן, $D(f) = I(f^(-1))$ ו-$I(f)=D(f^(-1))$.

==== הערה
סדרה יכולה להיחשב כפונקציה מ-$NN$ ל-$RR$, למשל, אם $an = 1/n$ אז נסמן את הפונקציה: $f(n)=1/n : NN->RR$.

=== (הגדרה) פונקציה מונוטונית
יהיו $A,B subset RR$. פונקציה $f: A->B$ נקראת: 
- *מונוטונית עולה (חלש)* אם $forall x, y in A, x<y => f(x)<=f(y)$.
- *מונוטונית עולה (חזק)* אם $forall x, y in A, x<y => f(x)<f(y)$.
- *מונוטונית יורדת (חלש)* אם $forall x, y in A, x<y => f(x)>=f(y)$.
- *מונוטונית יורדת (חזק)* אם $forall x, y in A, x<y => f(x)>f(y)$.

=== (הגדרה) גרף של פונקציה
נתונה $f: A->B$, $A, B seq RR$. אוסף הנקודות ${(x, f(x)): x in A}$ ב-$RR^2$ נקרא *הגרף של הפונקציה*.

==== דוגמה
$y= f(x) = sqrt(x): [0,4] -> RR$. 

פונקציה זו היא חח״ע ועל אז יש לה הפכית $inv(f)$.

לכן, $x=y^2=inv(f)(y)$, $y=x^2=inv(f)(x)$, $D(inv(f))=[0,2], I(inv(f))=[0,4]$.
==== הערה
פונקציה $f:I->J$ עולה חזק (או יורדת חזק) היא בהכרח חח״ע, ואם $J=f(I)$ אז נגדיר את ההפכית שלה $inv(f):J->I$ וגם היא עולה חזק (או יורדת חזק). הגרפים של $f$ ו-$inv(f)$ הם סימטריים ביחס לישר $y=x$.

#pagebreak()

== גבול של פונקציה
=== (הגדרה) קטע מנוקב פתוח
קטע מנוקב פתוח הינו $I bs {x_0}$ כאשר $I = (a, b)$ ו-$x_0 in I$.

=== (הגדרה) גבול לפי קושי - $epsilon, delta$
תהי $f: I bs {x_0} -> RR$. נאמר ש-$L in RR$ הינו *הגבול של $f$ בנקודה $x_0$* ונסמן $limto(x_0) f(x) = L$ אם מתקיים:
$ forall epsilon>0 exists delta = delta(epsilon) > 0 : 0<abs(x-x_0) < delta => abs(f(x)-L) < epsilon $

==== מבט גיאומטרי להגדרת קושי
נשים לב כי $L-epsilon < f(x) < L+ epsilon$ וכי $x_0 - delta < x < x_0 + delta$, $x!= x_0$.
#image("/attachments/image2.png")

=== (הגדרה) גבול לפי היינה - סדרות
תהי $f: I bs {x_0} -> RR$. נאמר ש-$L$ הינו הגבול של $f$ ב-$x_0$ ונסמן $limto(x_0) f(x) = L$ אם מתקיים:
$ forall (x_n)_(n=1)^oo subset I bs {x_0}, x_n -> x_0 => f(x_n) -> L $

==== מבט גיאומטרי להגדרת היינה
#image("/attachments/image3.png")