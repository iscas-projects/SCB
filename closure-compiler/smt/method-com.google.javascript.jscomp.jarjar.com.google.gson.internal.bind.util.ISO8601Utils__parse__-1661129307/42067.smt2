(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1291 0)
(declare-sort var2735 0)
(declare-sort var370 0)
(declare-sort var3961 0)
(declare-sort var2104 0)
(declare-sort var1426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var370-to-var3961 (var370) var3961)
(declare-fun getMessage/849299655 (var2104) String)
(declare-fun cast-from-var3961-to-var2104 (var3961) var2104)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1426-init () var1426)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getIndex/-2136393185 (var2735) Int)
(declare-fun <init>/1495607482 (var1426 String Int) void)
(declare-fun initCause/2003336360 (var2104 var2104) var2104)
(declare-fun cast-from-var1426-to-var2104 (var1426) var2104)
(declare-const null-String String)
(declare-const null-var2735 var2735)
(declare-const null-var370 var370)
(declare-const var3810 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3810 null-String)))
(declare-const var3089 var2735) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var3089 null-var2735)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1964 var370) ; Statement: $r44 := @caughtexception 
(assert (not (= var1964 null-var370)))
(define-const var787 var3961 (cast-from-var370-to-var3961 var1964)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (not (= var3810 null-String)))) ; Negate: Cond: r1 != null  
(define-const var2999 String null-String) ; Statement: $r50 = null 
 ; Statement: goto [?= r51 = $r50] 
(assert true) ; Non Conditional
(define-const var147 String var2999) ; Statement: r51 = $r50 
(assert true)
(define-const var558 String (getMessage/849299655 (cast-from-var3961-to-var2104 var787))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var3525 String var558) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var558 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var1463 Bool (isEmpty/-1285796103 var558)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var1463 1 0) 0)) ; Cond: $z9 == 0 
(define-const var3998 var1426 var1426-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var72 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var72)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var72!1 String)
(assert (= var72!1 ""))
(assert true)
(define-const var539 String (append/672562846 var72!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var72!2 String)
(assert (= var72!2 (str.++ var72!1 "Failed to parse date [")))
(assert true)
(define-const var1755 String (append/672562846 var539 var147)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var539!1 String)
(assert (= var539!1 (str.++ var539 var147)))
(assert true)
(define-const var2929 String (append/672562846 var1755 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var1755!1 String)
(assert (= var1755!1 (str.++ var1755 "]: ")))
(assert true)
(define-const var780 String (append/672562846 var2929 var3525)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var2929!1 String)
(assert (= var2929!1 (str.++ var2929 var3525)))
(assert true)
(define-const var2370 String (toString/-2075883882 var780)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3159 Int (getIndex/-2136393185 var3089)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var3998 var2370 var3159)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var3998!1 var1426)
(declare-const var2370!1 String)
(declare-const var3159!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1426-to-var2104 var3998!1) (cast-from-var3961-to-var2104 var787))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var3998!2 var1426)
(declare-const var787!1 var3961)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var370-to-var3961=([java.lang.NumberFormatException], java.lang.RuntimeException), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3961-to-var2104=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var1426-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1426-to-var2104=([java.text.ParseException], java.lang.Throwable)}
; {var3810=r1, var1291=null_type, var2735=java.text.ParsePosition, var3089=r0, var370=java.lang.NumberFormatException, var1964=$r44, var3961=java.lang.RuntimeException, var787=r49, var2999=$r50, var147=r51, var2104=java.lang.Throwable, var558=$r43, var3525=r52, var1463=$z9, var1426=java.text.ParseException, var3998=$r72, var72=$r71, var539=$r55, var1755=$r56, var2929=$r57, var780=$r58, var2370=$r59, var3159=$i31}
; {r1=var3810, null_type=var1291, java.text.ParsePosition=var2735, r0=var3089, java.lang.NumberFormatException=var370, $r44=var1964, java.lang.RuntimeException=var3961, r49=var787, $r50=var2999, r51=var147, java.lang.Throwable=var2104, $r43=var558, r52=var3525, $z9=var1463, java.text.ParseException=var1426, $r72=var3998, $r71=var72, $r55=var539, $r56=var1755, $r57=var2929, $r58=var780, $r59=var2370, $i31=var3159}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r50 = null;	goto [?= r51 = $r50];	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7