(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2297 0)
(declare-sort var3771 0)
(declare-sort var408 0)
(declare-sort var3396 0)
(declare-sort var3938 0)
(declare-sort var3768 0)
(declare-sort var1685 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun monitor/674028316 (var2297) var408)
(declare-fun isStopped/674028316 (var2297) var3396)
(declare-fun enterWhenUninterruptibly/477817210 (var408 var3396 Int var3771) Bool)
(declare-fun var3938-init () var3938)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3768) String)
(declare-fun cast-from-var2297-to-var3768 (var2297) var3768)
(declare-fun state/170621255 (var2297) var1685)
(declare-fun cast-from-var1685-to-var3768 (var1685) var3768)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1473234163 (var3938 String) void)
(declare-const null-var2297 var2297)
(declare-const null-Int Int)
(declare-const null-var3771 var3771)
(declare-const var820 var2297) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService 
(assert (not (= var820 null-var2297)))
(declare-const var1272 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1272 null-Int)))
(declare-const var3958 var3771) ; Statement: r1 := @parameter1: java.util.concurrent.TimeUnit 
(assert (not (= var3958 null-var3771)))
(define-const var3186 var408 (monitor/674028316 var820)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor> 
(define-const var427 var3396 (isStopped/674028316 var820)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard isStopped> 
(assert true)
(define-const var1477 Bool (enterWhenUninterruptibly/477817210 var3186 var427 var1272 var3958)) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterWhenUninterruptibly(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard,long,java.util.concurrent.TimeUnit)>($r2, l0, r1) 
 ; Statement: if $z0 == 0 goto $r4 = new java.util.concurrent.TimeoutException 
(assert (= (ite var1477 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3377 var3938 var3938-init) ; Statement: $r4 = new java.util.concurrent.TimeoutException 
(define-const var3359 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3359)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3359!1 String)
(assert (= var3359!1 ""))
(assert true)
(define-const var164 String (append/672562846 var3359!1 "Timed out waiting for ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Timed out waiting for ") 
(declare-const var3359!2 String)
(assert (= var3359!2 (str.++ var3359!1 "Timed out waiting for ")))
(assert true)
(define-const var2190 String (append/-1031950772 var164 (cast-from-var2297-to-var3768 var820))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var164!1 String)
(assert (str.prefixof var164 var164!1))
(assert true)
(define-const var3364 String (append/672562846 var2190 " to reach a terminal state. Current state: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to reach a terminal state. Current state: ") 
(declare-const var2190!1 String)
(assert (= var2190!1 (str.++ var2190 " to reach a terminal state. Current state: ")))
(assert true)
(define-const var3566 var1685 (state/170621255 var820)) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>() 
(assert true)
(define-const var672 String (append/-1031950772 var3364 (cast-from-var1685-to-var3768 var3566))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3364!1 String)
(assert (str.prefixof var3364 var3364!1))
(assert true)
(define-const var632 String (toString/-2075883882 var672)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1473234163 var3377 var632)) ; Statement: specialinvoke $r4.<java.util.concurrent.TimeoutException: void <init>(java.lang.String)>($r11) 

(declare-const var3377!1 var3938)
(declare-const var632!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {monitor/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor), isStopped/674028316=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard), enterWhenUninterruptibly/477817210=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit], boolean), var3938-init=([], java.util.concurrent.TimeoutException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2297-to-var3768=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], java.lang.Object), state/170621255=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), cast-from-var1685-to-var3768=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1473234163=([java.util.concurrent.TimeoutException, java.lang.String], void)}
; {var2297=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService, var820=r0, var1272=l0, var3771=java.util.concurrent.TimeUnit, var3958=r1, var408=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor, var3186=$r3, var3396=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard, var427=$r2, var1477=$z0, var3938=java.util.concurrent.TimeoutException, var3377=$r4, var3359=$r5, var164=$r6, var3768=java.lang.Object, var2190=$r7, var3364=$r9, var1685=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var3566=$r8, var672=$r10, var632=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService=var2297, r0=var820, l0=var1272, java.util.concurrent.TimeUnit=var3771, r1=var3958, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor=var408, $r3=var3186, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard=var3396, $r2=var427, $z0=var1477, java.util.concurrent.TimeoutException=var3938, $r4=var3377, $r5=var3359, $r6=var164, java.lang.Object=var3768, $r7=var2190, $r9=var3364, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var1685, $r8=var3566, $r10=var672, $r11=var632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService;	l0 := @parameter0: long;	r1 := @parameter1: java.util.concurrent.TimeUnit;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor monitor>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard isStopped>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor: boolean enterWhenUninterruptibly(com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Monitor$Guard,long,java.util.concurrent.TimeUnit)>($r2, l0, r1);	if $z0 == 0 goto $r4 = new java.util.concurrent.TimeoutException;	$r4 = new java.util.concurrent.TimeoutException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Timed out waiting for ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to reach a terminal state. Current state: ");	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.util.concurrent.TimeoutException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 2