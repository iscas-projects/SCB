(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1096 0)
(declare-sort var1361 0)
(declare-sort var1468 0)
(declare-sort var3496 0)
(declare-sort var572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var1468) var3496)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun close/-190175943 (var3496) void)
(declare-const null-var1096 var1096)
(declare-const null-String String)
(declare-const null-var1468 var1468)
(declare-const null-Bool Bool)
(declare-const null-var572 var572)
(declare-const var2550 var1096) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2550 null-var1096)))
(declare-const var2606 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2606 null-String)))
(declare-const var1022 var1468) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var1022 null-var1468)))
(declare-const var1660 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1660 null-Bool)))
(define-const var92 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2799 var3496 (openStream/913863501 var1022)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var871 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2553 var572) ; Statement: $r19 := @caughtexception 
(assert (not (= var2553 null-var572)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var2799)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var2799!1 var3496)
(assert true) ; Non Conditional
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), close/-190175943=([java.io.InputStream], void)}
; {var1096=lombok.launch.ShadowClassLoader, var2550=r1, var2606=r3, var1361=null_type, var1468=java.net.URL, var1022=r0, var1660=z1, var92=i3, var3496=java.io.InputStream, var2799=r20, var871=r21, var572=java.lang.Throwable, var2553=$r19}
; {lombok.launch.ShadowClassLoader=var1096, r1=var2550, r3=var2606, null_type=var1361, java.net.URL=var1468, r0=var1022, z1=var1660, i3=var92, java.io.InputStream=var3496, r20=var2799, r21=var871, java.lang.Throwable=var572, $r19=var2553}
;seq 
;cnt {}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	throw $r19
;block_num 6