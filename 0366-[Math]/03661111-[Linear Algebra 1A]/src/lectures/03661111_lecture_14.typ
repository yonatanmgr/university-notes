#import "/template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 14",
  authors: ("יונתן מגר",),
  date: "20 בפברואר, 2024",
)

#set enum(numbering: "(1.א)")

= הפיכת מטריצות
הכרנו את המטריצה המשוחלפת: $trs(A_(i j)) = A_(j i)$.

==== למה היא טובה?

תהי $A in M_(m xx n) (F)$ ונגדיר ה״ל $S_A = F^m -> F^n$ באופן הבא:

$ forall x in F^m: S_A (x) = x dot A = mat(x_1, x_2, dots, x_m) mat(-, R_1, -;-, R_2, -;, dots.v,;-, R_m, -) = sum_(i=1)^m x_i R_i $

מה תהיה המטריצה המייצגת ביחס לבסיסים הסטנדרטיים?

$ [S_A]_E^E = mat(|,|,,|;[S_A (e_1)]_E,[S_A (e_2)]_E, dots.h.c,[S_A (e_m)]_E;|,|,,|) = mat(|,|,,|;R_1,R_2, dots.h.c,R_m;|,|,,|) = trs(A) $

== הפיכות של מטריצה
מטריצה $A in M_n (F)$ נקראת:

- *הפיכה מימין* אם קיימת $B in M_n (F)$ כך ש-$A dot B=I_n$.
- *הפיכה משמאל* אם קיימת $C in M_n (F)$ כך ש-$C dot A=I_n$.
- *הפיכה* אם קיימת $D in M_n (F)$ כך ש-$A dot D = D dot A = I_n$ ואז נסמן $D = inv(A)$.

=== (טענה) אם $A$ הפיכה מימין ומשמאל אז $A$ הפיכה, וההופכיות מימין ומשמאל זהות.

==== הוכחה
נניח $A B = C A = I_n$ ונראה $B = C$ ומכך נסיק ש-$A$ הפיכה עם $inv(A) =B = C$.

נראה כי $B = I_n dot B = (C A) dot B = C dot (A B) = C dot I_n = C$ כנדרש. #QED

==== מסקנה: המטריצה ההופכית היא יחידה.

=== דוגמאות

+ $ A = mat(1,2;3,5), space inv(A) = mat(-5,2;3,-1) $  $ A dot inv(A) = mat(1,2;3,5) mat(-5,2;3,-1) = mat(1,0;0,1) = I_n wide inv(A) dot A = mat(-5,2;3,-1) mat(1,2;3,5) = mat(1,0;0,1) = I_n $

+ $ A = mat(1,2;0,0), space A dot B_(2 xx 2) = mat(1,2;0,0) dot B = mat(square,square;0,0) != I_2 ==> "אינה הפיכה" A $

==== הערה: מטריצות שבהן שורת/עמודת אפסים אינן הפיכות.

#pagebreak()

=== (טענה) תהי $A in M_n (F)$. התנאים הבאים שקולים זה לזה: <c>

+ $A$ הפיכה.
+ אם $A$ מטריצה מייצגת של ה״ל $T$ אז $T$ איזומורפיזם.
+ קיים איזומורפיזם כך ש-$A$ המטריצה המייצגת שלו.

==== הוכחה
+ $arrl$ (2): קיימת $B in M_n (F)$ כך ש-$A B = B A = I_n$ וכן $T: U->W$ ה״ל כאשר $C,D$ בסיסים של $U,W$ בהתאמה ושניהם ממימד $n$ כך ש-$A=[T]_D^C$.

  יהי $u in ker T$. נקבל $0= [T u]_D = [T]^C_D dot [u]_C = A dot [u]_C$. \ כלומר $[u]_C = I_n dot [u]_C = B dot A dot [u]_C =0$, ולכן $ker T = {0}$ ו-$T$ חח״ע ובפרט איזומורפיזם.

+ $arrl$ (3): נזכור ש-$A=[T_A]_E^E$ ומ-(2) נסיק שקיים איזומורפיזם ש-$A$ מייצגת.
+ $arrl$ (1): יהי $T: U->W$ איזומורפיזם כש-$dim U = dim W = n$ וגם $C,D$ בסיסים $U,W$ כך ש-$A=[T]_D^C$.

  כעת $I_n = [I_U]_C^C = [inv(T) of T]_C^C = [inv(T)]_C^D dot [T]_D^C$, וגם $I_n = [I_W]_C^C = [T of inv(T)]_C^C =[T]_D^C dot [inv(T)]_C^D $.

  כלומר $inv(A) = [inv(T)]_C^D$.

#QED

=== (משפט) תהי $A in M_n (F)$. אז: <a>
+ אם קיימת $B in M_n (F)$ כך ש-$A B = I_n$, אז $A$ הפיכה עם $inv(A)=B$.
+ אם קיימת $B in M_n (F)$ כך ש-$B A = I_n$, אז $A$ הפיכה עם $inv(A)=B$.

==== הוכחה
נזכור כי $A = [T_A]^E_E$ כאשר $T_A: F^n -> F^n$ ולכן אם $T_A$ חח״ע או על, לפי @c, $A$ הפיכה.

+ אם $A B = I_n$ אז לכל $x in F^n$ מתקיים $x = I_n dot x = A dot (B x)$ כלומר $Im(T_A)=F^n$ ולכן $T_A$ על ואיזומורפיזם כפי שרצינו.
+ אם $B A = I_n$ וניקח $x in ker T_A$ אז: $T_A (x) = 0 = A dot x$. כלומר: $ x = I_n dot x = (B A) dot x = B dot (A x) = B dot 0 = 0 $ ואכן $ker T_A = {0}$ ו-$T_A$ חח״ע ואיזומורפיזם.

#QED

=== תכונות המטריצה ההפוכה <b>
+ אם $A in M_n (F)$ הפיכה אז $inv((inv(A)))$.
+ אם $A in M_n (F)$ הפיכה גם $trs(A)$ הפיכה עם $inv((trs(A))) = trs((inv(A)))$.
+ אם $A, B in M_n (F)$ הפיכות גם $A dot B$ הפיכה עם $inv((A B)) = inv(B) dot inv(A)$. \ בהכללה, אם $A_1, dots, A_n in M_m (F)$ הפיכות אז $A_1 dot dots dot A_m$ הפיכה עם: $ inv((A_1 dot dots dot A_m)) = inv(A_m) dot dots dot inv(A_1) $

==== הוכחה
+ $A dot inv(A) = I_n$ ולכן $A$ הופכית משמאל של $inv(A)$ ומ-@a $inv((inv(A))) = A$.

+ $A dot inv(A) = I_n$ ולכן: $trs((inv(A))) dot trs(A) = trs((A dot inv(A))) = trs(I_n) = I_n $ כלומר $trs((inv(A)))$ היא הופכית משמאל של $trs(A)$, ומ-@a $inv((trs(A))) = trs((inv(A)))$.

+ $B dot inv(B) = A dot inv(A) = I_n$. נחשב: $(A B)(inv(B) dot inv(A)) = A dot (B dot inv(B)) dot inv(A) = A dot inv(A) = I_n$. כלומר $inv(B) inv(A)$ הופכית מימין של $A B$ ונסיק $inv((A B)) = inv(B) dot inv(A)$.

#QED

#pagebreak()
=== (טענה) תהי $A in M_n (F)$. אזי, $A$ הפיכה אם״ם לכל $b in F^n$ למערכת $A x = b$ קיים פתרון יחיד.

==== הוכחה
- $arrow.double.l$: נניח ש-$A$ הפיכה ונתבונן במע׳ $A x = b$. נכפול משמאל ב-$inv(A)$ ונקבל $x = inv(A) A x =inv(A) b$ ולמע׳ קיים פתרון יחיד $x = inv(A) b$.

- $arrow.double.r$: נחפש $B in M_n (F)$ כך ש-$A dot B = I_n$. כלומר: $ A= underbrace(mat(|, |, , |; c_1, c_2, dots.h.c, c_n; |,|,,|), B) = mat(|, |, , |; A c_1, A c_2, dots.h.c, A c_n; |,|,,|) = underbrace(mat(|, |, , |; e_1, e_2, dots.h.c, e_n; |,|,,|), I_n) $

  קיבלנו $n$ מע׳ משוואות לינאריות: $A c_1 = e_1, A c_2 = e_2, dots, A c_n = e_n$. מהנתון, לכל אחת מהמערכות קיים פתרון יחיד, ופתרונות אלה ירכיבו את המטריצה $B$, ומ-@b, אם $B$ ההופכית מימין של $A$ אז $A$ הפיכה.

#QED

==== מסקנה

בכדי למצוא מטריצה הופכית $B=mat(|, |, , |; c_1, c_2, dots.h.c, c_n; |,|,,|)$ עלינו לפתור $n$ מע׳ עם אותה מטריצת מקדמים מצומצמת $A$. \ נדרג במקביל את כל המע׳:

$ mat(space,|,|,,|;A space, space e_1,e_2, dots.h.c, e_n; space, |,|,,|;augment:#1) arrow.long.squiggly_"מדרגים לצורה קנונית" mat(space,|,|,,|;I_n space, space c_1,c_2, dots.h.c, c_n; space, |,|,,|;augment:#1) $

==== דוגמאות
+ $ A = mat(1,2;3,5) \ mat(A space, space I_2;augment:#1) = mat(1,2,1,0;3,5,0,1;augment:#2) -->_(R_2<-R_2-3 R_1) mat(1,2,1,0;0,-1,-3,1;augment:#2) arrow.squiggly mat(1,0,-5,2;0,1,3,-1;augment:#2) => inv(A) = mat(-5,2;3,-1) $ כלומר $A$ הפיכה.

+ $ A = mat(1,2;3,6) \ mat(A space, space I_2;augment:#1) = mat(1,2,1,0;3,6,0,1;augment:#2) -->_(R_2<-R_2-3 R_1) mat(1,2,1,0;0,0,-3,1;augment:#2) $
  לא הגענו למטריצת היחידה משמאל ונסיק ש-$A$ אינה הפיכה.

=== (הגדרה) מטריצה אלמנטרית
מטריצה נקראת *אלמנטרית* אם היא מתקבלת ממטריצת היחידה ע״י הפעלת פעולת שורה אלמנטרית אחת. לדוגמה:

$ "מטריצות אלמנטריות" cases(mat(1,0,0;0,1,0;0,0,1) -->^(R_1 <-> R_3) mat(0,0,1;0,1,0;1,0,0) \ -->^(R_3 <- 7R_2) mat(1,0,0;0,1,0;0,0,7) \  -->^(R_2 <- R_2 - 3R_1) mat(1,0,0;-3,1,0;0,0,1)) $
