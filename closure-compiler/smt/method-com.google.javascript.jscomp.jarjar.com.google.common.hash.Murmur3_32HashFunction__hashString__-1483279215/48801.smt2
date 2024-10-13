(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3141 0)
(declare-sort var89 0)
(declare-sort var3597 0)
(declare-sort var3751 0)
(declare-sort var190 0)
(declare-sort var3757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun equals/-507840365 (var89 var3751) Bool)
(declare-fun cast-from-var89-to-var3751 (var89) var3751)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun getBytes/-163691139 (String var89) (Array Int Int))
(declare-fun hashBytes/-770625855 (var3757 (Array Int Int)) var190)
(declare-fun cast-from-var3141-to-var3757 (var3141) var3757)
(declare-const null-var3141 var3141)
(declare-const null-String String)
(declare-const null-var89 var89)
(declare-const var3597-UTF_8 var89)
(declare-const var2903 var3141) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction 
(assert (not (= var2903 null-var3141)))
(declare-const var3530 String) ; Statement: r3 := @parameter0: java.lang.CharSequence 
(assert (not (= var3530 null-String)))
(declare-const var2711 var89) ; Statement: r0 := @parameter1: java.nio.charset.Charset 
(assert (not (= var2711 null-var89)))
(define-const var2413 var89 var3597-UTF_8) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.Charsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var2031 Bool (equals/-507840365 var2413 (cast-from-var89-to-var3751 var2711))) ; Statement: $z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = interfaceinvoke r3.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var2031 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1380 String (String_toString/-1426662429 var3530)) ; Statement: $r4 = interfaceinvoke r3.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var295 (Array Int Int) (getBytes/-163691139 var1380 var2711)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r0) 
(assert true)
(define-const var3959 var190 (hashBytes/-770625855 (cast-from-var3141-to-var3757 var2903) var295)) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hashBytes(byte[])>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {equals/-507840365=([java.nio.charset.Charset, java.lang.Object], boolean), cast-from-var89-to-var3751=([java.nio.charset.Charset], java.lang.Object), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), hashBytes/-770625855=([com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode), cast-from-var3141-to-var3757=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction], com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction)}
; {var3141=com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction, var2903=r2, var3530=r3, var89=java.nio.charset.Charset, var2711=r0, var3597=com.google.javascript.jscomp.jarjar.com.google.common.base.Charsets, var2413=$r1, var3751=java.lang.Object, var2031=$z0, var1380=$r4, var295=$r5, var190=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var3757=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, var3959=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction=var3141, r2=var2903, r3=var3530, java.nio.charset.Charset=var89, r0=var2711, com.google.javascript.jscomp.jarjar.com.google.common.base.Charsets=var3597, $r1=var2413, java.lang.Object=var3751, $z0=var2031, $r4=var1380, $r5=var295, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var190, com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction=var3757, $r6=var3959}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction;	r3 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.nio.charset.Charset;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.Charsets: java.nio.charset.Charset UTF_8>;	$z0 = virtualinvoke $r1.<java.nio.charset.Charset: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = interfaceinvoke r3.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = interfaceinvoke r3.<java.lang.CharSequence: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r0);	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hashBytes(byte[])>($r5);	return $r6
;block_num 2