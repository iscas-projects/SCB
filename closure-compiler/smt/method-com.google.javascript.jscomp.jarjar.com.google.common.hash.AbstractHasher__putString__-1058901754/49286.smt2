(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3894 0)
(declare-sort var2905 0)
(declare-sort var3221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun getBytes/-163691139 (String var2905) (Array Int Int))
(declare-fun putBytes/1269587071 (var3894 (Array Int Int)) var3221)
(declare-const null-var3894 var3894)
(declare-const null-String String)
(declare-const null-var2905 var2905)
(declare-const var3214 var3894) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher 
(assert (not (= var3214 null-var3894)))
(declare-const var388 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var388 null-String)))
(declare-const var1958 var2905) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var1958 null-var2905)))
(define-const var1856 String (String_toString/-1426662429 var388)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var386 (Array Int Int) (getBytes/-163691139 var1856 var1958)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r2) 
(assert true)
(define-const var599 var3221 (putBytes/1269587071 var3214 var386)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putBytes(byte[])>($r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), putBytes/1269587071=([com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher, byte[]], com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher)}
; {var3894=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher, var3214=r0, var388=r1, var2905=java.nio.charset.Charset, var1958=r2, var1856=$r3, var386=$r4, var3221=com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher, var599=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher=var3894, r0=var3214, r1=var388, java.nio.charset.Charset=var2905, r2=var1958, $r3=var1856, $r4=var386, com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher=var3221, $r5=var599}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher;	r1 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.nio.charset.Charset;	$r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>(r2);	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putBytes(byte[])>($r4);	return $r5
;block_num 1