#import "/template.typ": *
#import "/utils/graph.typ": *
#show: project.with(
  title: "חדו״א 1א׳ - שיעור 15",
  authors: ("יונתן מגר",),
  date: "20 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

=== (משפט) משפט הסנדוויץ׳
נתונות שלוש פונקציות $f,g,h: I bs {x_0} -> RR$. נניח כי מתקיים $f(x)<=g(x)<=h(x), forall x in I bs {x_0}$, וגם $limto(x_0) f(x) = limto(x_0) h(x) = L$. אזי, $limto(x_0) g(x) = L$.

==== הוכחה (לפי הגדרת קושי)
ניקח $epsilon >0$ שרירותי. אז $exists delta_1 > 0: 0< abs(x-x_0)<delta_1 => abs(f(x)-L)<epsilon => L-epsilon<f(x)$, \ וגם $exists delta_2 >0:0<abs(x-x_0) < delta_2 => abs(h(x) -L) < epsilon => h(x) < L+epsilon$.
נבחר $delta = min{delta_1, delta_2}$. \ אז $0<abs(x-x_0)<delta$ גורר $L-epsilon < f(x) <= g(x) <= h(x) < L+epsilon$. כלומר $abs(g(x)-L) < epsilon$. #QED

==== דוגמה
צ״ל: $liminff((2^x+3^x)^(1/x))= 3$.

נראה כי $f(x) = 3 = (3^x)^(1/x) <= (2^x+3^x)^(1/x) <= (3^x+3^x)^(1/x) = (2 dot 3^x)^(1/x) = 2^(1/x)dot 3 = h(x)$. לפי כלל הסנדוויץ׳, אם נוכיח כי $h(x)->3$, סיימנו.
 אם כך, נוכיח כי $liminff(2^(1/x))=1$:
$ forall epsilon > 0 exists N >0 : forall x > N => abs(2^(1/x)-1) < epsilon ==> forall epsilon > 0 exists N in NN : abs(2^(1/N) - 1) <epsilon ==> 2^(1/N) < 1 + epsilon $
ואז $forall x > N$ יתקיים $1-epsilon < 1 < 2^(1/x) < 2^(1/N) < 1+epsilon$. #QED

=== (למה) $limto(0) (sin x)/x = 1$.

==== הוכחה

מספיק להוכיח $limto(0^+) (sin x)/x = 1$ כי אז $limto(0^-) (sin x)/x eq^(x=-t) limits(lim)_(t->0^+) (sin (-t))/(-t) = limits(lim)_(t->0^+) (sin t)/t =1$. כבר הוכחנו כי $forall 0 <= x < pi/2$, $sin x <= x$. נוכיח כעת גם $x<=tan x, forall 0 <= x < pi/2$.

// #grid(columns: 2)[
#align(center)[
  
  #image("/attachments/Screenshot 2024-02-20 at 12.41.47.png", width: 25%)
]
// ]

ואז שטח המשולש $triangle.t O A C$ $<=$ שטח הגזרה $O A B$. $cancel(1/2) r x <= cancel(1/2) r abs(C A) = tan x, 0<x<pi/2$. כלומר, קיבלנו$x <= tan x, forall 0 <= x < pi/2$. ואז $sin x <= x <= tan x, 0<=x<pi/2$ $arrl$ $1<= x/(sin x) <= 1/(cos x), 0< x< pi/2$. 

נקבל לבסוף $cos x <= (sin x)/x <= 1, 0<x<pi/2$. נראה כי $cos x -->^(x->0^+) 1$, ולכן מכלל הסנדוויץ׳ $(sin x)/x->1$. #QED

#pagebreak()

= רציפות של פונקציה
== רציפות בנקודה ובקטע

- תהי $f: I->RR$ כאשר $I=(a,b)$ קטע פתוח. נאמר כי $f$ *רציפה בנקודה $x_0 in I$* אם מתקיים $limto(x_0) f(x)= f(x_0)$.
- נאמר כי הפונקציה *רציפה בכל הקטע הפתוח $I$* אם $f$ רציפה בכל נקודה $x_0 in I$.

=== (דוגמה) האם פונקצית דיריכלה רציפה? 
עבור פונקצית דיריכלה, אשר הוגדרה $D(x) = cases(1 "if" x in QQ, 0 "if" x in.not QQ)$ הוכחנו כי $exists.not limto(x_0) D(x)$ בשום נקודה $x_0 in RR$. לכן, $D(x)$ לא רציפה בשום נקודה $x_0 in RR$. מצד שני, למדנו גם את הפונקציה $f(x) = x D(x)$  שגם לה אין גבול בכל $0!=x in RR$. אז $limto(0) f(x) = 0 =f(0)$ לכן $f(x)$ רציפה בנקודה ממשית יחידה $x_0 = 0$.

== רציפות מימין ומשמאל ונקודות אי-רציפות
=== (הגדרה) רציפות מימין ומשמאל
- תהי $f: [a,b) -> RR$. נאמר ש-$f$ *רציפה מימין בנקודה $a$* אם מתקיים $limto(a^+) f(x) = f(a)$. 

- תהי $f: (c,a] -> RR$. נאמר ש-$f$ *רציפה משמאל בנקודה $a$* אם מתקיים $limto(a^-) f(x) = f(a)$. 

=== (הגדרה) צמצום פונקציה
נתונה פונקציה $f: A->RR$ ו-$B subset A$. נסמן $bv(f, B)$ את הפונקציה $f$ המוגדרת רק על $B$.

=== (טענה) תהי $f: (c,b) -> RR$ ותהי $a in (c,b)$. אזי $f$ רציפה ב-$a$ אם״ם $bv(f, (c,a])$ רציפה משמאל ב-$a$ ו-$bv(f, [a,b))$ רציפה מימין ב-$a$.

=== (הגדרה) נקודת אי-רציפות

- נתונה פונקציה $f$ המוגדרת בקטע הפתוח $I$ סביב נקודה $x_0$, פרט אולי בנקודה $x_0$ עצמה. אזי, הנקודה $x_0$ נקראת *נקודת אי-רציפות סליקה* אם $exists limto(x_0) f(x) != f(x_0)$.

- *נקודת אי-רציפות מסוג ראשון*: אם קיימים ושונים הגבולות החד-צדדיים $limto(x_0^+) f(x)$ ו-$limto(x_0^+) f(x)$.

- *נקודת אי-רציפות מסוג שני*: אם לפחות אחד מהגבולות החד-צדדיים $limto(x_0^+) f(x)$ ו-$limto(x_0^+) f(x)$ לא קיים.

==== דוגמה: $y= f(x) = sin 1/x, x_0 = 0$

#graph(w: 15, h: 2, start:0.2, end:-0.2, functions: (x=>calc.sin(1/x),), h-asymptotes: (1, -1))

$ sin (1/x) = 0 ==> 1/x = pi k ==> x_k^((1)) = 1/(pi k), k=pm 1, pm 2, p, 3, dots ==> sin 1/x = 1 ==> \ 
1/x = pi/2 + 2pi k, k=0, pm 1, pm 2, dots ==> x_k^((2)) = 1/(pi/2 + 2pi k)
$
האם קיים $limto(0) sin 1/x$? לא, כי $x_k^((1)) -->^(k->oo) 0 $ ו-$x_k^((2)) -->^(k->oo) 0$. $f(x_k^((1))) = 0 --> 0$ אך $f(x_k^((2))) = 1 --> 1$ ו-$0!=1$.

ואז, לפי הגדרת היינה, $exists.not limto(0) sin 1/x$ ואז $x_0 = 0$ נקודת אי-רציפות מהסוג השני.

==== דוגמה נוספת: האם קיים $limto(0) f(x)$ עבור $f(x)=x sin 1/x$?

כן, כי $x->0$ ו-$sin 1/x$ חסומה (כאשר $x->0$) ואז $x sin 1/x -> 0$.

#align(center)[
  #graph(w: 8, h: 8, start:0.1125, end:-0.1125, functions: (x=>x*calc.sin(1/x),), additionals: ( x=>x, x=>-x))
]




