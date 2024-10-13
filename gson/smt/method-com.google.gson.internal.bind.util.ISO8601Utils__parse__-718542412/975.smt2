(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var3255 0)
(declare-sort var2469 0)
(declare-sort var2930 0)
(declare-sort var3837 0)
(declare-sort var3174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2469-to-var2930 (var2469) var2930)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var3837) String)
(declare-fun cast-from-var2930-to-var3837 (var2930) var3837)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3174-init () var3174)
(declare-fun getIndex/-2136393185 (var3255) Int)
(declare-fun <init>/1495607482 (var3174 String Int) void)
(declare-fun initCause/2003336360 (var3837 var3837) var3837)
(declare-fun cast-from-var3174-to-var3837 (var3174) var3837)
(declare-const null-String String)
(declare-const null-var3255 var3255)
(declare-const null-var2469 var2469)
(declare-const var1704 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1704 null-String)))
(declare-const var2028 var3255) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2028 null-var3255)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1938 var2469) ; Statement: $r45 := @caughtexception 
(assert (not (= var1938 null-var2469)))
(define-const var2895 var2930 (cast-from-var2469-to-var2930 var1938)) ; Statement: r49 = $r45 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var1704 null-String))) ; Cond: r1 != null 
(define-const var2870 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2870)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2870!1 String)
(assert (= var2870!1 ""))
(assert true)
(define-const var675 String (append/-1166366385 var2870!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2870!2 String)
(assert (str.prefixof var2870!1 var2870!2))
(assert true)
(define-const var423 String (append/672562846 var675 var1704)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var675!1 String)
(assert (= var675!1 (str.++ var675 var1704)))
(assert true)
(define-const var1169 String (append/-1166366385 var423 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var423!1 String)
(assert (str.prefixof var423 var423!1))
(assert true)
(define-const var3251 String (toString/-2075883882 var1169)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3348 String var3251) ; Statement: r51 = $r50 
(assert true)
(define-const var452 String (getMessage/849299655 (cast-from-var2930-to-var3837 var2895))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var2710 String var452) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var452 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var3946 Bool (isEmpty/-1285796103 var452)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var3946 1 0) 0)) ; Cond: $z9 == 0 
(define-const var3816 var3174 var3174-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3011 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3011)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3011!1 String)
(assert (= var3011!1 ""))
(assert true)
(define-const var2434 String (append/672562846 var3011!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3011!2 String)
(assert (= var3011!2 (str.++ var3011!1 "Failed to parse date [")))
(assert true)
(define-const var2942 String (append/672562846 var2434 var3348)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2434!1 String)
(assert (= var2434!1 (str.++ var2434 var3348)))
(assert true)
(define-const var3112 String (append/672562846 var2942 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2942!1 String)
(assert (= var2942!1 (str.++ var2942 "]: ")))
(assert true)
(define-const var3939 String (append/672562846 var3112 var2710)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var3112!1 String)
(assert (= var3112!1 (str.++ var3112 var2710)))
(assert true)
(define-const var184 String (toString/-2075883882 var3939)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var43 Int (getIndex/-2136393185 var2028)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var3816 var184 var43)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var3816!1 var3174)
(declare-const var184!1 String)
(declare-const var43!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3174-to-var3837 var3816!1) (cast-from-var2930-to-var3837 var2895))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var3816!2 var3174)
(declare-const var2895!1 var2930)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2469-to-var2930=([java.lang.IndexOutOfBoundsException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2930-to-var3837=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var3174-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3174-to-var3837=([java.text.ParseException], java.lang.Throwable)}
; {var1704=r1, var307=null_type, var3255=java.text.ParsePosition, var2028=r0, var2469=java.lang.IndexOutOfBoundsException, var1938=$r45, var2930=java.lang.RuntimeException, var2895=r49, var2870=$r69, var675=$r34, var423=$r35, var1169=$r36, var3251=$r50, var3348=r51, var3837=java.lang.Throwable, var452=$r43, var2710=r52, var3946=$z9, var3174=java.text.ParseException, var3816=$r72, var3011=$r71, var2434=$r55, var2942=$r56, var3112=$r57, var3939=$r58, var184=$r59, var43=$i31}
; {r1=var1704, null_type=var307, java.text.ParsePosition=var3255, r0=var2028, java.lang.IndexOutOfBoundsException=var2469, $r45=var1938, java.lang.RuntimeException=var2930, r49=var2895, $r69=var2870, $r34=var675, $r35=var423, $r36=var1169, $r50=var3251, r51=var3348, java.lang.Throwable=var3837, $r43=var452, r52=var2710, $z9=var3946, java.text.ParseException=var3174, $r72=var3816, $r71=var3011, $r55=var2434, $r56=var2942, $r57=var3112, $r58=var3939, $r59=var184, $i31=var43}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r45 := @caughtexception;	r49 = $r45;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7