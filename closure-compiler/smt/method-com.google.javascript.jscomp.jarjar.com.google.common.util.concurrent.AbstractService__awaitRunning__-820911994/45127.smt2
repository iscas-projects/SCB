(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var339 0)
(declare-sort var945 0)
(declare-sort var3548 0)
(declare-sort var3934 0)
(declare-sort var1374 0)
(declare-sort var1845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun monitor/674028316 (var339) var3548)
(declare-fun hasReachedRunning/674028316 (var339) var3934)
(declare-fun enterWhenUninterruptibly/477817210 (var3548 var3934 Int var945) Bool)
(declare-fun var1374-init () var1374)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1845) String)
(declare-fun cast-from-var339-to-var1845 (var339) var1845)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1473234163 (var1374 String) void)
(declare-const null-var339 var339)
(declare-const null-Int Int)
(declare-const null-var945 var945)
(declare-const var3339 var339) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService 
(assert (not (= var3339 null-var339)))
(declare-const var3930 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3930 null-Int)))
(declare-const var1214 var945) ; Statement: r1 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var1214 null-var945)))
(define-const var821 var3548 (monitor/674028316 var3339)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor> 
(define-const var2028 var3934 (hasReachedRunning/674028316 var3339)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard hasReachedRunning> 
(assert true)
(define-const var3821 Bool (enterWhenUninterruptibly/477817210 var821 var2028 var3930 var1214)) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterWhenUninterruptibly(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard,long,java.util.concurrent.TimeUnit)>($r2, l0, r1) 
 ; Statement: if $z0 == 0 goto $r4 = new java.util.concurrent.TimeoutException 
(assert (= (ite var3821 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3723 var1374 var1374-init) ; Statement: $r4 = new java.util.concurrent.TimeoutException 
(define-const var2641 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2641)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2641!1 String)
(assert (= var2641!1 ""))
(assert true)
(define-const var1343 String (append/672562846 var2641!1 "Timed out waiting for ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Timed out waiting for ") 
(declare-const var2641!2 String)
(assert (= var2641!2 (str.++ var2641!1 "Timed out waiting for ")))
(assert true)
(define-const var2397 String (append/-1031950772 var1343 (cast-from-var339-to-var1845 var3339))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1343!1 String)
(assert (str.prefixof var1343 var1343!1))
(assert true)
(define-const var325 String (append/672562846 var2397 " to reach the RUNNING state.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to reach the RUNNING state.") 
(declare-const var2397!1 String)
(assert (= var2397!1 (str.++ var2397 " to reach the RUNNING state.")))
(assert true)
(define-const var2865 String (toString/-2075883882 var325)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1473234163 var3723 var2865)) ; Statement: specialinvoke $r4.<java.util.concurrent.TimeoutException: void <init>(java.lang.String)>($r9) 

(declare-const var3723!1 var1374)
(declare-const var2865!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {monitor/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor), hasReachedRunning/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard), enterWhenUninterruptibly/477817210=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit], boolean), var1374-init=([], java.util.concurrent.TimeoutException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var339-to-var1845=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1473234163=([java.util.concurrent.TimeoutException, java.lang.String], void)}
; {var339=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService, var3339=r0, var3930=l0, var945=java.util.concurrent.TimeUnit, var1214=r1, var3548=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, var821=$r3, var3934=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard, var2028=$r2, var3821=$z0, var1374=java.util.concurrent.TimeoutException, var3723=$r4, var2641=$r5, var1343=$r6, var1845=java.lang.Object, var2397=$r7, var325=$r8, var2865=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService=var339, r0=var3339, l0=var3930, java.util.concurrent.TimeUnit=var945, r1=var1214, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor=var3548, $r3=var821, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard=var3934, $r2=var2028, $z0=var3821, java.util.concurrent.TimeoutException=var1374, $r4=var3723, $r5=var2641, $r6=var1343, java.lang.Object=var1845, $r7=var2397, $r8=var325, $r9=var2865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService;	l0 := @parameter0: long;	r1 := @parameter1: java.util.concurrent.TimeUnit;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard hasReachedRunning>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterWhenUninterruptibly(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard,long,java.util.concurrent.TimeUnit)>($r2, l0, r1);	if $z0 == 0 goto $r4 = new java.util.concurrent.TimeoutException;	$r4 = new java.util.concurrent.TimeoutException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Timed out waiting for ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to reach the RUNNING state.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.util.concurrent.TimeoutException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2