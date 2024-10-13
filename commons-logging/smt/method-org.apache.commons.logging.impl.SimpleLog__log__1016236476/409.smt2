(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3050 0)
(declare-sort var2342 0)
(declare-sort var1209 0)
(declare-sort var2396 0)
(declare-sort var1946 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2396-init () var2396)
(declare-fun <init>/-788057745 (var2396) void)
(declare-const null-var3050 var3050)
(declare-const null-Int Int)
(declare-const null-var2342 var2342)
(declare-const null-var1209 var1209)
(declare-const var3050-showDateTime Bool)
(declare-const var3050-dateFormatter var1946)
(declare-const var822 var3050) ; Statement: r3 := @this: org.apache.commons.logging.impl.SimpleLog 
(assert (not (= var822 null-var3050)))
(declare-const var2547 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2547 null-Int)))
(declare-const var1607 var2342) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1607 null-var2342)))
(declare-const var740 var1209) ; Statement: r2 := @parameter2: java.lang.Throwable 
(assert (not (= var740 null-var1209)))
(define-const var1179 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1179)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1179!1 String)
(assert (= var1179!1 ""))
(define-const var2035 Bool var3050-showDateTime) ; Statement: $z0 = <org.apache.commons.logging.impl.SimpleLog: boolean showDateTime> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2035 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2700 var2396 var2396-init) ; Statement: $r18 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var2700)) ; Statement: specialinvoke $r18.<java.util.Date: void <init>()>() 

(declare-const var2700!1 var2396)
(define-const var940 var1946 var3050-dateFormatter) ; Statement: $r19 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter> 
 ; Statement: entermonitor $r19 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1683 var1209) ; Statement: $r23 := @caughtexception 
(assert (not (= var1683 null-var1209)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r19 
(assert true) ; Non Conditional
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2396-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void)}
; {var3050=org.apache.commons.logging.impl.SimpleLog, var822=r3, var2547=i0, var2342=java.lang.Object, var1607=r1, var1209=java.lang.Throwable, var740=r2, var1179=$r0, var2035=$z0, var2396=java.util.Date, var2700=$r18, var1946=java.text.DateFormat, var940=$r19, var1683=$r23}
; {org.apache.commons.logging.impl.SimpleLog=var3050, r3=var822, i0=var2547, java.lang.Object=var2342, r1=var1607, java.lang.Throwable=var1209, r2=var740, $r0=var1179, $z0=var2035, java.util.Date=var2396, $r18=var2700, java.text.DateFormat=var1946, $r19=var940, $r23=var1683}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r3 := @this: org.apache.commons.logging.impl.SimpleLog;	i0 := @parameter0: int;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Throwable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = <org.apache.commons.logging.impl.SimpleLog: boolean showDateTime>;	if $z0 == 0 goto (branch);	$r18 = new java.util.Date;	specialinvoke $r18.<java.util.Date: void <init>()>();	$r19 = <org.apache.commons.logging.impl.SimpleLog: java.text.DateFormat dateFormatter>;	entermonitor $r19;	$r23 := @caughtexception;	exitmonitor $r19;	throw $r23
;block_num 5