(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2675 0)
(declare-sort var2841 0)
(declare-sort var3851 0)
(declare-sort var3185 0)
(declare-sort var3706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3185-init () var3185)
(declare-fun <init>/-788057745 (var3185) void)
(declare-const null-var2675 var2675)
(declare-const null-Int Int)
(declare-const null-var2841 var2841)
(declare-const null-var3851 var3851)
(declare-const var2675-showDateTime Bool)
(declare-const var2675-dateFormatter var3706)
(declare-const var2565 var2675) ; Statement: r3 := @this: org.apache.commons.logging.impl.SimpleLog 
(assert (not (= var2565 null-var2675)))
(declare-const var2356 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2356 null-Int)))
(declare-const var3138 var2841) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3138 null-var2841)))
(declare-const var2479 var3851) ; Statement: r2 := @parameter2: java.lang.Throwable 
(assert (not (= var2479 null-var3851)))
(define-const var1395 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1395)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1395!1 String)
(assert (= var1395!1 ""))
(define-const var3066 Bool var2675-showDateTime) ; Statement: $z0 = <org.apache.commons.logging.impl.SimpleLog: boolean showDateTime> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3066 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var122 var3185 var3185-init) ; Statement: $r18 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var122)) ; Statement: specialinvoke $r18.<java.util.Date: void <init>()>() 

(declare-const var122!1 var3185)
(define-const var1543 var3706 var2675-dateFormatter) ; Statement: $r19 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter> 
 ; Statement: entermonitor $r19 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2256 var3851) ; Statement: $r23 := @caughtexception 
(assert (not (= var2256 null-var3851)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2256!1 var3851) ; Statement: $r23 := @caughtexception 
(assert (not (= var2256!1 null-var3851)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r19 
(assert true) ; Non Conditional
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3185-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void)}
; {var2675=org.apache.commons.logging.impl.SimpleLog, var2565=r3, var2356=i0, var2841=java.lang.Object, var3138=r1, var3851=java.lang.Throwable, var2479=r2, var1395=$r0, var3066=$z0, var3185=java.util.Date, var122=$r18, var3706=java.text.DateFormat, var1543=$r19, var2256=$r23}
; {org.apache.commons.logging.impl.SimpleLog=var2675, r3=var2565, i0=var2356, java.lang.Object=var2841, r1=var3138, java.lang.Throwable=var3851, r2=var2479, $r0=var1395, $z0=var3066, java.util.Date=var3185, $r18=var122, java.text.DateFormat=var3706, $r19=var1543, $r23=var2256}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r3 := @this: org.apache.commons.logging.impl.SimpleLog;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Throwable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = <org.apache.commons.logging.impl.SimpleLog: boolean showDateTime>;	if $z0 == 0 goto (branch);	$r18 = new java.util.Date;	specialinvoke $r18.<java.util.Date: void <init>()>();	$r19 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter>;	entermonitor $r19;	$r23 := @caughtexception;	$r23 := @caughtexception;	exitmonitor $r19;	throw $r23
;block_num 6