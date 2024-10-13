(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1709 0)
(declare-sort var762 0)
(declare-sort var1142 0)
(declare-sort var3844 0)
(declare-sort var547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun openStream/913863501 (var1142) var3844)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun close/-190175943 (var3844) void)
(declare-const null-var1709 var1709)
(declare-const null-String String)
(declare-const null-var1142 var1142)
(declare-const null-Bool Bool)
(declare-const null-var547 var547)
(declare-const var708 var1709) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var708 null-var1709)))
(declare-const var3427 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3427 null-String)))
(declare-const var1876 var1142) ; Statement: r0 := @parameter1: java.net.URL 
(assert (not (= var1876 null-var1142)))
(declare-const var2094 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2094 null-Bool)))
(define-const var3159 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var795 var3844 (openStream/913863501 var1876)) ; Statement: r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>() 
(assert true) ; Non Conditional
(define-const var180 (Array Int Int) arr-Int-init) ; Statement: r21 = newarray (byte)[65536] 
(assert true) ; Non Conditional
(define-const var1036 Int (getLength-Arr-Int-1 var180)) ; Statement: $i4 = lengthof r21 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var560 var547) ; Statement: $r19 := @caughtexception 
(assert (not (= var560 null-var547)))
(assert true) ; Non Conditional
(assert true)
;(assert (close/-190175943 var795)) ; Statement: virtualinvoke r20.<java.io.InputStream: void close()>() 

(declare-const var795!1 var3844)
(assert true) ; Non Conditional
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {openStream/913863501=([java.net.URL], java.io.InputStream), arr-Int-init=([], byte[]), getLength-Arr-Int-1=([byte[]], int), close/-190175943=([java.io.InputStream], void)}
; {var1709=lombok.launch.ShadowClassLoader, var708=r1, var3427=r3, var762=null_type, var1142=java.net.URL, var1876=r0, var2094=z1, var3159=i3, var3844=java.io.InputStream, var795=r20, var180=r21, var1036=$i4, var547=java.lang.Throwable, var560=$r19}
; {lombok.launch.ShadowClassLoader=var1709, r1=var708, r3=var3427, null_type=var762, java.net.URL=var1142, r0=var1876, z1=var2094, i3=var3159, java.io.InputStream=var3844, r20=var795, r21=var180, $i4=var1036, java.lang.Throwable=var547, $r19=var560}
;seq 
;cnt {}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.net.URL;	z1 := @parameter2: boolean;	i3 = 0;	r20 = virtualinvoke r0.<java.net.URL: java.io.InputStream openStream()>();	r21 = newarray (byte)[65536];	$i4 = lengthof r21;	$r19 := @caughtexception;	virtualinvoke r20.<java.io.InputStream: void close()>();	throw $r19
;block_num 7