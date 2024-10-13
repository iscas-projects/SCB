(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3243 0)
(declare-sort var2916 0)
(declare-sort var2653 0)
(declare-sort var2814 0)
(declare-sort var666 0)
(declare-sort var1076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2814_checkNotNullParameter/-2060636419 (var666 String) void)
(declare-fun cast-from-var2916-to-var666 (var2916) var666)
(declare-fun cast-from-String-to-var666 (String) var666)
(declare-fun state/970643265 (var3243) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1076-init () var1076)
(declare-fun toString/-522406933 (var666) String)
(declare-fun <init>/-1092629202 (var1076 String) void)
(declare-const null-var3243 var3243)
(declare-const null-var2916 var2916)
(declare-const null-String String)
(declare-const var793 var3243) ; Statement: r2 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var793 null-var3243)))
(declare-const var946 var2916) ; Statement: r0 := @parameter0: okhttp3.Headers 
(assert (not (= var946 null-var2916)))
(declare-const var3536 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3536 null-String)))
;(assert (var2814_checkNotNullParameter/-2060636419 (cast-from-var2916-to-var666 var946) "headers")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "headers") 

(declare-const var946!1 var2916)
(declare-const var120 String)
;(assert (var2814_checkNotNullParameter/-2060636419 (cast-from-String-to-var666 var3536) "requestLine")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "requestLine") 

(declare-const var3536!1 String)
(declare-const var1233 String)
(define-const var2632 Int (state/970643265 var793)) ; Statement: $i0 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var2632 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3602 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r3 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: okio.BufferedSink sink> 
(assert (not (not (= (ite var3602 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var717 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var717)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var717!1 String)
(assert (= var717!1 ""))
(assert true)
(define-const var342 String (append/672562846 var717!1 "state: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ") 
(declare-const var717!2 String)
(assert (= var717!2 (str.++ var717!1 "state: ")))
(define-const var3464 Int (state/970643265 var793)) ; Statement: $i1 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
(assert true)
(define-const var2183 String (append/-1001720160 var342 var3464)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var342!1 String)
(assert (str.prefixof var342 var342!1))
(assert true)
(define-const var2081 String (toString/-2075883882 var2183)) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var360 var1076 var1076-init) ; Statement: $r15 = new java.lang.IllegalStateException 
(assert true)
(define-const var865 String (toString/-522406933 (cast-from-String-to-var666 var2081))) ; Statement: $r16 = virtualinvoke $r17.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var360 var865)) ; Statement: specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var360!1 var1076)
(declare-const var865!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2814_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2916-to-var666=([okhttp3.Headers], java.lang.Object), cast-from-String-to-var666=([java.lang.String], java.lang.Object), state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1076-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3243=okhttp3.internal.http1.Http1ExchangeCodec, var793=r2, var2916=okhttp3.Headers, var946=r0, var3536=r1, var2653=null_type, var2814=kotlin.jvm.internal.Intrinsics, var666=java.lang.Object, var120="headers", var1233="requestLine", var2632=$i0, var3602=$z0, var717=$r12, var342=$r13, var3464=$i1, var2183=$r14, var2081=$r17, var1076=java.lang.IllegalStateException, var360=$r15, var865=$r16}
; {okhttp3.internal.http1.Http1ExchangeCodec=var3243, r2=var793, okhttp3.Headers=var2916, r0=var946, r1=var3536, null_type=var2653, kotlin.jvm.internal.Intrinsics=var2814, java.lang.Object=var666, "headers"=var120, "requestLine"=var1233, $i0=var2632, $z0=var3602, $r12=var717, $r13=var342, $i1=var3464, $r14=var2183, $r17=var2081, java.lang.IllegalStateException=var1076, $r15=var360, $r16=var865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	r0 := @parameter0: okhttp3.Headers;	r1 := @parameter1: java.lang.String;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "headers");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "requestLine");	$i0 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r3 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: okio.BufferedSink sink>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("state: ");	$i1 = r2.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.IllegalStateException;	$r16 = virtualinvoke $r17.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r15
;block_num 4