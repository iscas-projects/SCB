(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var913 0)
(declare-sort var2549 0)
(declare-sort var2928 0)
(declare-sort var1436 0)
(declare-sort var3711 0)
(declare-sort var91 0)
(declare-sort var802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2928_checkNotNullParameter/-2060636419 (var1436 String) void)
(declare-fun cast-from-var2549-to-var1436 (var2549) var1436)
(declare-fun var91_holdsLock/-145342167 (var1436) Bool)
(declare-fun cast-from-var913-to-var1436 (var913) var1436)
(declare-fun var802-init () var802)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var91_currentThread/-1037784612 () var91)
(declare-fun getName/-942182377 (var91) String)
(declare-fun append/-1031950772 (String var1436) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var802 var1436) void)
(declare-fun cast-from-String-to-var1436 (String) var1436)
(declare-const null-var913 var913)
(declare-const null-var2549 var2549)
(declare-const null-Bool Bool)
(declare-const var3711-assertionsEnabled Bool)
(declare-const var581 var913) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Stream 
(assert (not (= var581 null-var913)))
(declare-const var2569 var2549) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var2569 null-var2549)))
(declare-const var3433 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var3433 null-Bool)))
(declare-const var403 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var403 null-Bool)))
;(assert (var2928_checkNotNullParameter/-2060636419 (cast-from-var2549-to-var1436 var2569) "responseHeaders")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "responseHeaders") 

(declare-const var2569!1 var2549)
(declare-const var3318 String)
(define-const var1070 Bool var3711-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $z4 = z1 
(assert (not (= (ite var1070 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3666 Bool (var91_holdsLock/-145342167 (cast-from-var913-to-var1436 var581))) ; Statement: $z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1) 
 ; Statement: if $z3 == 0 goto $z4 = z1 
(assert (not (= (ite var3666 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var3403 var802 var802-init) ; Statement: $r22 = new java.lang.AssertionError 
(define-const var1969 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1969)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1969!1 String)
(assert (= var1969!1 ""))
(assert true)
(define-const var2676 String (append/672562846 var1969!1 "Thread ")) ; Statement: $r13 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var1969!2 String)
(assert (= var1969!2 (str.++ var1969!1 "Thread ")))
(define-const var1523 var91 var91_currentThread/-1037784612) ; Statement: $r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1361 String (getName/-942182377 var1523)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var896 String (append/672562846 var2676 var1361)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2676!1 String)
(assert (= var2676!1 (str.++ var2676 var1361)))
(assert true)
(define-const var3588 String (append/672562846 var896 " MUST NOT hold lock on ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var896!1 String)
(assert (= var896!1 (str.++ var896 " MUST NOT hold lock on ")))
(assert true)
(define-const var3313 String (append/-1031950772 var3588 (cast-from-var913-to-var1436 var581))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3588!1 String)
(assert (str.prefixof var3588 var3588!1))
(assert true)
(define-const var2912 String (toString/-2075883882 var3313)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3403 (cast-from-String-to-var1436 var2912))) ; Statement: specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17) 

(declare-const var3403!1 var802)
(declare-const var2912!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var2928_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2549-to-var1436=([java.util.List], java.lang.Object), var91_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var913-to-var1436=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var802-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var91_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1436=([java.lang.String], java.lang.Object)}
; {var913=okhttp3.internal.http2.Http2Stream, var581=r1, var2549=java.util.List, var2569=r0, var3433=z2, var403=z1, var2928=kotlin.jvm.internal.Intrinsics, var1436=java.lang.Object, var3318="responseHeaders", var3711=okhttp3.internal.Util, var1070=$z0, var91=java.lang.Thread, var3666=$z3, var802=java.lang.AssertionError, var3403=$r22, var1969=$r21, var2676=$r13, var1523=$r11, var1361=$r12, var896=$r14, var3588=$r15, var3313=$r16, var2912=$r17}
; {okhttp3.internal.http2.Http2Stream=var913, r1=var581, java.util.List=var2549, r0=var2569, z2=var3433, z1=var403, kotlin.jvm.internal.Intrinsics=var2928, java.lang.Object=var1436, "responseHeaders"=var3318, okhttp3.internal.Util=var3711, $z0=var1070, java.lang.Thread=var91, $z3=var3666, java.lang.AssertionError=var802, $r22=var3403, $r21=var1969, $r13=var2676, $r11=var1523, $r12=var1361, $r14=var896, $r15=var3588, $r16=var3313, $r17=var2912}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Stream;	r0 := @parameter0: java.util.List;	z2 := @parameter1: boolean;	z1 := @parameter2: boolean;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "responseHeaders");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $z4 = z1;	$z3 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1);	if $z3 == 0 goto $z4 = z1;	$r22 = new java.lang.AssertionError;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17);	throw $r22
;block_num 3