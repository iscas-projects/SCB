(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2834 0)
(declare-sort var1013 0)
(declare-sort var3900 0)
(declare-sort var2985 0)
(declare-sort var3775 0)
(declare-sort var160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2985_checkNotNullParameter/-2060636419 (var3775 String) void)
(declare-fun cast-from-var1013-to-var3775 (var1013) var3775)
(declare-fun cast-from-String-to-var3775 (String) var3775)
(declare-fun state/970643265 (var2834) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var160-init () var160)
(declare-fun toString/-522406933 (var3775) String)
(declare-fun <init>/-1092629202 (var160 String) void)
(declare-const null-var2834 var2834)
(declare-const null-var1013 var1013)
(declare-const null-String String)
(declare-const var733 var2834) ; Statement: r2 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var733 null-var2834)))
(declare-const var3975 var1013) ; Statement: r0 := @parameter0: okhttp3.Headers 
(assert (not (= var3975 null-var1013)))
(declare-const var3105 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3105 null-String)))
;(assert (var2985_checkNotNullParameter/-2060636419 (cast-from-var1013-to-var3775 var3975) "headers")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "headers") 

(declare-const var3975!1 var1013)
(declare-const var2318 String)
;(assert (var2985_checkNotNullParameter/-2060636419 (cast-from-String-to-var3775 var3105) "requestLine")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "requestLine") 

(declare-const var3105!1 String)
(declare-const var2566 String)
(define-const var3845 Int (state/970643265 var733)) ; Statement: $i0 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var3845 0))) ; Cond: $i0 != 0 
(define-const var1135 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r3 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: okio.BufferedSink sink> 
(assert (not (not (= (ite var1135 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var893 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var893)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var893!1 String)
(assert (= var893!1 ""))
(assert true)
(define-const var778 String (append/672562846 var893!1 "state: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var893!2 String)
(assert (= var893!2 (str.++ var893!1 "state: ")))
(define-const var524 Int (state/970643265 var733)) ; Statement: $i1 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var910 String (append/-1001720160 var778 var524)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var778!1 String)
(assert (str.prefixof var778 var778!1))
(assert true)
(define-const var3963 String (toString/-2075883882 var910)) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var209 var160 var160-init) ; Statement: $r15 = new java.lang.IllegalStateException 
(assert true)
(define-const var811 String (toString/-522406933 (cast-from-String-to-var3775 var3963))) ; Statement: $r16 = virtualinvoke $r17.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var209 var811)) ; Statement: specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var209!1 var160)
(declare-const var811!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2985_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var1013-to-var3775=([okhttp3.Headers], java.lang.Object), cast-from-String-to-var3775=([java.lang.String], java.lang.Object), state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var160-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2834=okhttp3.internal.http1.Http1ExchangeCodec, var733=r2, var1013=okhttp3.Headers, var3975=r0, var3105=r1, var3900=null_type, var2985=kotlin.jvm.internal.Intrinsics, var3775=java.lang.Object, var2318="headers", var2566="requestLine", var3845=$i0, var1135=$z0, var893=$r12, var778=$r13, var524=$i1, var910=$r14, var3963=$r17, var160=java.lang.IllegalStateException, var209=$r15, var811=$r16}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2834, r2=var733, okhttp3.Headers=var1013, r0=var3975, r1=var3105, null_type=var3900, kotlin.jvm.internal.Intrinsics=var2985, java.lang.Object=var3775, "headers"=var2318, "requestLine"=var2566, $i0=var3845, $z0=var1135, $r12=var893, $r13=var778, $i1=var524, $r14=var910, $r17=var3963, java.lang.IllegalStateException=var160, $r15=var209, $r16=var811}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	r0 := @parameter0: okhttp3.Headers;	r1 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "headers");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "requestLine");	$i0 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r3 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: okio.BufferedSink sink>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i1 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalStateException;	$r16 = virtualinvoke $r17.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r15
;block_num 4