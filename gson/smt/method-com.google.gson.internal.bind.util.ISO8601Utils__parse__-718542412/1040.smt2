(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2538 0)
(declare-sort var3406 0)
(declare-sort var2934 0)
(declare-sort var2902 0)
(declare-sort var1965 0)
(declare-sort var17 0)
(declare-sort var831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2934-to-var2902 (var2934) var2902)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var1965) String)
(declare-fun cast-from-var2902-to-var1965 (var2902) var1965)
(declare-fun getClass/1258963082 (var17) ClassObject)
(declare-fun cast-from-var2902-to-var17 (var2902) var17)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var831-init () var831)
(declare-fun getIndex/-2136393185 (var3406) Int)
(declare-fun <init>/1495607482 (var831 String Int) void)
(declare-fun initCause/2003336360 (var1965 var1965) var1965)
(declare-fun cast-from-var831-to-var1965 (var831) var1965)
(declare-const null-String String)
(declare-const null-var3406 var3406)
(declare-const null-var2934 var2934)
(declare-const var209 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var209 null-String)))
(declare-const var2506 var3406) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var2506 null-var3406)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2411 var2934) ; Statement: $r44 := @caughtexception 
(assert (not (= var2411 null-var2934)))
(define-const var2726 var2902 (cast-from-var2934-to-var2902 var2411)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var209 null-String))) ; Cond: r1 != null 
(define-const var1378 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1378)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1378!1 String)
(assert (= var1378!1 ""))
(assert true)
(define-const var1510 String (append/-1166366385 var1378!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1378!2 String)
(assert (str.prefixof var1378!1 var1378!2))
(assert true)
(define-const var504 String (append/672562846 var1510 var209)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1510!1 String)
(assert (= var1510!1 (str.++ var1510 var209)))
(assert true)
(define-const var881 String (append/-1166366385 var504 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var504!1 String)
(assert (str.prefixof var504 var504!1))
(assert true)
(define-const var39 String (toString/-2075883882 var881)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var566 String var39) ; Statement: r51 = $r50 
(assert true)
(define-const var3567 String (getMessage/849299655 (cast-from-var2902-to-var1965 var2726))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var1227 String var3567) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var3567 null-String)) ; Cond: $r43 == null 
(define-const var2853 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2853)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2853!1 String)
(assert (= var2853!1 ""))
(assert true)
(define-const var788 String (append/672562846 var2853!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2853!2 String)
(assert (= var2853!2 (str.++ var2853!1 "(")))
(assert true)
(define-const var682 ClassObject (getClass/1258963082 (cast-from-var2902-to-var17 var2726))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1677 String (getName/-1958580599 var682)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1315 String (append/672562846 var788 var1677)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var788!1 String)
(assert (= var788!1 (str.++ var788 var1677)))
(assert true)
(define-const var2207 String (append/672562846 var1315 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1315!1 String)
(assert (= var1315!1 (str.++ var1315 ")")))
(assert true)
(define-const var1227!1 String (toString/-2075883882 var2207)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var834 var831 var831-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var662 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var662)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var662!1 String)
(assert (= var662!1 ""))
(assert true)
(define-const var2933 String (append/672562846 var662!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var662!2 String)
(assert (= var662!2 (str.++ var662!1 "Failed to parse date [")))
(assert true)
(define-const var2981 String (append/672562846 var2933 var566)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2933!1 String)
(assert (= var2933!1 (str.++ var2933 var566)))
(assert true)
(define-const var3935 String (append/672562846 var2981 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 "]: ")))
(assert true)
(define-const var3485 String (append/672562846 var3935 var1227!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var3935!1 String)
(assert (= var3935!1 (str.++ var3935 var1227!1)))
(assert true)
(define-const var626 String (toString/-2075883882 var3485)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1332 Int (getIndex/-2136393185 var2506)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var834 var626 var1332)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var834!1 var831)
(declare-const var626!1 String)
(declare-const var1332!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var831-to-var1965 var834!1) (cast-from-var2902-to-var1965 var2726))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var834!2 var831)
(declare-const var2726!1 var2902)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2934-to-var2902=([java.lang.NumberFormatException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2902-to-var1965=([java.lang.RuntimeException], java.lang.Throwable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2902-to-var17=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var831-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var831-to-var1965=([java.text.ParseException], java.lang.Throwable)}
; {var209=r1, var2538=null_type, var3406=java.text.ParsePosition, var2506=r0, var2934=java.lang.NumberFormatException, var2411=$r44, var2902=java.lang.RuntimeException, var2726=r49, var1378=$r69, var1510=$r34, var504=$r35, var881=$r36, var39=$r50, var566=r51, var1965=java.lang.Throwable, var3567=$r43, var1227=r52, var2853=$r70, var788=$r40, var17=java.lang.Object, var682=$r38, var1677=$r39, var1315=$r41, var2207=$r42, var831=java.text.ParseException, var834=$r72, var662=$r71, var2933=$r55, var2981=$r56, var3935=$r57, var3485=$r58, var626=$r59, var1332=$i31}
; {r1=var209, null_type=var2538, java.text.ParsePosition=var3406, r0=var2506, java.lang.NumberFormatException=var2934, $r44=var2411, java.lang.RuntimeException=var2902, r49=var2726, $r69=var1378, $r34=var1510, $r35=var504, $r36=var881, $r50=var39, r51=var566, java.lang.Throwable=var1965, $r43=var3567, r52=var1227, $r70=var2853, $r40=var788, java.lang.Object=var17, $r38=var682, $r39=var1677, $r41=var1315, $r42=var2207, java.text.ParseException=var831, $r72=var834, $r71=var662, $r55=var2933, $r56=var2981, $r57=var3935, $r58=var3485, $r59=var626, $i31=var1332}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7