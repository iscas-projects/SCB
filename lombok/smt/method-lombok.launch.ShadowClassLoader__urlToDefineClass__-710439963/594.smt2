(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2519 0)
(declare-sort var382 0)
(declare-sort var999 0)
(declare-sort var533 0)
(declare-sort var2087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var999) var533)
(declare-fun close/-190175943 (var533) void)
(declare-const null-var2519 var2519)
(declare-const null-String String)
(declare-const null-var999 var999)
(declare-const null-Bool Bool)
(declare-const null-var2087 var2087)
(declare-const var1605 var2519) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1605 null-var2519)))
(declare-const var1388 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1388 null-String)))
(declare-const var600 var999) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var600 null-var999)))
(declare-const var3224 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3224 null-Bool)))
(define-const var1937 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2508 var533 (openStream/913863501 var600)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1955 var2087) ; Statement: $r19 := @caughtexception 
(assert (not (= var1955 null-var2087)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var2508)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var2508!1 var533)
(assert true) ; Non Conditional
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), close/-190175943=([java.io.InputStream], void)}
; {var2519=lombok.launch.ShadowClassLoader, var1605=r1, var1388=r3, var382=null_type, var999=java.net.URL, var600=r0, var3224=z1, var1937=i3, var533=java.io.InputStream, var2508=r20, var2087=java.lang.Throwable, var1955=$r19}
; {lombok.launch.ShadowClassLoader=var2519, r1=var1605, r3=var1388, null_type=var382, java.net.URL=var999, r0=var600, z1=var3224, i3=var1937, java.io.InputStream=var533, r20=var2508, java.lang.Throwable=var2087, $r19=var1955}
;seq 
;cnt {}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	throw $r19
;block_num 5