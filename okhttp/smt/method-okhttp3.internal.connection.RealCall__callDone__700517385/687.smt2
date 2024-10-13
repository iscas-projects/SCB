(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2868 0)
(declare-sort var847 0)
(declare-sort var3453 0)
(declare-sort var2575 0)
(declare-sort var3457 0)
(declare-sort var339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2575_holdsLock/-145342167 (var3457) Bool)
(declare-fun cast-from-var2868-to-var3457 (var2868) var3457)
(declare-fun var339-init () var339)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2575_currentThread/-1037784612 () var2575)
(declare-fun getName/-942182377 (var2575) String)
(declare-fun append/-1031950772 (String var3457) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var339 var3457) void)
(declare-fun cast-from-String-to-var3457 (String) var3457)
(declare-const null-var2868 var2868)
(declare-const null-var847 var847)
(declare-const var3453-assertionsEnabled Bool)
(declare-const var3222 var2868) ; Statement: r0 := @this: okhttp3.internal.connection.RealCall 
(assert (not (= var3222 null-var2868)))
(declare-const var3143 var847) ; Statement: r1 := @parameter0: java.io.IOException 
(assert (not (= var3143 null-var847)))
(define-const var1351 Bool var3453-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r22 = r0.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection> 
(assert (not (= (ite var1351 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3224 Bool (var2575_holdsLock/-145342167 (cast-from-var2868-to-var3457 var3222))) ; Statement: $z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z3 == 0 goto $r22 = r0.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection> 
(assert (not (= (ite var3224 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2180 var339 var339-init) ; Statement: $r23 = new java.lang.AssertionError 
(define-const var1103 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1103)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1103!1 String)
(assert (= var1103!1 ""))
(assert true)
(define-const var3364 String (append/672562846 var1103!1 "Thread ")) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var1103!2 String)
(assert (= var1103!2 (str.++ var1103!1 "Thread ")))
(define-const var1123 var2575 var2575_currentThread/-1037784612) ; Statement: $r25 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3443 String (getName/-942182377 var1123)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var1264 String (append/672562846 var3364 var3443)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3364!1 String)
(assert (= var3364!1 (str.++ var3364 var3443)))
(assert true)
(define-const var1002 String (append/672562846 var1264 " MUST NOT hold lock on ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var1264!1 String)
(assert (= var1264!1 (str.++ var1264 " MUST NOT hold lock on ")))
(assert true)
(define-const var1425 String (append/-1031950772 var1002 (cast-from-var2868-to-var3457 var3222))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1002!1 String)
(assert (str.prefixof var1002 var1002!1))
(assert true)
(define-const var2492 String (toString/-2075883882 var1425)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2180 (cast-from-String-to-var3457 var2492))) ; Statement: specialinvoke $r23.<java.lang.AssertionError: void <init>(java.lang.Object)>($r31) 

(declare-const var2180!1 var339)
(declare-const var2492!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var2575_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var2868-to-var3457=([okhttp3.internal.connection.RealCall], java.lang.Object), var339-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2575_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3457=([java.lang.String], java.lang.Object)}
; {var2868=okhttp3.internal.connection.RealCall, var3222=r0, var847=java.io.IOException, var3143=r1, var3453=okhttp3.internal.Util, var1351=$z0, var2575=java.lang.Thread, var3457=java.lang.Object, var3224=$z3, var339=java.lang.AssertionError, var2180=$r23, var1103=$r24, var3364=$r27, var1123=$r25, var3443=$r26, var1264=$r28, var1002=$r29, var1425=$r30, var2492=$r31}
; {okhttp3.internal.connection.RealCall=var2868, r0=var3222, java.io.IOException=var847, r1=var3143, okhttp3.internal.Util=var3453, $z0=var1351, java.lang.Thread=var2575, java.lang.Object=var3457, $z3=var3224, java.lang.AssertionError=var339, $r23=var2180, $r24=var1103, $r27=var3364, $r25=var1123, $r26=var3443, $r28=var1264, $r29=var1002, $r30=var1425, $r31=var2492}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealCall;	r1 := @parameter0: java.io.IOException;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r22 = r0.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection>;	$z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z3 == 0 goto $r22 = r0.<okhttp3.internal.connection.RealCall: okhttp3.internal.connection.RealConnection connection>;	$r23 = new java.lang.AssertionError;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r25 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r26 = virtualinvoke $r25.<java.lang.Thread: java.lang.String getName()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.AssertionError: void <init>(java.lang.Object)>($r31);	throw $r23
;block_num 3