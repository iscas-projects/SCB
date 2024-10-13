(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var333 0)
(declare-sort var849 0)
(declare-sort var3616 0)
(declare-sort var2442 0)
(declare-sort var3949 0)
(declare-sort var2290 0)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3949_holdsLock/-145342167 (var2290) Bool)
(declare-fun cast-from-var333-to-var2290 (var333) var2290)
(declare-fun var213-init () var213)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3949_currentThread/-1037784612 () var3949)
(declare-fun getName/-942182377 (var3949) String)
(declare-fun append/-1031950772 (String var2290) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var213 var2290) void)
(declare-fun cast-from-String-to-var2290 (String) var2290)
(declare-const null-var333 var333)
(declare-const null-var849 var849)
(declare-const null-var3616 var3616)
(declare-const var2442-assertionsEnabled Bool)
(declare-const var2117 var333) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Stream 
(assert (not (= var2117 null-var333)))
(declare-const var1899 var849) ; Statement: r2 := @parameter0: okhttp3.internal.http2.ErrorCode 
(assert (not (= var1899 null-var849)))
(declare-const var874 var3616) ; Statement: r3 := @parameter1: java.io.IOException 
(assert (not (= var874 null-var3616)))
(define-const var1280 Bool var2442-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto entermonitor r0 
(assert (not (= (ite var1280 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3434 Bool (var3949_holdsLock/-145342167 (cast-from-var333-to-var2290 var2117))) ; Statement: $z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0) 
 ; Statement: if $z3 == 0 goto entermonitor r0 
(assert (not (= (ite var3434 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var425 var213 var213-init) ; Statement: $r9 = new java.lang.AssertionError 
(define-const var1204 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1204)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1204!1 String)
(assert (= var1204!1 ""))
(assert true)
(define-const var1931 String (append/672562846 var1204!1 "Thread ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var1204!2 String)
(assert (= var1204!2 (str.++ var1204!1 "Thread ")))
(define-const var3494 var3949 var3949_currentThread/-1037784612) ; Statement: $r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3368 String (getName/-942182377 var3494)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var914 String (append/672562846 var1931 var3368)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1931!1 String)
(assert (= var1931!1 (str.++ var1931 var3368)))
(assert true)
(define-const var1328 String (append/672562846 var914 " MUST NOT hold lock on ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var914!1 String)
(assert (= var914!1 (str.++ var914 " MUST NOT hold lock on ")))
(assert true)
(define-const var2069 String (append/-1031950772 var1328 (cast-from-var333-to-var2290 var2117))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1328!1 String)
(assert (str.prefixof var1328 var1328!1))
(assert true)
(define-const var1887 String (toString/-2075883882 var2069)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var425 (cast-from-String-to-var2290 var1887))) ; Statement: specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17) 

(declare-const var425!1 var213)
(declare-const var1887!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3949_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var333-to-var2290=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var213-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3949_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2290=([java.lang.String], java.lang.Object)}
; {var333=okhttp3.internal.http2.Http2Stream, var2117=r0, var849=okhttp3.internal.http2.ErrorCode, var1899=r2, var3616=java.io.IOException, var874=r3, var2442=okhttp3.internal.Util, var1280=$z0, var3949=java.lang.Thread, var2290=java.lang.Object, var3434=$z3, var213=java.lang.AssertionError, var425=$r9, var1204=$r10, var1931=$r13, var3494=$r11, var3368=$r12, var914=$r14, var1328=$r15, var2069=$r16, var1887=$r17}
; {okhttp3.internal.http2.Http2Stream=var333, r0=var2117, okhttp3.internal.http2.ErrorCode=var849, r2=var1899, java.io.IOException=var3616, r3=var874, okhttp3.internal.Util=var2442, $z0=var1280, java.lang.Thread=var3949, java.lang.Object=var2290, $z3=var3434, java.lang.AssertionError=var213, $r9=var425, $r10=var1204, $r13=var1931, $r11=var3494, $r12=var3368, $r14=var914, $r15=var1328, $r16=var2069, $r17=var1887}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Stream;	r2 := @parameter0: okhttp3.internal.http2.ErrorCode;	r3 := @parameter1: java.io.IOException;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto entermonitor r0;	$z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r0);	if $z3 == 0 goto entermonitor r0;	$r9 = new java.lang.AssertionError;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17);	throw $r9
;block_num 3