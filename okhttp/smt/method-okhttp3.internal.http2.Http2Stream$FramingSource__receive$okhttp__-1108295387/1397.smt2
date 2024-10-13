(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3981 0)
(declare-sort var1698 0)
(declare-sort var3523 0)
(declare-sort var724 0)
(declare-sort var439 0)
(declare-sort var3234 0)
(declare-sort var3066 0)
(declare-sort var1366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3523_checkNotNullParameter/-2060636419 (var724 String) void)
(declare-fun cast-from-var1698-to-var724 (var1698) var724)
(declare-fun this$0/-844367787 (var3981) var439)
(declare-fun var3066_holdsLock/-145342167 (var724) Bool)
(declare-fun cast-from-var439-to-var724 (var439) var724)
(declare-fun var1366-init () var1366)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3066_currentThread/-1037784612 () var3066)
(declare-fun getName/-942182377 (var3066) String)
(declare-fun append/-1031950772 (String var724) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1366 var724) void)
(declare-fun cast-from-String-to-var724 (String) var724)
(declare-const null-var3981 var3981)
(declare-const null-var1698 var1698)
(declare-const null-Int Int)
(declare-const var3234-assertionsEnabled Bool)
(declare-const var886 var3981) ; Statement: r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSource 
(assert (not (= var886 null-var3981)))
(declare-const var470 var1698) ; Statement: r0 := @parameter0: okio.BufferedSource 
(assert (not (= var470 null-var1698)))
(declare-const var1530 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1530 null-Int)))
;(assert (var3523_checkNotNullParameter/-2060636419 (cast-from-var1698-to-var724 var470) "source")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "source") 

(declare-const var470!1 var1698)
(declare-const var280 String)
(define-const var2479 var439 (this$0/-844367787 var886)) ; Statement: $r2 = r1.<okhttp3.internal.http2.Http2Stream$FramingSource: okhttp3.internal.http2.Http2Stream this$0> 
(define-const var2556 Bool var3234-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto l9 = l0 
(assert (not (= (ite var2556 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2622 Bool (var3066_holdsLock/-145342167 (cast-from-var439-to-var724 var2479))) ; Statement: $z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r2) 
 ; Statement: if $z2 == 0 goto l9 = l0 
(assert (not (= (ite var2622 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2948 var1366 var1366-init) ; Statement: $r31 = new java.lang.AssertionError 
(define-const var3010 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3010)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3010!1 String)
(assert (= var3010!1 ""))
(assert true)
(define-const var409 String (append/672562846 var3010!1 "Thread ")) ; Statement: $r21 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var3010!2 String)
(assert (= var3010!2 (str.++ var3010!1 "Thread ")))
(define-const var2141 var3066 var3066_currentThread/-1037784612) ; Statement: $r19 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3662 String (getName/-942182377 var2141)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var3718 String (append/672562846 var409 var3662)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var409!1 String)
(assert (= var409!1 (str.++ var409 var3662)))
(assert true)
(define-const var217 String (append/672562846 var3718 " MUST NOT hold lock on ")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var3718!1 String)
(assert (= var3718!1 (str.++ var3718 " MUST NOT hold lock on ")))
(assert true)
(define-const var3219 String (append/-1031950772 var217 (cast-from-var439-to-var724 var2479))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var217!1 String)
(assert (str.prefixof var217 var217!1))
(assert true)
(define-const var2133 String (toString/-2075883882 var3219)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2948 (cast-from-String-to-var724 var2133))) ; Statement: specialinvoke $r31.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25) 

(declare-const var2948!1 var1366)
(declare-const var2133!1 String)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var3523_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1698-to-var724=([okio.BufferedSource], java.lang.Object), this$0/-844367787=([okhttp3.internal.http2.Http2Stream$FramingSource], okhttp3.internal.http2.Http2Stream), var3066_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var439-to-var724=([okhttp3.internal.http2.Http2Stream], java.lang.Object), var1366-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3066_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var724=([java.lang.String], java.lang.Object)}
; {var3981=okhttp3.internal.http2.Http2Stream$FramingSource, var886=r1, var1698=okio.BufferedSource, var470=r0, var1530=l0, var3523=kotlin.jvm.internal.Intrinsics, var724=java.lang.Object, var280="source", var439=okhttp3.internal.http2.Http2Stream, var2479=$r2, var3234=okhttp3.internal.Util, var2556=$z0, var3066=java.lang.Thread, var2622=$z2, var1366=java.lang.AssertionError, var2948=$r31, var3010=$r30, var409=$r21, var2141=$r19, var3662=$r20, var3718=$r22, var217=$r23, var3219=$r24, var2133=$r25}
; {okhttp3.internal.http2.Http2Stream$FramingSource=var3981, r1=var886, okio.BufferedSource=var1698, r0=var470, l0=var1530, kotlin.jvm.internal.Intrinsics=var3523, java.lang.Object=var724, "source"=var280, okhttp3.internal.http2.Http2Stream=var439, $r2=var2479, okhttp3.internal.Util=var3234, $z0=var2556, java.lang.Thread=var3066, $z2=var2622, java.lang.AssertionError=var1366, $r31=var2948, $r30=var3010, $r21=var409, $r19=var2141, $r20=var3662, $r22=var3718, $r23=var217, $r24=var3219, $r25=var2133}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Http2Stream$FramingSource;	r0 := @parameter0: okio.BufferedSource;	l0 := @parameter1: long;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "source");	$r2 = r1.<okhttp3.internal.http2.Http2Stream$FramingSource: okhttp3.internal.http2.Http2Stream this$0>;	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto l9 = l0;	$z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r2);	if $z2 == 0 goto l9 = l0;	$r31 = new java.lang.AssertionError;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r19 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r20 = virtualinvoke $r19.<java.lang.Thread: java.lang.String getName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<java.lang.AssertionError: void <init>(java.lang.Object)>($r25);	throw $r31
;block_num 3