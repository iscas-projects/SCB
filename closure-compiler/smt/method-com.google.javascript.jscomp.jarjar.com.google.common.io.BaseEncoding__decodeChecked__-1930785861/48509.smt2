(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun trimTrailingPadding/-1558420096 (var1277 String) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun maxDecodedSize/-1674025654 (var1277 Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun decodeTo/-64350114 (var1277 (Array Int Int) String) Int)
(declare-fun var1277_extract/1440035893 ((Array Int Int) Int) (Array Int Int))
(declare-const null-var1277 var1277)
(declare-const null-String String)
(declare-const var1617 var1277) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding 
(assert (not (= var1617 null-var1277)))
(declare-const var1425 String) ; Statement: r3 := @parameter0: java.lang.CharSequence 
(assert (not (= var1425 null-String)))
(assert true)
(define-const var2532 String (trimTrailingPadding/-1558420096 var1617 var1425)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r3) 
(define-const var3352 Int (String_length/-667254855 var2532)) ; Statement: $i0 = interfaceinvoke r4.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var281 Int (maxDecodedSize/-1674025654 var1617 var3352)) ; Statement: $i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int maxDecodedSize(int)>($i0) 
(define-const var2244 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[$i1] 
(assert true)
(define-const var615 Int (decodeTo/-64350114 var1617 var2244 var2532)) ; Statement: i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int decodeTo(byte[],java.lang.CharSequence)>(r1, r4) 
(define-const var2113 (Array Int Int) (var1277_extract/1440035893 var2244 var615)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: byte[] extract(byte[],int)>(r1, i2) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {trimTrailingPadding/-1558420096=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, java.lang.CharSequence], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), maxDecodedSize/-1674025654=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, int], int), arr-Int-init=([], byte[]), decodeTo/-64350114=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, byte[], java.lang.CharSequence], int), var1277_extract/1440035893=([byte[], int], byte[])}
; {var1277=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var1617=r0, var1425=r3, var2532=r4, var3352=$i0, var281=$i1, var2244=r1, var615=i2, var2113=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var1277, r0=var1617, r3=var1425, r4=var2532, $i0=var3352, $i1=var281, r1=var2244, i2=var615, $r2=var2113}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding;	r3 := @parameter0: java.lang.CharSequence;	r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r3);	$i0 = interfaceinvoke r4.<java.lang.CharSequence: int length()>();	$i1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int maxDecodedSize(int)>($i0);	r1 = newarray (byte)[$i1];	i2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: int decodeTo(byte[],java.lang.CharSequence)>(r1, r4);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: byte[] extract(byte[],int)>(r1, i2);	return $r2
;block_num 1