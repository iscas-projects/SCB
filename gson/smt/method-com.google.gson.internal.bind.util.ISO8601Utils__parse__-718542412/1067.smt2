(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2642 0)
(declare-sort var3506 0)
(declare-sort var656 0)
(declare-sort var156 0)
(declare-sort var2644 0)
(declare-sort var2522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var656-to-var156 (var656) var156)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var2644) String)
(declare-fun cast-from-var156-to-var2644 (var156) var2644)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2522-init () var2522)
(declare-fun getIndex/-2136393185 (var3506) Int)
(declare-fun <init>/1495607482 (var2522 String Int) void)
(declare-fun initCause/2003336360 (var2644 var2644) var2644)
(declare-fun cast-from-var2522-to-var2644 (var2522) var2644)
(declare-const null-String String)
(declare-const null-var3506 var3506)
(declare-const null-var656 var656)
(declare-const var32 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var32 null-String)))
(declare-const var1379 var3506) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var1379 null-var3506)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1488 var656) ; Statement: $r32 := @caughtexception 
(assert (not (= var1488 null-var656)))
(define-const var52 var156 (cast-from-var656-to-var156 var1488)) ; Statement: r49 = $r32 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var32 null-String))) ; Cond: r1 != null 
(define-const var1276 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1276)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1276!1 String)
(assert (= var1276!1 ""))
(assert true)
(define-const var3898 String (append/-1166366385 var1276!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1276!2 String)
(assert (str.prefixof var1276!1 var1276!2))
(assert true)
(define-const var902 String (append/672562846 var3898 var32)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3898!1 String)
(assert (= var3898!1 (str.++ var3898 var32)))
(assert true)
(define-const var1161 String (append/-1166366385 var902 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var902!1 String)
(assert (str.prefixof var902 var902!1))
(assert true)
(define-const var2137 String (toString/-2075883882 var1161)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2972 String var2137) ; Statement: r51 = $r50 
(assert true)
(define-const var1454 String (getMessage/849299655 (cast-from-var156-to-var2644 var52))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var340 String var1454) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var1454 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var3745 Bool (isEmpty/-1285796103 var1454)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var3745 1 0) 0)) ; Cond: $z9 == 0 
(define-const var984 var2522 var2522-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var2593 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2593)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2593!1 String)
(assert (= var2593!1 ""))
(assert true)
(define-const var932 String (append/672562846 var2593!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var2593!2 String)
(assert (= var2593!2 (str.++ var2593!1 "Failed to parse date [")))
(assert true)
(define-const var2075 String (append/672562846 var932 var2972)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var932!1 String)
(assert (= var932!1 (str.++ var932 var2972)))
(assert true)
(define-const var2504 String (append/672562846 var2075 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2075!1 String)
(assert (= var2075!1 (str.++ var2075 "]: ")))
(assert true)
(define-const var1223 String (append/672562846 var2504 var340)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var2504!1 String)
(assert (= var2504!1 (str.++ var2504 var340)))
(assert true)
(define-const var1984 String (toString/-2075883882 var1223)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3275 Int (getIndex/-2136393185 var1379)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var984 var1984 var3275)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var984!1 var2522)
(declare-const var1984!1 String)
(declare-const var3275!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2522-to-var2644 var984!1) (cast-from-var156-to-var2644 var52))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var984!2 var2522)
(declare-const var52!1 var156)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var656-to-var156=([java.lang.IllegalArgumentException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var156-to-var2644=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var2522-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2522-to-var2644=([java.text.ParseException], java.lang.Throwable)}
; {var32=r1, var2642=null_type, var3506=java.text.ParsePosition, var1379=r0, var656=java.lang.IllegalArgumentException, var1488=$r32, var156=java.lang.RuntimeException, var52=r49, var1276=$r69, var3898=$r34, var902=$r35, var1161=$r36, var2137=$r50, var2972=r51, var2644=java.lang.Throwable, var1454=$r43, var340=r52, var3745=$z9, var2522=java.text.ParseException, var984=$r72, var2593=$r71, var932=$r55, var2075=$r56, var2504=$r57, var1223=$r58, var1984=$r59, var3275=$i31}
; {r1=var32, null_type=var2642, java.text.ParsePosition=var3506, r0=var1379, java.lang.IllegalArgumentException=var656, $r32=var1488, java.lang.RuntimeException=var156, r49=var52, $r69=var1276, $r34=var3898, $r35=var902, $r36=var1161, $r50=var2137, r51=var2972, java.lang.Throwable=var2644, $r43=var1454, r52=var340, $z9=var3745, java.text.ParseException=var2522, $r72=var984, $r71=var2593, $r55=var932, $r56=var2075, $r57=var2504, $r58=var1223, $r59=var1984, $i31=var3275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r32 := @caughtexception;	r49 = $r32;	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7