(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2227 0)
(declare-sort var3551 0)
(declare-sort var3637 0)
(declare-sort var2753 0)
(declare-sort var2111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2753-init () var2753)
(declare-fun <init>/-788057745 (var2753) void)
(declare-const null-var2227 var2227)
(declare-const null-Int Int)
(declare-const null-var3551 var3551)
(declare-const null-var3637 var3637)
(declare-const var2227-showDateTime Bool)
(declare-const var2227-dateFormatter var2111)
(declare-const var3836 var2227) ; Statement: r3 := @this: org.apache.commons.logging.impl.SimpleLog 
(assert (not (= var3836 null-var2227)))
(declare-const var3753 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3753 null-Int)))
(declare-const var1899 var3551) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1899 null-var3551)))
(declare-const var1743 var3637) ; Statement: r2 := @parameter2: java.lang.Throwable 
(assert (not (= var1743 null-var3637)))
(define-const var3630 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3630)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3630!1 String)
(assert (= var3630!1 ""))
(define-const var3329 Bool var2227-showDateTime) ; Statement: $z0 = <org.apache.commons.logging.impl.SimpleLog: boolean showDateTime> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3329 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1345 var2753 var2753-init) ; Statement: $r18 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var1345)) ; Statement: specialinvoke $r18.<java.util.Date: void <init>()>() 

(declare-const var1345!1 var2753)
(define-const var3685 var2111 var2227-dateFormatter) ; Statement: $r19 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter> 
 ; Statement: entermonitor $r19 
(assert true) ; Non Conditional
(define-const var2432 var2111 var2227-dateFormatter) ; Statement: $r20 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3499 var3637) ; Statement: $r23 := @caughtexception 
(assert (not (= var3499 null-var3637)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r19 
(assert true) ; Non Conditional
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2753-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void)}
; {var2227=org.apache.commons.logging.impl.SimpleLog, var3836=r3, var3753=i0, var3551=java.lang.Object, var1899=r1, var3637=java.lang.Throwable, var1743=r2, var3630=$r0, var3329=$z0, var2753=java.util.Date, var1345=$r18, var2111=java.text.DateFormat, var3685=$r19, var2432=$r20, var3499=$r23}
; {org.apache.commons.logging.impl.SimpleLog=var2227, r3=var3836, i0=var3753, java.lang.Object=var3551, r1=var1899, java.lang.Throwable=var3637, r2=var1743, $r0=var3630, $z0=var3329, java.util.Date=var2753, $r18=var1345, java.text.DateFormat=var2111, $r19=var3685, $r20=var2432, $r23=var3499}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r3 := @this: org.apache.commons.logging.impl.SimpleLog;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Throwable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = <org.apache.commons.logging.impl.SimpleLog: boolean showDateTime>;	if $z0 == 0 goto (branch);	$r18 = new java.util.Date;	specialinvoke $r18.<java.util.Date: void <init>()>();	$r19 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter>;	entermonitor $r19;	$r20 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter>;	$r23 := @caughtexception;	exitmonitor $r19;	throw $r23
;block_num 6