(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var2883 0)
(declare-sort var1886 0)
(declare-sort var3322 0)
(declare-sort var1564 0)
(declare-sort var588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1886-to-var3322 (var1886) var3322)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var1564) String)
(declare-fun cast-from-var3322-to-var1564 (var3322) var1564)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var588-init () var588)
(declare-fun getIndex/-2136393185 (var2883) Int)
(declare-fun <init>/1495607482 (var588 String Int) void)
(declare-fun initCause/2003336360 (var1564 var1564) var1564)
(declare-fun cast-from-var588-to-var1564 (var588) var1564)
(declare-const null-String String)
(declare-const null-var2883 var2883)
(declare-const null-var1886 var1886)
(declare-const var1258 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1258 null-String)))
(declare-const var537 var2883) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var537 null-var2883)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1134 var1886) ; Statement: $r44 := @caughtexception 
(assert (not (= var1134 null-var1886)))
(define-const var3422 var3322 (cast-from-var1886-to-var3322 var1134)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var1258 null-String))) ; Cond: r1 != null 
(define-const var1490 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1490)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1490!1 String)
(assert (= var1490!1 ""))
(assert true)
(define-const var1640 String (append/-1166366385 var1490!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1490!2 String)
(assert (str.prefixof var1490!1 var1490!2))
(assert true)
(define-const var2776 String (append/672562846 var1640 var1258)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1640!1 String)
(assert (= var1640!1 (str.++ var1640 var1258)))
(assert true)
(define-const var1708 String (append/-1166366385 var2776 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2776!1 String)
(assert (str.prefixof var2776 var2776!1))
(assert true)
(define-const var475 String (toString/-2075883882 var1708)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3582 String var475) ; Statement: r51 = $r50 
(assert true)
(define-const var152 String (getMessage/849299655 (cast-from-var3322-to-var1564 var3422))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3739 String var152) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var152 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var459 Bool (isEmpty/-1285796103 var152)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var459 1 0) 0)) ; Cond: $z9 == 0 
(define-const var230 var588 var588-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var3026 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3026)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3026!1 String)
(assert (= var3026!1 ""))
(assert true)
(define-const var279 String (append/672562846 var3026!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var3026!2 String)
(assert (= var3026!2 (str.++ var3026!1 "Failed to parse date [")))
(assert true)
(define-const var956 String (append/672562846 var279 var3582)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var279!1 String)
(assert (= var279!1 (str.++ var279 var3582)))
(assert true)
(define-const var1816 String (append/672562846 var956 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var956!1 String)
(assert (= var956!1 (str.++ var956 "]: ")))
(assert true)
(define-const var3168 String (append/672562846 var1816 var3739)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var1816!1 String)
(assert (= var1816!1 (str.++ var1816 var3739)))
(assert true)
(define-const var216 String (toString/-2075883882 var3168)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1547 Int (getIndex/-2136393185 var537)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var230 var216 var1547)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var230!1 var588)
(declare-const var216!1 String)
(declare-const var1547!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var588-to-var1564 var230!1) (cast-from-var3322-to-var1564 var3422))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var230!2 var588)
(declare-const var3422!1 var3322)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1886-to-var3322=([java.lang.NumberFormatException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3322-to-var1564=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var588-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var588-to-var1564=([java.text.ParseException], java.lang.Throwable)}
; {var1258=r1, var3437=null_type, var2883=java.text.ParsePosition, var537=r0, var1886=java.lang.NumberFormatException, var1134=$r44, var3322=java.lang.RuntimeException, var3422=r49, var1490=$r69, var1640=$r34, var2776=$r35, var1708=$r36, var475=$r50, var3582=r51, var1564=java.lang.Throwable, var152=$r43, var3739=r52, var459=$z9, var588=java.text.ParseException, var230=$r72, var3026=$r71, var279=$r55, var956=$r56, var1816=$r57, var3168=$r58, var216=$r59, var1547=$i31}
; {r1=var1258, null_type=var3437, java.text.ParsePosition=var2883, r0=var537, java.lang.NumberFormatException=var1886, $r44=var1134, java.lang.RuntimeException=var3322, r49=var3422, $r69=var1490, $r34=var1640, $r35=var2776, $r36=var1708, $r50=var475, r51=var3582, java.lang.Throwable=var1564, $r43=var152, r52=var3739, $z9=var459, java.text.ParseException=var588, $r72=var230, $r71=var3026, $r55=var279, $r56=var956, $r57=var1816, $r58=var3168, $r59=var216, $i31=var1547}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7