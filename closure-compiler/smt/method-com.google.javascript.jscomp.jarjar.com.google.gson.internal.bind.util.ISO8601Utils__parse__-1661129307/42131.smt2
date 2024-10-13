(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2834 0)
(declare-sort var1884 0)
(declare-sort var456 0)
(declare-sort var715 0)
(declare-sort var3435 0)
(declare-sort var2951 0)
(declare-sort var3164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var456-to-var715 (var456) var715)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var3435) String)
(declare-fun cast-from-var715-to-var3435 (var715) var3435)
(declare-fun getClass/1258963082 (var2951) ClassObject)
(declare-fun cast-from-var715-to-var2951 (var715) var2951)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3164-init () var3164)
(declare-fun getIndex/-2136393185 (var1884) Int)
(declare-fun <init>/1495607482 (var3164 String Int) void)
(declare-fun initCause/2003336360 (var3435 var3435) var3435)
(declare-fun cast-from-var3164-to-var3435 (var3164) var3435)
(declare-const null-String String)
(declare-const null-var1884 var1884)
(declare-const null-var456 var456)
(declare-const var817 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var817 null-String)))
(declare-const var3934 var1884) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var3934 null-var1884)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1726 var456) ; Statement: $r32 := @caughtexception 
(assert (not (= var1726 null-var456)))
(define-const var1351 var715 (cast-from-var456-to-var715 var1726)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var817 null-String))) ; Cond: r1 != null 
(define-const var1587 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1587)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1587!1 String)
(assert (= var1587!1 ""))
(assert true)
(define-const var3348 String (append/-1166366385 var1587!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1587!2 String)
(assert (str.prefixof var1587!1 var1587!2))
(assert true)
(define-const var522 String (append/672562846 var3348 var817)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3348!1 String)
(assert (= var3348!1 (str.++ var3348 var817)))
(assert true)
(define-const var1979 String (append/-1166366385 var522 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var522!1 String)
(assert (str.prefixof var522 var522!1))
(assert true)
(define-const var1963 String (toString/-2075883882 var1979)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var316 String var1963) ; Statement: r51 = $r50 
(assert true)
(define-const var2318 String (getMessage/849299655 (cast-from-var715-to-var3435 var1351))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var503 String var2318) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (= var2318 null-String)) ; Cond: $r43 == null 
(define-const var1955 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1955)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1955!1 String)
(assert (= var1955!1 ""))
(assert true)
(define-const var2696 String (append/672562846 var1955!1 "(")) ; Statement: $r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1955!2 String)
(assert (= var1955!2 (str.++ var1955!1 "(")))
(assert true)
(define-const var1519 ClassObject (getClass/1258963082 (cast-from-var715-to-var2951 var1351))) ; Statement: $r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var895 String (getName/-1958580599 var1519)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3552 String (append/672562846 var2696 var895)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var2696!1 String)
(assert (= var2696!1 (str.++ var2696 var895)))
(assert true)
(define-const var1006 String (append/672562846 var3552 ")")) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3552!1 String)
(assert (= var3552!1 (str.++ var3552 ")")))
(assert true)
(define-const var503!1 String (toString/-2075883882 var1006)) ; Statement: r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var744 var3164 var3164-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var2264 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2264)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2264!1 String)
(assert (= var2264!1 ""))
(assert true)
(define-const var1613 String (append/672562846 var2264!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var2264!2 String)
(assert (= var2264!2 (str.++ var2264!1 "Failed to parse date [")))
(assert true)
(define-const var2821 String (append/672562846 var1613 var316)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var1613!1 String)
(assert (= var1613!1 (str.++ var1613 var316)))
(assert true)
(define-const var89 String (append/672562846 var2821 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2821!1 String)
(assert (= var2821!1 (str.++ var2821 "]: ")))
(assert true)
(define-const var327 String (append/672562846 var89 var503!1)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var89!1 String)
(assert (= var89!1 (str.++ var89 var503!1)))
(assert true)
(define-const var2517 String (toString/-2075883882 var327)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2183 Int (getIndex/-2136393185 var3934)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var744 var2517 var2183)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var744!1 var3164)
(declare-const var2517!1 String)
(declare-const var2183!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var3164-to-var3435 var744!1) (cast-from-var715-to-var3435 var1351))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var744!2 var3164)
(declare-const var1351!1 var715)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var456-to-var715=([java.lang.IllegalArgumentException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var715-to-var3435=([java.lang.RuntimeException], java.lang.Throwable), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var715-to-var2951=([java.lang.RuntimeException], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), var3164-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var3164-to-var3435=([java.text.ParseException], java.lang.Throwable)}
; {var817=r1, var2834=null_type, var1884=java.text.ParsePosition, var3934=r0, var456=java.lang.IllegalArgumentException, var1726=$r32, var715=java.lang.RuntimeException, var1351=r49, var1587=$r69, var3348=$r34, var522=$r35, var1979=$r36, var1963=$r50, var316=r51, var3435=java.lang.Throwable, var2318=$r43, var503=r52, var1955=$r70, var2696=$r40, var2951=java.lang.Object, var1519=$r38, var895=$r39, var3552=$r41, var1006=$r42, var3164=java.text.ParseException, var744=$r72, var2264=$r71, var1613=$r55, var2821=$r56, var89=$r57, var327=$r58, var2517=$r59, var2183=$i31}
; {r1=var817, null_type=var2834, java.text.ParsePosition=var1884, r0=var3934, java.lang.IllegalArgumentException=var456, $r32=var1726, java.lang.RuntimeException=var715, r49=var1351, $r69=var1587, $r34=var3348, $r35=var522, $r36=var1979, $r50=var1963, r51=var316, java.lang.Throwable=var3435, $r43=var2318, r52=var503, $r70=var1955, $r40=var2696, java.lang.Object=var2951, $r38=var1519, $r39=var895, $r41=var3552, $r42=var1006, java.text.ParseException=var3164, $r72=var744, $r71=var2264, $r55=var1613, $r56=var2821, $r57=var89, $r58=var327, $r59=var2517, $i31=var2183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r38 = virtualinvoke r49.<java.lang.Object: java.lang.Class getClass()>();	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r52 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7