(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3698 0)
(declare-sort var359 0)
(declare-sort var2521 0)
(declare-sort var2035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun getBytes/-163691139 (String var359) (Array Int Int))
(declare-fun hashBytes/-770625855 (var2035 (Array Int Int)) var2521)
(declare-fun cast-from-var3698-to-var2035 (var3698) var2035)
(declare-const null-var3698 var3698)
(declare-const null-String String)
(declare-const null-var359 var359)
(declare-const var2343 var3698) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction 
(assert (not (= var2343 null-var3698)))
(declare-const var1226 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var1226 null-String)))
(declare-const var2383 var359) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var2383 null-var359)))
(define-const var3853 String (String_toString/-1426662429 var1226)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var878 (Array Int Int) (getBytes/-163691139 var3853 var2383)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r2) 
(assert true)
(define-const var778 var2521 (hashBytes/-770625855 (cast-from-var3698-to-var2035 var2343) var878)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hashBytes(byte[])>($r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), hashBytes/-770625855=([com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode), cast-from-var3698-to-var2035=([com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction], com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction)}
; {var3698=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction, var2343=r0, var1226=r1, var359=java.nio.charset.Charset, var2383=r2, var3853=$r3, var878=$r4, var2521=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var2035=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, var778=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction=var3698, r0=var2343, r1=var1226, java.nio.charset.Charset=var359, r2=var2383, $r3=var3853, $r4=var878, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var2521, com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction=var2035, $r5=var778}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction;	r1 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.nio.charset.Charset;	$r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r2);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractNonStreamingHashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hashBytes(byte[])>($r4);	return $r5
;block_num 1