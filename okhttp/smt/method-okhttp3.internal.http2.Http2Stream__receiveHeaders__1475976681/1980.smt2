(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var669 0)
(declare-sort var1315 0)
(declare-sort var2203 0)
(declare-sort var3477 0)
(declare-sort var1897 0)
(declare-sort var1561 0)
(declare-sort var2009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2203_checkNotNullParameter/-2060636419 (var3477 String) void)
(declare-fun cast-from-var1315-to-var3477 (var1315) var3477)
(declare-fun var1561_holdsLock/-145342167 (var3477) Bool)
(declare-fun cast-from-var669-to-var3477 (var669) var3477)
(declare-fun var2009-init () var2009)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1561_currentThread/-1037784612 () var1561)
(declare-fun getName/-942182377 (var1561) String)
(declare-fun append/-1031950772 (String var3477) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2009 var3477) void)
(declare-fun cast-from-String-to-var3477 (String) var3477)
(declare-const null-var669 var669)
(declare-const null-var1315 var1315)
(declare-const null-Bool Bool)
(declare-const var1897-assertionsEnabled Bool)
(declare-const var2804 var669) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Stream 
(assert (not (= var2804 null-var669)))
(declare-const var2560 var1315) ; Statement: r0 := @parameter0: okhttp3.Headers 
(assert (not (= var2560 null-var1315)))
(declare-const var1696 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var1696 null-Bool)))
;(assert (var2203_checkNotNullParameter/-2060636419 (cast-from-var1315-to-var3477 var2560) "headers")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "headers") 

(declare-const var2560!1 var1315)
(declare-const var361 String)
(define-const var85 Bool var1897-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto entermonitor r1 
(assert (not (= (ite var85 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3448 Bool (var1561_holdsLock/-145342167 (cast-from-var669-to-var3477 var2804))) ; Statement: $z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1) 
 ; Statement: if $z4 == 0 goto entermonitor r1 
(assert (not (= (ite var3448 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1862 var2009 var2009-init) ; Statement: $r9 = new java.lang.AssertionError 
(define-const var3807 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3807)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3807!1 String)
(assert (= var3807!1 ""))
(assert true)
(define-const var2412 String (append/672562846 var3807!1 "Thread ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3807!2 String)
(assert (= var3807!2 (str.++ var3807!1 "Thread ")))
(define-const var3199 var1561 var1561_currentThread/-1037784612) ; Statement: $r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3988 String (getName/-942182377 var3199)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var3572 String (append/672562846 var2412 var3988)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2412!1 String)
(assert (= var2412!1 (str.++ var2412 var3988)))
(assert true)
(define-const var844 String (append/672562846 var3572 " MUST NOT hold lock on ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var3572!1 String)
(assert (= var3572!1 (str.++ var3572 " MUST NOT hold lock on ")))
(assert true)
(define-const var303 String (append/-1031950772 var844 (cast-from-var669-to-var3477 var2804))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var844!1 String)
(assert (str.prefixof var844 var844!1))
(assert true)
(define-const var1031 String (toString/-2075883882 var303)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1862 (cast-from-String-to-var3477 var1031))) ; Statement: specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17) 

(declare-const var1862!1 var2009)
(declare-const var1031!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2203_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1315-to-var3477=([okhttp3.Headers], java.lang.Object), var1561_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var669-to-var3477=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var2009-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1561_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3477=([java.lang.String], java.lang.Object)}
; {var669=okhttp3.internal.http2.Http2Stream, var2804=r1, var1315=okhttp3.Headers, var2560=r0, var1696=z2, var2203=kotlin.jvm.internal.Intrinsics, var3477=java.lang.Object, var361="headers", var1897=okhttp3.internal.Util, var85=$z0, var1561=java.lang.Thread, var3448=$z4, var2009=java.lang.AssertionError, var1862=$r9, var3807=$r10, var2412=$r13, var3199=$r11, var3988=$r12, var3572=$r14, var844=$r15, var303=$r16, var1031=$r17}
; {okhttp3.internal.http2.Http2Stream=var669, r1=var2804, okhttp3.Headers=var1315, r0=var2560, z2=var1696, kotlin.jvm.internal.Intrinsics=var2203, java.lang.Object=var3477, "headers"=var361, okhttp3.internal.Util=var1897, $z0=var85, java.lang.Thread=var1561, $z4=var3448, java.lang.AssertionError=var2009, $r9=var1862, $r10=var3807, $r13=var2412, $r11=var3199, $r12=var3988, $r14=var3572, $r15=var844, $r16=var303, $r17=var1031}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Stream;	r0 := @parameter0: okhttp3.Headers;	z2 := @parameter1: boolean;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "headers");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto entermonitor r1;	$z4 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r1);	if $z4 == 0 goto entermonitor r1;	$r9 = new java.lang.AssertionError;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r11 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r12 = virtualinvoke $r11.<java.lang.Thread: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17);	throw $r9
;block_num 3