(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2000 0)
(declare-sort var864 0)
(declare-sort var3914 0)
(declare-sort var374 0)
(declare-sort var925 0)
(declare-sort var3033 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3914_checkNotNullParameter/-2060636419 (var374 String) void)
(declare-fun cast-from-var864-to-var374 (var864) var374)
(declare-fun var3033_holdsLock/-145342167 (var374) Bool)
(declare-fun var2394-init () var2394)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3033_currentThread/-1037784612 () var3033)
(declare-fun getName/-942182377 (var3033) String)
(declare-fun append/-1031950772 (String var374) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2394 var374) void)
(declare-fun cast-from-String-to-var374 (String) var374)
(declare-const null-var2000 var2000)
(declare-const null-var864 var864)
(declare-const var925-assertionsEnabled Bool)
(declare-const var2800 var2000) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall 
(assert (not (= var2800 null-var2000)))
(declare-const var233 var864) ; Statement: r0 := @parameter0: okhttp3.internal.connection.RealConnection 
(assert (not (= var233 null-var864)))
;(assert (var3914_checkNotNullParameter/-2060636419 (cast-from-var864-to-var374 var233) "connection")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "connection") 

(declare-const var233!1 var864)
(declare-const var1608 String)
(define-const var745 Bool var925-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r2 = r1.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection> 
(assert (not (= (ite var745 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1121 Bool (var3033_holdsLock/-145342167 (cast-from-var864-to-var374 var233!1))) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z1 != 0 goto $r2 = r1.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection> 
(assert (not (not (= (ite var1121 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var484 var2394 var2394-init) ; Statement: $r8 = new java.lang.AssertionError 
(define-const var2188 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2188)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2188!1 String)
(assert (= var2188!1 ""))
(assert true)
(define-const var2973 String (append/672562846 var2188!1 "Thread ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2188!2 String)
(assert (= var2188!2 (str.++ var2188!1 "Thread ")))
(define-const var472 var3033 var3033_currentThread/-1037784612) ; Statement: $r10 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var44 String (getName/-942182377 var472)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var356 String (append/672562846 var2973 var44)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2973!1 String)
(assert (= var2973!1 (str.++ var2973 var44)))
(assert true)
(define-const var3401 String (append/672562846 var356 " MUST hold lock on ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ") 
(declare-const var356!1 String)
(assert (= var356!1 (str.++ var356 " MUST hold lock on ")))
(assert true)
(define-const var1257 String (append/-1031950772 var3401 (cast-from-var864-to-var374 var233!1))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3401!1 String)
(assert (str.prefixof var3401 var3401!1))
(assert true)
(define-const var3754 String (toString/-2075883882 var1257)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var484 (cast-from-String-to-var374 var3754))) ; Statement: specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r16) 

(declare-const var484!1 var2394)
(declare-const var3754!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3914_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var864-to-var374=([okhttp3.internal.connection.RealConnection], java.lang.Object), var3033_holdsLock/-145342167=([java.lang.Object], boolean), var2394-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3033_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var374=([java.lang.String], java.lang.Object)}
; {var2000=okhttp3.internal.connection.RealCall, var2800=r1, var864=okhttp3.internal.connection.RealConnection, var233=r0, var3914=kotlin.jvm.internal.Intrinsics, var374=java.lang.Object, var1608="connection", var925=okhttp3.internal.Util, var745=$z0, var3033=java.lang.Thread, var1121=$z1, var2394=java.lang.AssertionError, var484=$r8, var2188=$r9, var2973=$r12, var472=$r10, var44=$r11, var356=$r13, var3401=$r14, var1257=$r15, var3754=$r16}
; {okhttp3.internal.connection.RealCall=var2000, r1=var2800, okhttp3.internal.connection.RealConnection=var864, r0=var233, kotlin.jvm.internal.Intrinsics=var3914, java.lang.Object=var374, "connection"=var1608, okhttp3.internal.Util=var925, $z0=var745, java.lang.Thread=var3033, $z1=var1121, java.lang.AssertionError=var2394, $r8=var484, $r9=var2188, $r12=var2973, $r10=var472, $r11=var44, $r13=var356, $r14=var3401, $r15=var1257, $r16=var3754}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealCall;	r0 := @parameter0: okhttp3.internal.connection.RealConnection;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "connection");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r2 = r1.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection>;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z1 != 0 goto $r2 = r1.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection>;	$r8 = new java.lang.AssertionError;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r10 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r11 = virtualinvoke $r10.<java.lang.Thread: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST hold lock on ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.AssertionError: void <init>(java.lang.Object)>($r16);	throw $r8
;block_num 3