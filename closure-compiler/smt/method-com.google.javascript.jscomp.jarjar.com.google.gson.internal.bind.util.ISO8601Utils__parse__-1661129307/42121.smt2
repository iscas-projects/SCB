(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2080 0)
(declare-sort var3093 0)
(declare-sort var3095 0)
(declare-sort var1598 0)
(declare-sort var2553 0)
(declare-sort var2458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3095-to-var1598 (var3095) var1598)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var2553) String)
(declare-fun cast-from-var1598-to-var2553 (var1598) var2553)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2458-init () var2458)
(declare-fun getIndex/-2136393185 (var3093) Int)
(declare-fun <init>/1495607482 (var2458 String Int) void)
(declare-fun initCause/2003336360 (var2553 var2553) var2553)
(declare-fun cast-from-var2458-to-var2553 (var2458) var2553)
(declare-const null-String String)
(declare-const null-var3093 var3093)
(declare-const null-var3095 var3095)
(declare-const var2175 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2175 null-String)))
(declare-const var132 var3093) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var132 null-var3093)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2029 var3095) ; Statement: $r32 := @caughtexception 
(assert (not (= var2029 null-var3095)))
(define-const var3480 var1598 (cast-from-var3095-to-var1598 var2029)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var2175 null-String))) ; Cond: r1 != null 
(define-const var1572 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1572)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1572!1 String)
(assert (= var1572!1 ""))
(assert true)
(define-const var3623 String (append/-1166366385 var1572!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1572!2 String)
(assert (str.prefixof var1572!1 var1572!2))
(assert true)
(define-const var2381 String (append/672562846 var3623 var2175)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3623!1 String)
(assert (= var3623!1 (str.++ var3623 var2175)))
(assert true)
(define-const var405 String (append/-1166366385 var2381 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2381!1 String)
(assert (str.prefixof var2381 var2381!1))
(assert true)
(define-const var2426 String (toString/-2075883882 var405)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var227 String var2426) ; Statement: r51 = $r50 
(assert true)
(define-const var1983 String (getMessage/849299655 (cast-from-var1598-to-var2553 var3480))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var1330 String var1983) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var1983 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var3786 Bool (isEmpty/-1285796103 var1983)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var3786 1 0) 0)) ; Cond: $z9 == 0 
(define-const var2873 var2458 var2458-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var1610 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1610)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1610!1 String)
(assert (= var1610!1 ""))
(assert true)
(define-const var2123 String (append/672562846 var1610!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var1610!2 String)
(assert (= var1610!2 (str.++ var1610!1 "Failed to parse date [")))
(assert true)
(define-const var1469 String (append/672562846 var2123 var227)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2123!1 String)
(assert (= var2123!1 (str.++ var2123 var227)))
(assert true)
(define-const var542 String (append/672562846 var1469 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var1469!1 String)
(assert (= var1469!1 (str.++ var1469 "]: ")))
(assert true)
(define-const var1489 String (append/672562846 var542 var1330)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var542!1 String)
(assert (= var542!1 (str.++ var542 var1330)))
(assert true)
(define-const var3542 String (toString/-2075883882 var1489)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var561 Int (getIndex/-2136393185 var132)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var2873 var3542 var561)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var2873!1 var2458)
(declare-const var3542!1 String)
(declare-const var561!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2458-to-var2553 var2873!1) (cast-from-var1598-to-var2553 var3480))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var2873!2 var2458)
(declare-const var3480!1 var1598)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3095-to-var1598=([java.lang.IllegalArgumentException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1598-to-var2553=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var2458-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2458-to-var2553=([java.text.ParseException], java.lang.Throwable)}
; {var2175=r1, var2080=null_type, var3093=java.text.ParsePosition, var132=r0, var3095=java.lang.IllegalArgumentException, var2029=$r32, var1598=java.lang.RuntimeException, var3480=r49, var1572=$r69, var3623=$r34, var2381=$r35, var405=$r36, var2426=$r50, var227=r51, var2553=java.lang.Throwable, var1983=$r43, var1330=r52, var3786=$z9, var2458=java.text.ParseException, var2873=$r72, var1610=$r71, var2123=$r55, var1469=$r56, var542=$r57, var1489=$r58, var3542=$r59, var561=$i31}
; {r1=var2175, null_type=var2080, java.text.ParsePosition=var3093, r0=var132, java.lang.IllegalArgumentException=var3095, $r32=var2029, java.lang.RuntimeException=var1598, r49=var3480, $r69=var1572, $r34=var3623, $r35=var2381, $r36=var405, $r50=var2426, r51=var227, java.lang.Throwable=var2553, $r43=var1983, r52=var1330, $z9=var3786, java.text.ParseException=var2458, $r72=var2873, $r71=var1610, $r55=var2123, $r56=var1469, $r57=var542, $r58=var1489, $r59=var3542, $i31=var561}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7