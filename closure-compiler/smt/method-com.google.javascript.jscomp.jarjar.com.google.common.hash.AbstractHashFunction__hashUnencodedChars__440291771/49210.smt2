(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3790 0)
(declare-sort var394 0)
(declare-sort var1712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun newHasher/2064515616 (var3790 Int) var394)
(declare-fun var394_putUnencodedChars/-1460803973 (var394 String) var394)
(declare-fun var394_hash/-1889255931 (var394) var1712)
(declare-const null-var3790 var3790)
(declare-const null-String String)
(declare-const var2875 var3790) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction 
(assert (not (= var2875 null-var3790)))
(declare-const var599 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var599 null-String)))
(define-const var3449 Int (String_length/-667254855 var599)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var352 Int (* var3449 2)) ; Statement: $i1 = i0 * 2 
(assert true)
(define-const var2675 var394 (newHasher/2064515616 var2875 var352)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher newHasher(int)>($i1) 
(define-const var1409 var394 (var394_putUnencodedChars/-1460803973 var2675 var599)) ; Statement: $r3 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putUnencodedChars(java.lang.CharSequence)>(r0) 
(define-const var3540 var1712 (var394_hash/-1889255931 var1409)) ; Statement: $r4 = interfaceinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hash()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), newHasher/2064515616=([com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, int], com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher), var394_putUnencodedChars/-1460803973=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher, java.lang.CharSequence], com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher), var394_hash/-1889255931=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode)}
; {var3790=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction, var2875=r1, var599=r0, var3449=i0, var352=$i1, var394=com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher, var2675=$r2, var1409=$r3, var1712=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var3540=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction=var3790, r1=var2875, r0=var599, i0=var3449, $i1=var352, com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher=var394, $r2=var2675, $r3=var1409, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var1712, $r4=var3540}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction;	r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i1 = i0 * 2;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher newHasher(int)>($i1);	$r3 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putUnencodedChars(java.lang.CharSequence)>(r0);	$r4 = interfaceinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hash()>();	return $r4
;block_num 1