(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var682 0)
(declare-sort var977 0)
(declare-sort var362 0)
(declare-sort var3818 0)
(declare-sort var3844 0)
(declare-sort var2783 0)
(declare-sort var2534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var362_checkNotNullParameter/-2060636419 (var3818 String) void)
(declare-fun cast-from-var977-to-var3818 (var977) var3818)
(declare-fun var2783_holdsLock/-145342167 (var3818) Bool)
(declare-fun cast-from-var682-to-var3818 (var682) var3818)
(declare-fun var2534-init () var2534)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2783_currentThread/-1037784612 () var2783)
(declare-fun getName/-942182377 (var2783) String)
(declare-fun append/-1031950772 (String var3818) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2534 var3818) void)
(declare-fun cast-from-String-to-var3818 (String) var3818)
(declare-const null-var682 var682)
(declare-const null-var977 var977)
(declare-const var3844-assertionsEnabled Bool)
(declare-const var2854 var682) ; Statement: r1 := @this: okhttp3.internal.concurrent.TaskRunner 
(assert (not (= var2854 null-var682)))
(declare-const var3754 var977) ; Statement: r0 := @parameter0: okhttp3.internal.concurrent.TaskQueue 
(assert (not (= var3754 null-var977)))
;(assert (var362_checkNotNullParameter/-2060636419 (cast-from-var977-to-var3818 var3754) "taskQueue")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskQueue") 

(declare-const var3754!1 var977)
(declare-const var2135 String)
(define-const var2909 Bool var3844-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.Task getActiveTask$okhttp()>() 
(assert (not (= (ite var2909 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1218 Bool (var2783_holdsLock/-145342167 (cast-from-var682-to-var3818 var2854))) ; Statement: $z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1) 
 ; Statement: if $z2 != 0 goto $r2 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.Task getActiveTask$okhttp()>() 
(assert (not (not (= (ite var1218 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2593 var2534 var2534-init) ; Statement: $r10 = new java.lang.AssertionError 
(define-const var1641 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1641)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1641!1 String)
(assert (= var1641!1 ""))
(assert true)
(define-const var2881 String (append/672562846 var1641!1 "Thread ")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var1641!2 String)
(assert (= var1641!2 (str.++ var1641!1 "Thread ")))
(define-const var2360 var2783 var2783_currentThread/-1037784612) ; Statement: $r12 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3217 String (getName/-942182377 var2360)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var600 String (append/672562846 var2881 var3217)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2881!1 String)
(assert (= var2881!1 (str.++ var2881 var3217)))
(assert true)
(define-const var1456 String (append/672562846 var600 " MUST hold lock on ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var600!1 String)
(assert (= var600!1 (str.++ var600 " MUST hold lock on ")))
(assert true)
(define-const var581 String (append/-1031950772 var1456 (cast-from-var682-to-var3818 var2854))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1456!1 String)
(assert (str.prefixof var1456 var1456!1))
(assert true)
(define-const var3401 String (toString/-2075883882 var581)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2593 (cast-from-String-to-var3818 var3401))) ; Statement: specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r18) 

(declare-const var2593!1 var2534)
(declare-const var3401!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var362_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var977-to-var3818=([okhttp3.internal.concurrent.TaskQueue], java.lang.Object), var2783_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var682-to-var3818=([okhttp3.internal.concurrent.TaskRunner], java.lang.Object), var2534-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2783_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3818=([java.lang.String], java.lang.Object)}
; {var682=okhttp3.internal.concurrent.TaskRunner, var2854=r1, var977=okhttp3.internal.concurrent.TaskQueue, var3754=r0, var362=kotlin.jvm.internal.Intrinsics, var3818=java.lang.Object, var2135="taskQueue", var3844=okhttp3.internal.Util, var2909=$z0, var2783=java.lang.Thread, var1218=$z2, var2534=java.lang.AssertionError, var2593=$r10, var1641=$r11, var2881=$r14, var2360=$r12, var3217=$r13, var600=$r15, var1456=$r16, var581=$r17, var3401=$r18}
; {okhttp3.internal.concurrent.TaskRunner=var682, r1=var2854, okhttp3.internal.concurrent.TaskQueue=var977, r0=var3754, kotlin.jvm.internal.Intrinsics=var362, java.lang.Object=var3818, "taskQueue"=var2135, okhttp3.internal.Util=var3844, $z0=var2909, java.lang.Thread=var2783, $z2=var1218, java.lang.AssertionError=var2534, $r10=var2593, $r11=var1641, $r14=var2881, $r12=var2360, $r13=var3217, $r15=var600, $r16=var1456, $r17=var581, $r18=var3401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.concurrent.TaskRunner;	r0 := @parameter0: okhttp3.internal.concurrent.TaskQueue;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "taskQueue");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r2 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.Task getActiveTask$okhttp()>();	$z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1);	if $z2 != 0 goto $r2 = virtualinvoke r0.<okhttp3.internal.concurrent.TaskQueue: okhttp3.internal.concurrent.Task getActiveTask$okhttp()>();	$r10 = new java.lang.AssertionError;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r12 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r13 = virtualinvoke $r12.<java.lang.Thread: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r18);	throw $r10
;block_num 3