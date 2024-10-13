(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2214 0)
(declare-sort var2650 0)
(declare-sort var3093 0)
(declare-sort var3306 0)
(declare-sort var3634 0)
(declare-sort var2863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2650-init () var2650)
(declare-fun val$buf/-1146991642 (var2214) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/378607920 (var2650 String) void)
(declare-fun val$localVar/-1146991642 (var2214) Bool)
(declare-fun val$env/-1146991642 (var2214) var3093)
(declare-fun val$varName/-1146991642 (var2214) String)
(declare-fun var3634-init () var3634)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2863) String)
(declare-fun cast-from-var3306-to-var2863 (var3306) var2863)
(declare-fun <init>/-1557872005 (var3634 String) void)
(declare-const null-var2214 var2214)
(declare-const null-var3306 var3306)
(declare-const var1549 var2214) ; Statement: r1 := @this: freemarker.template.utility.CaptureOutput$1 
(assert (not (= var1549 null-var2214)))
(define-const var531 var2650 var2650-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(define-const var2579 String (val$buf/-1146991642 var1549)) ; Statement: $r2 = r1.<freemarker.template.utility.CaptureOutput$1: java.lang.StringBuilder val$buf> 
(assert true)
(define-const var2539 String (toString/-2075883882 var2579)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/378607920 var531 var2539)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r3) 

(declare-const var531!1 var2650)
(declare-const var2539!1 String)
(define-const var227 Bool (val$localVar/-1146991642 var1549)) ; Statement: $z0 = r1.<freemarker.template.utility.CaptureOutput$1: boolean val$localVar> 
 ; Statement: if $z0 == 0 goto $z1 = r1.<freemarker.template.utility.CaptureOutput$1: boolean val$globalVar> 
(assert (not (= (ite var227 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1662 var3093 (val$env/-1146991642 var1549)) ; Statement: $r13 = r1.<freemarker.template.utility.CaptureOutput$1: freemarker.core.Environment val$env> 
(define-const var3436 String (val$varName/-1146991642 var1549)) ; Statement: $r12 = r1.<freemarker.template.utility.CaptureOutput$1: java.lang.String val$varName> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var226 var3306) ; Statement: $r14 := @caughtexception 
(assert (not (= var226 null-var3306)))
(define-const var3497 var3634 var3634-init) ; Statement: $r15 = new java.io.IOException 
(define-const var3209 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3209)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3209!1 String)
(assert (= var3209!1 ""))
(assert true)
(define-const var1116 String (append/672562846 var3209!1 "Could not set variable ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not set variable ") 
(declare-const var3209!2 String)
(assert (= var3209!2 (str.++ var3209!1 "Could not set variable ")))
(define-const var1312 String (val$varName/-1146991642 var1549)) ; Statement: $r17 = r1.<freemarker.template.utility.CaptureOutput$1: java.lang.String val$varName> 
(assert true)
(define-const var443 String (append/672562846 var1116 var1312)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1116!1 String)
(assert (= var1116!1 (str.++ var1116 var1312)))
(assert true)
(define-const var393 String (append/672562846 var443 ": ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var443!1 String)
(assert (= var443!1 (str.++ var443 ": ")))
(assert true)
(define-const var846 String (getMessage/849299655 (cast-from-var3306-to-var2863 var226))) ; Statement: $r20 = virtualinvoke $r14.<java.lang.IllegalStateException: java.lang.String getMessage()>() 
(assert true)
(define-const var785 String (append/672562846 var393 var846)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var393!1 String)
(assert (= var393!1 (str.++ var393 var846)))
(assert true)
(define-const var3109 String (toString/-2075883882 var785)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3497 var3109)) ; Statement: specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r23) 

(declare-const var3497!1 var3634)
(declare-const var3109!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2650-init=([], freemarker.template.SimpleScalar), val$buf/-1146991642=([freemarker.template.utility.CaptureOutput$1], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void), val$localVar/-1146991642=([freemarker.template.utility.CaptureOutput$1], boolean), val$env/-1146991642=([freemarker.template.utility.CaptureOutput$1], freemarker.core.Environment), val$varName/-1146991642=([freemarker.template.utility.CaptureOutput$1], java.lang.String), var3634-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3306-to-var2863=([java.lang.IllegalStateException], java.lang.Throwable), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2214=freemarker.template.utility.CaptureOutput$1, var1549=r1, var2650=freemarker.template.SimpleScalar, var531=$r0, var2579=$r2, var2539=$r3, var227=$z0, var3093=freemarker.core.Environment, var1662=$r13, var3436=$r12, var3306=java.lang.IllegalStateException, var226=$r14, var3634=java.io.IOException, var3497=$r15, var3209=$r16, var1116=$r18, var1312=$r17, var443=$r19, var393=$r21, var2863=java.lang.Throwable, var846=$r20, var785=$r22, var3109=$r23}
; {freemarker.template.utility.CaptureOutput$1=var2214, r1=var1549, freemarker.template.SimpleScalar=var2650, $r0=var531, $r2=var2579, $r3=var2539, $z0=var227, freemarker.core.Environment=var3093, $r13=var1662, $r12=var3436, java.lang.IllegalStateException=var3306, $r14=var226, java.io.IOException=var3634, $r15=var3497, $r16=var3209, $r18=var1116, $r17=var1312, $r19=var443, $r21=var393, java.lang.Throwable=var2863, $r20=var846, $r22=var785, $r23=var3109}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r1 := @this: freemarker.template.utility.CaptureOutput$1;	$r0 = new freemarker.template.SimpleScalar;	$r2 = r1.<freemarker.template.utility.CaptureOutput$1: java.lang.StringBuilder val$buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r3);	$z0 = r1.<freemarker.template.utility.CaptureOutput$1: boolean val$localVar>;	if $z0 == 0 goto $z1 = r1.<freemarker.template.utility.CaptureOutput$1: boolean val$globalVar>;	$r13 = r1.<freemarker.template.utility.CaptureOutput$1: freemarker.core.Environment val$env>;	$r12 = r1.<freemarker.template.utility.CaptureOutput$1: java.lang.String val$varName>;	$r14 := @caughtexception;	$r15 = new java.io.IOException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not set variable ");	$r17 = r1.<freemarker.template.utility.CaptureOutput$1: java.lang.String val$varName>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r20 = virtualinvoke $r14.<java.lang.IllegalStateException: java.lang.String getMessage()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r23);	throw $r15
;block_num 3