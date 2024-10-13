(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3233 0)
(declare-sort var2862 0)
(declare-sort var1963 0)
(declare-sort var3230 0)
(declare-sort var1447 0)
(declare-sort var2630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1963-to-var3230 (var1963) var3230)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getMessage/849299655 (var1447) String)
(declare-fun cast-from-var3230-to-var1447 (var3230) var1447)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2630-init () var2630)
(declare-fun getIndex/-2136393185 (var2862) Int)
(declare-fun <init>/1495607482 (var2630 String Int) void)
(declare-fun initCause/2003336360 (var1447 var1447) var1447)
(declare-fun cast-from-var2630-to-var1447 (var2630) var1447)
(declare-const null-String String)
(declare-const null-var2862 var2862)
(declare-const null-var1963 var1963)
(declare-const var3522 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3522 null-String)))
(declare-const var3657 var2862) ; Statement: r0 := @parameter1: java.text.ParsePosition 
(assert (not (= var3657 null-var2862)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var337 var1963) ; Statement: $r44 := @caughtexception 
(assert (not (= var337 null-var1963)))
(define-const var2641 var3230 (cast-from-var1963-to-var3230 var337)) ; Statement: r49 = $r44 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r1 != null goto $r69 = new java.lang.StringBuilder 
(assert (not (= var3522 null-String))) ; Cond: r1 != null 
(define-const var90 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var90)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var90!1 String)
(assert (= var90!1 ""))
(assert true)
(define-const var2464 String (append/-1166366385 var90!1 34)) ; Statement: $r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var90!2 String)
(assert (str.prefixof var90!1 var90!2))
(assert true)
(define-const var31 String (append/672562846 var2464 var3522)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2464!1 String)
(assert (= var2464!1 (str.++ var2464 var3522)))
(assert true)
(define-const var3604 String (append/-1166366385 var31 34)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var31!1 String)
(assert (str.prefixof var31 var31!1))
(assert true)
(define-const var186 String (toString/-2075883882 var3604)) ; Statement: $r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1664 String var186) ; Statement: r51 = $r50 
(assert true)
(define-const var2654 String (getMessage/849299655 (cast-from-var3230-to-var1447 var2641))) ; Statement: $r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>() 
(define-const var1974 String var2654) ; Statement: r52 = $r43 
 ; Statement: if $r43 == null goto $r70 = new java.lang.StringBuilder 
(assert (not (= var2654 null-String))) ; Negate: Cond: $r43 == null  
(assert true)
(define-const var656 Bool (isEmpty/-1285796103 var2654)) ; Statement: $z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z9 == 0 goto $r72 = new java.text.ParseException 
(assert (= (ite var656 1 0) 0)) ; Cond: $z9 == 0 
(define-const var2461 var2630 var2630-init) ; Statement: $r72 = new java.text.ParseException 
(define-const var1290 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1290)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1290!1 String)
(assert (= var1290!1 ""))
(assert true)
(define-const var2908 String (append/672562846 var1290!1 "Failed to parse date [")) ; Statement: $r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [") 
(declare-const var1290!2 String)
(assert (= var1290!2 (str.++ var1290!1 "Failed to parse date [")))
(assert true)
(define-const var134 String (append/672562846 var2908 var1664)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51) 
(declare-const var2908!1 String)
(assert (= var2908!1 (str.++ var2908 var1664)))
(assert true)
(define-const var653 String (append/672562846 var134 "]: ")) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var134!1 String)
(assert (= var134!1 (str.++ var134 "]: ")))
(assert true)
(define-const var2112 String (append/672562846 var653 var1974)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52) 
(declare-const var653!1 String)
(assert (= var653!1 (str.++ var653 var1974)))
(assert true)
(define-const var291 String (toString/-2075883882 var2112)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3840 Int (getIndex/-2136393185 var3657)) ; Statement: $i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>() 
(assert true)
;(assert (<init>/1495607482 var2461 var291 var3840)) ; Statement: specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31) 

(declare-const var2461!1 var2630)
(declare-const var291!1 String)
(declare-const var3840!1 Int)
(assert true)
;(assert (initCause/2003336360 (cast-from-var2630-to-var1447 var2461!1) (cast-from-var3230-to-var1447 var2641))) ; Statement: virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49) 

(declare-const var2461!2 var2630)
(declare-const var2641!1 var3230)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1963-to-var3230=([java.lang.NumberFormatException], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3230-to-var1447=([java.lang.RuntimeException], java.lang.Throwable), isEmpty/-1285796103=([java.lang.String], boolean), var2630-init=([], java.text.ParseException), getIndex/-2136393185=([java.text.ParsePosition], int), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2630-to-var1447=([java.text.ParseException], java.lang.Throwable)}
; {var3522=r1, var3233=null_type, var2862=java.text.ParsePosition, var3657=r0, var1963=java.lang.NumberFormatException, var337=$r44, var3230=java.lang.RuntimeException, var2641=r49, var90=$r69, var2464=$r34, var31=$r35, var3604=$r36, var186=$r50, var1664=r51, var1447=java.lang.Throwable, var2654=$r43, var1974=r52, var656=$z9, var2630=java.text.ParseException, var2461=$r72, var1290=$r71, var2908=$r55, var134=$r56, var653=$r57, var2112=$r58, var291=$r59, var3840=$i31}
; {r1=var3522, null_type=var3233, java.text.ParsePosition=var2862, r0=var3657, java.lang.NumberFormatException=var1963, $r44=var337, java.lang.RuntimeException=var3230, r49=var2641, $r69=var90, $r34=var2464, $r35=var31, $r36=var3604, $r50=var186, r51=var1664, java.lang.Throwable=var1447, $r43=var2654, r52=var1974, $z9=var656, java.text.ParseException=var2630, $r72=var2461, $r71=var1290, $r55=var2908, $r56=var134, $r57=var653, $r58=var2112, $r59=var291, $i31=var3840}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.text.ParsePosition;	$r44 := @caughtexception;	r49 = $r44;	goto [?= (branch)];	if r1 != null goto $r69 = new java.lang.StringBuilder;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r50 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	r51 = $r50;	$r43 = virtualinvoke r49.<java.lang.Exception: java.lang.String getMessage()>();	r52 = $r43;	if $r43 == null goto $r70 = new java.lang.StringBuilder;	$z9 = virtualinvoke $r43.<java.lang.String: boolean isEmpty()>();	if $z9 == 0 goto $r72 = new java.text.ParseException;	$r72 = new java.text.ParseException;	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r55 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to parse date [");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r51);	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r52);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	$i31 = virtualinvoke r0.<java.text.ParsePosition: int getIndex()>();	specialinvoke $r72.<java.text.ParseException: void <init>(java.lang.String,int)>($r59, $i31);	virtualinvoke $r72.<java.text.ParseException: java.lang.Throwable initCause(java.lang.Throwable)>(r49);	throw $r72
;block_num 7