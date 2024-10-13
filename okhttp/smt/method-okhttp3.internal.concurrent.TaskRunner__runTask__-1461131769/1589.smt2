(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3230 0)
(declare-sort var2145 0)
(declare-sort var126 0)
(declare-sort var2734 0)
(declare-sort var2358 0)
(declare-sort var1174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2734_holdsLock/-145342167 (var2358) Bool)
(declare-fun cast-from-var3230-to-var2358 (var3230) var2358)
(declare-fun var1174-init () var1174)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2734_currentThread/-1037784612 () var2734)
(declare-fun getName/-942182377 (var2734) String)
(declare-fun append/-1031950772 (String var2358) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1174 var2358) void)
(declare-fun cast-from-String-to-var2358 (String) var2358)
(declare-const null-var3230 var3230)
(declare-const null-var2145 var2145)
(declare-const var126-assertionsEnabled Bool)
(declare-const var1940 var3230) ; Statement: r0 := @this: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var1940 null-var3230)))
(declare-const var2161 var2145) ; Statement: r1 := @parameter0: okhttp3.internal.concurrent.Task 
(assert (not (= var2161 null-var2145)))
(define-const var1843 Bool var126-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var1843 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2698 Bool (var2734_holdsLock/-145342167 (cast-from-var3230-to-var2358 var1940))) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var2698 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1822 var1174 var1174-init) ; Statement: $r6 = new java.lang.AssertionError 
(define-const var224 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var224)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var224!1 String)
(assert (= var224!1 ""))
(assert true)
(define-const var648 String (append/672562846 var224!1 "Thread ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var224!2 String)
(assert (= var224!2 (str.++ var224!1 "Thread ")))
(define-const var1566 var2734 var2734_currentThread/-1037784612) ; Statement: $r8 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1816 String (getName/-942182377 var1566)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2819 String (append/672562846 var648 var1816)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var648!1 String)
(assert (= var648!1 (str.++ var648 var1816)))
(assert true)
(define-const var2688 String (append/672562846 var2819 " MUST NOT hold lock on ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var2819!1 String)
(assert (= var2819!1 (str.++ var2819 " MUST NOT hold lock on ")))
(assert true)
(define-const var3626 String (append/-1031950772 var2688 (cast-from-var3230-to-var2358 var1940))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2688!1 String)
(assert (str.prefixof var2688 var2688!1))
(assert true)
(define-const var1137 String (toString/-2075883882 var3626)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1822 (cast-from-String-to-var2358 var1137))) ; Statement: specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.Object)>($r14) 

(declare-const var1822!1 var1174)
(declare-const var1137!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2734_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3230-to-var2358=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), var1174-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2734_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2358=([java.lang.String], java.lang.Object)}
; {var3230=okhttp3.internal.concurrent.TaskRunner, var1940=r0, var2145=okhttp3.internal.concurrent.Task, var2161=r1, var126=okhttp3.internal.Util, var1843=$z0, var2734=java.lang.Thread, var2358=java.lang.Object, var2698=$z1, var1174=java.lang.AssertionError, var1822=$r6, var224=$r7, var648=$r10, var1566=$r8, var1816=$r9, var2819=$r11, var2688=$r12, var3626=$r13, var1137=$r14}
; {okhttp3.internal.concurrent.TaskRunner=var3230, r0=var1940, okhttp3.internal.concurrent.Task=var2145, r1=var2161, okhttp3.internal.Util=var126, $z0=var1843, java.lang.Thread=var2734, java.lang.Object=var2358, $z1=var2698, java.lang.AssertionError=var1174, $r6=var1822, $r7=var224, $r10=var648, $r8=var1566, $r9=var1816, $r11=var2819, $r12=var2688, $r13=var3626, $r14=var1137}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.concurrent.TaskRunner;	r1 := @parameter0: okhttp3.internal.concurrent.Task;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z1 == 0 goto $r3 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r6 = new java.lang.AssertionError;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r8 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r9 = virtualinvoke $r8.<java.lang.Thread: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.AssertionError: void <init>(java.lang.Object)>($r14);	throw $r6
;block_num 3