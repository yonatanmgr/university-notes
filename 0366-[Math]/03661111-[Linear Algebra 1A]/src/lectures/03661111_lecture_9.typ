#import "/template.typ": *
#import "@preview/colorful-boxes:1.2.0": *

#show: project.with(
  title: "אלגברה לינארית 1א׳ - שיעור 9",
  authors: ("יונתן מגר",),
  date: "1 בפברואר, 2024",
)

// #include "/utils/toc.typ"
// #pagebreak()

#set enum(numbering: "(1.א)")

== המשך משפטים על מימדים ובסיסים
=== (משפט) יהי $V$ מ״ו מעל $F$ ו-$U seq V$ תת-מרחב. נניח ש-$dim V < oo$. אזי, $dim U <= dim V$.\ יתר על כן, $dim U = dim V iff U=V$

==== הוכחה

כדי להוכיח ש-$dim U <= dim V$, די להראות שכל סדרת וקטורים בת״ל ב-$U$ היא באורך $dim V >=$.
\ ואכן, אם $u_1, dots, u_k in U$ בת״ל ב-$U$ אז היא גם בת״ל ב-$V$ ולכן $k <= dim V$.

בשביל החלק השני, די להוכיח שאם $n:= dim U = dim V$ אז $U=V$. ואכן, ניקח בסיס של $U$: $B=(u_1, dots, u_n)$ בסיס של $U$. בפרט, זוהי קבוצה בת״ל באורך $n$ ב-$V$, ולכן $B$ בסיס של $V$ (תת-קבוצה בת״ל מאורך הבסיס). #QED

=== (משפט) תהי $V seq F^n$ קבוצת הפתרונות של מערכת משוואות הומוגנית ב-$n$ נעלמים. אזי, $ dim V = "מספר המשתנים החופשיים" = n-("מספר המשתנים התלויים") $

==== הוכחה
$ "מטריצה מייצגת של מערכת המשוואות" ->mat(,,,;,,,;,,,) arrow.long.squiggly^"דירוג" mat(0, dots.h.c, 1, 0; 0,dots,0,0;0,dots,0,1) -> "המטריצה הקאנונית" $

נסמן ב-${1,dots,n} supset.eq I$ את קבוצת האינדקסים של המשתנים הקשורים וב-${1,dots,n} supset.eq J$ את האינדקסים המתאימים למשתנים החופשיים. יודעים שלכל בחירה של $(x_j)_(j in j) in F$ יש בדיוק בחירה אחת של $x_i in F, i in I$ כך ש-$(x_1, dots, x_n)$ יהיה פתרון. ואכן, אם המשוואה היחידה אחרי הדירוג בה $x_i$ מופיע היא $x_i = - sum_(j in J) k_(i j) x_j$ ואז אם $forall j in J$ נבחר את הפתרון $v_j in F^n$ המתאים ל-$x_j =1$, $forall j' in J x_(j') = 0$ וזו קבוצה פורשת ובת״ל ולכן בסיס. #QED

= העתקות לינאריות
== הגדרה
יהיו $V_1, V_2$ שני מרחבים לינאריים מעל שדה $F$. פונקציה $phi : V_1 -> V_2$ נקראת העתקה לינארית (או טרנספורמציה לינאריות) אם מתקיימים:
+ $forall v, u in V : phi(v+u) = phi(v)+phi(u)$
+ $forall lambda in F, forall v in V : phi(lambda v) = lambda phi(v)$
באופן שקול ל-(1) ו-(2) נוכל לדרוש:
3. $forall lambda_1, lambda_2 in F, forall v,u in V: phi(lambda_1 v + lambda_2 u) = lambda_1 phi(v) + lambda_2 phi(u)$.

נקרא ל-$phi$ *שיכון* אם $phi$ חח״ע.\ נסמן את *התמונה* של $phi$ ב-$Im(phi) = phi(V) := {phi (v):v in V}$, ואת *הגרעין* של $phi$: $ker phi = {v in V:phi(v) =0}$. \
נסמן את קבוצת כל ההעתקות הלינאריות מ-$V_1$ ל-$V_2$ ב-$hom (V_1, V_2) := {phi : V_1 -> V_2}$. לפעמים אם נרצה להדגיש את $F$ נסמן $hom_F (V_1,V_2)$, ואם $V_1=V_2$ נסמן בקצרה $hom_F (V_1) = hom_F (V_1, V_1)$.

\
=== דוגמאות
+ תמיד יש את העתקת האפס שמוגדרת $phi(v) = 0, forall v in V_1$. נסמנה ב-$dot.circle$ ובפרט $dot.circle in hom (V_1, V_2)$. ניתן לראות כי $im dot.circle = dot.circle$ ו-$ker dot.circle = V_1$.

+ נניח $V_1 = V_2 = V$. נגדיר את העתקת הזהות: $forall v in V, phi(v)=v$. זו העתקה לינארית ונסמנה ב-$id(V)$ או $id(space.hair)$ (או שנסמנה ב-$1$).

+ $V=F^2$. נגדיר $phi: V->V, phi(x,y)=(-y,x)$. $V$ זו העתקה לינארית. \
  אז במקרה יש גם העתקה "הופכית" - סיבוב בכיוון השני: $psi(x,y)= (y,-x)$. ובאמת: $ phi(psi(x,y)) = phi(y,-x) = (x, y) $ ולהיפך: $ psi(phi(x,y)) = psi(y,-x) = (x, y) $
  במקרה זה מתקיים $phi of psi = psi of phi = id(space.hair)$ (אם נסמן "כפל" בהרכבה ו-$id(space.hair) = 1$ נקבל $phi dot psi = psi dot phi = 1$). \
  הגרעין $ker phi = {(x,y) | phi(x,y) = 0_V} = {(x,y) | (-y,x)= (0,0)} = {(0,0)}$.

=== (למה) תהי $phi: V->U$ העתקה לינארית מעל שדה $F$. מתקיימות התכונות הבאות:
0. $phi(0)=dot.circle$.
+ $im phi$ היא תת מרחב של $U$.
+ $ker phi$ היא תת מרחב של $V$.
+ $phi$ היא על $iff$ $im phi = U$
+ $phi$ היא חח״ע $iff$ $ker phi = U$
+ $phi$ היא העתקת האפס $iff$ $ker phi = V$ $iff$ $im phi = 0$

==== הוכחה
0. $phi(0_V) = phi(0_F dot 0_V) = 0_F dot phi(0_V) = 0_U$.
+ לפי (0), $dot.circle in im phi $. ניקח $u_1, u_2 in im phi, lambda_1, lambda_2 in F$. אז קיימים $v_1, v_2 in V$ כך ש-$ u_1 = phi(v_1), u_2 = phi(v_2) \
  lambda_1 u_1 + lambda_2 u_2 = lambda_1 phi(v_1) + lambda_2 phi(v_2) = phi(lambda_1 v_1 + lambda_2 v_2) in im phi
$ כנדרש.

+ לפי (0), $0 in ker phi$. ניקח $lambda_1, lambda_2 in F, v_1, v_2 in ker phi$. כלומר:
  $ phi(v_1) = phi(v_2) = 0 \
    lambda_1 v_1 + lambda_2 v_2 in ker phi \
    iff phi (lambda_1 v_1 + lambda_2 v_2) = 0  \ iff lambda_1 phi(v_1) + lambda_2 phi(v_2) = 0 \
    arrow.t.double \ lambda_1 dot 0 + lambda_2 dot 0 = 0
  $

+ ברור מההגדרה של על.
+ $phi$ חח״ע ו-$v in ker phi$. אזי, $phi(v) = 0 = phi(0)$. כיוון ש-$phi$ חח״ע $v=0$. לכן $ker phi = dot.circle = {0}$. \ נניח ש-$ker phi = 0$. צ״ל $phi$ חח״ע. נניח ש-$phi(v_1)=phi(v_2)$ צ״ל $v_1=v_2$. ואכן, $ 0 = phi(v_1) - phi(v_2) = phi(v_1 - v_2) => v_1-v_2 in ker phi = dot.circle => v_1- v_2 = 0 => v_1 = v_2 $
+ ברור מההגדרה.
#QED

== איזומורפיזם
העתקה לינארית $phi: V_1 -> V_2$ נקראת *איזומורפיזם* אם קיימת הופכית, כלומר קיימת $psi: V_2->V_1$ כך ש-$phi of psi=id(V_1)$ וגם $psi of phi = id(V_1)$ $(*)$.

// ==== תזכורת
// $(phi of psi) (v) = phi(psi(v))$. בדרך כלל

=== (למה) תהי $phi: V_1->V_2$ העתקה לינארית. מתקיימות התכונות הבאות:
+ $phi$ היא איזומורפיזם $iff$ $phi$ חח״ע ועל.
+ אם $phi$ איזומורפיזם אז ההופכית היא יחידה.

==== הוכחה
+ $arrow.double.l$: נניח ש-$phi$ איזומורפיזם ויהי $phi$ שמקיימת את $(*)$.
  + חח״ע: $phi(v)=phi(u)$ $arrow.double.l$ $u=psi(phi(v)) = psi(phi(v))$ כנדרש.
  + על: ניקח $v_2 in V_2$ צ״ל $v_1$ כך ש-$phi(v_1)=v_2$. נגדיר $v_1 = psi(v_2)$ ואז $phi(v_1)=phi(psi(v_2))=v_2$ כנדרש.
 $arrow.double.r$: נניח ש-$phi$ חח״ע ועל. כלומר לכל $v_2 in V_2$ יש $v_1 in V_1$ יחיד המקיים $phi(v_1)=v_2$. נגדיר $psi: V_2->V_1$ ע״י $psi(v_2) = v_1$ ואז מההגדרה $psi phi = id(space) and phi psi = id(space)$.

 נשאר להראות ש-$psi$ העתקה לינארית. ניקח $v, w in V_2$ ו-$lambda, mu in F$. צ״ל $overbracket(psi(lambda v + mu w), x) = overbracket(lambda psi (v) + mu psi (w), y)$.
 $ &phi(x) = phi(psi(lambda v + mu w)) = lambda v + mu w
  \ &phi(y) = phi(lambda psi (v) + mu psi (w)) = lambda phi psi (v) + mu phi  psi (w) = lambda u + mu w
  $
  כלומר $phi(x) = phi(y)$ $arrow.double.l.long^(phi "חח״ע של")$ $x=y$. זה מוכיח ש-$psi$ לינארית.
  מדוע $psi$ יחידה: אם $psi_1, psi_2$ שמקיימות את $(*)$: $ phi psi_1 (x) &=x \ phi(psi_2 (x)) &= x $
  ונובע מחח״ע $psi_1(x) = psi_2(x)$. #QED
