(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3841 0)
(declare-sort var2561 0)
(declare-sort var1428 0)
(declare-sort var1021 0)
(declare-sort var2460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1428_holdsLock/-145342167 (var1021) Bool)
(declare-fun cast-from-var3841-to-var1021 (var3841) var1021)
(declare-fun var2460-init () var2460)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1428_currentThread/-1037784612 () var1428)
(declare-fun getName/-942182377 (var1428) String)
(declare-fun append/-1031950772 (String var1021) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2460 var1021) void)
(declare-fun cast-from-String-to-var1021 (String) var1021)
(declare-const null-var3841 var3841)
(declare-const var2561-assertionsEnabled Bool)
(declare-const var3932 var3841) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Stream 
(assert (not (= var3932 null-var3841)))
(define-const var3809 Bool var2561-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto entermonitor r0 
(assert (not (= (ite var3809 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2976 Bool (var1428_holdsLock/-145342167 (cast-from-var3841-to-var1021 var3932))) ; Statement: $z5 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z5 == 0 goto entermonitor r0 
(assert (not (= (ite var2976 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1184 var2460 var2460-init) ; Statement: $r7 = new java.lang.AssertionError 
(define-const var2646 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2646)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2646!1 String)
(assert (= var2646!1 ""))
(assert true)
(define-const var1438 String (append/672562846 var2646!1 "Thread ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2646!2 String)
(assert (= var2646!2 (str.++ var2646!1 "Thread ")))
(define-const var3903 var1428 var1428_currentThread/-1037784612) ; Statement: $r9 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var672 String (getName/-942182377 var3903)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var696 String (append/672562846 var1438 var672)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1438!1 String)
(assert (= var1438!1 (str.++ var1438 var672)))
(assert true)
(define-const var2280 String (append/672562846 var696 " MUST NOT hold lock on ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var696!1 String)
(assert (= var696!1 (str.++ var696 " MUST NOT hold lock on ")))
(assert true)
(define-const var2988 String (append/-1031950772 var2280 (cast-from-var3841-to-var1021 var3932))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2280!1 String)
(assert (str.prefixof var2280 var2280!1))
(assert true)
(define-const var857 String (toString/-2075883882 var2988)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1184 (cast-from-String-to-var1021 var857))) ; Statement: specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.Object)>($r15) 

(declare-const var1184!1 var2460)
(declare-const var857!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1428_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3841-to-var1021=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var2460-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1428_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1021=([java.lang.String], java.lang.Object)}
; {var3841=okhttp3.internal.http2.Http2Stream, var3932=r0, var2561=okhttp3.internal.Util, var3809=$z0, var1428=java.lang.Thread, var1021=java.lang.Object, var2976=$z5, var2460=java.lang.AssertionError, var1184=$r7, var2646=$r8, var1438=$r11, var3903=$r9, var672=$r10, var696=$r12, var2280=$r13, var2988=$r14, var857=$r15}
; {okhttp3.internal.http2.Http2Stream=var3841, r0=var3932, okhttp3.internal.Util=var2561, $z0=var3809, java.lang.Thread=var1428, java.lang.Object=var1021, $z5=var2976, java.lang.AssertionError=var2460, $r7=var1184, $r8=var2646, $r11=var1438, $r9=var3903, $r10=var672, $r12=var696, $r13=var2280, $r14=var2988, $r15=var857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Stream;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto entermonitor r0;	$z5 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z5 == 0 goto entermonitor r0;	$r7 = new java.lang.AssertionError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r9 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r10 = virtualinvoke $r9.<java.lang.Thread: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.Object)>($r15);	throw $r7
;block_num 3