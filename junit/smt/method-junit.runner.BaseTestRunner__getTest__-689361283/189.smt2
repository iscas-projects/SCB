(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2034 0)
(declare-sort var778 0)
(declare-sort var1550 0)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1112415476 (var34) String)
(declare-fun cast-from-var1550-to-var34 (var1550) var34)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun runFailed/-31561365 (var2034 String) void)
(declare-const null-var2034 var2034)
(declare-const null-String String)
(declare-const null-var1550 var1550)
(declare-const var59 var2034) ; Statement: r1 := @this: junit.runner.BaseTestRunner 
(assert (not (= var59 null-var2034)))
(declare-const var1994 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1994 null-String)))
(assert true)
(define-const var1814 Int (length/-134980193 var1994)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 0 goto r32 = virtualinvoke r1.<junit.runner.BaseTestRunner: java.lang.Class loadSuiteClass(java.lang.String)>(r0) 
(assert (not (> var1814 0))) ; Negate: Cond: $i0 > 0  
(declare-const var2345 var1550) ; Statement: $r20 := @caughtexception 
(assert (not (= var2345 null-var1550)))
(define-const var3515 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3515)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3515!1 String)
(assert (= var3515!1 ""))
(assert true)
(define-const var2127 String (append/672562846 var3515!1 "Error: ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: ") 
(declare-const var3515!2 String)
(assert (= var3515!2 (str.++ var3515!1 "Error: ")))
(assert true)
(define-const var980 String (toString/-1112415476 (cast-from-var1550-to-var34 var2345))) ; Statement: $r22 = virtualinvoke $r20.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3157 String (append/672562846 var2127 var980)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2127!1 String)
(assert (= var2127!1 (str.++ var2127 var980)))
(assert true)
(define-const var2064 String (toString/-2075883882 var3157)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (runFailed/-31561365 var59 var2064)) ; Statement: virtualinvoke r1.<junit.runner.BaseTestRunner: void runFailed(java.lang.String)>($r25) 

(declare-const var59!1 var2034)
(declare-const var2064!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var1550-to-var34=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), runFailed/-31561365=([junit.runner.BaseTestRunner, java.lang.String], void)}
; {var2034=junit.runner.BaseTestRunner, var59=r1, var1994=r0, var778=null_type, var1814=$i0, var1550=java.lang.Exception, var2345=$r20, var3515=$r21, var2127=$r23, var34=java.lang.Throwable, var980=$r22, var3157=$r24, var2064=$r25}
; {junit.runner.BaseTestRunner=var2034, r1=var59, r0=var1994, null_type=var778, $i0=var1814, java.lang.Exception=var1550, $r20=var2345, $r21=var3515, $r23=var2127, java.lang.Throwable=var34, $r22=var980, $r24=var3157, $r25=var2064}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: junit.runner.BaseTestRunner;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 0 goto r32 = virtualinvoke r1.<junit.runner.BaseTestRunner: java.lang.Class loadSuiteClass(java.lang.String)>(r0);	$r20 := @caughtexception;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error: ");	$r22 = virtualinvoke $r20.<java.lang.Exception: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<junit.runner.BaseTestRunner: void runFailed(java.lang.String)>($r25);	return null
;block_num 2