(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3381 0)
(declare-sort var2090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seed/1055742757 (var3381) Int)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var3381_fmix/-1948816683 (Int Int) var2090)
(declare-const null-var3381 var3381)
(declare-const null-String String)
(declare-const var1947 var3381) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction 
(assert (not (= var1947 null-var3381)))
(declare-const var343 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var343 null-String)))
(define-const var1921 Int (seed/1055742757 var1947)) ; Statement: i11 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: int seed> 
(define-const var3048 Int 1) ; Statement: i12 = 1 
(assert true) ; Non Conditional
(define-const var2288 Int (String_length/-667254855 var343)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if i12 >= $i0 goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (>= var3048 var2288)) ; Cond: i12 >= $i0 
(define-const var1703 Int (String_length/-667254855 var343)) ; Statement: $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var2711 Int (bv2nat (bvand ((_ int2bv 64) var1703) ((_ int2bv 64) 1)))) ; Statement: $i2 = $i1 & 1 
 ; Statement: if $i2 != 1 goto $i3 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (not (= var2711 1))) ; Cond: $i2 != 1 
(define-const var2077 Int (String_length/-667254855 var343)) ; Statement: $i3 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var2489 Int (* 2 var2077)) ; Statement: $i4 = 2 * $i3 
(define-const var3396 var2090 (var3381_fmix/-1948816683 var1921 var2489)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fmix(int,int)>(i11, $i4) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {seed/1055742757=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction], int), String_length/-667254855=([java.lang.CharSequence], int), var3381_fmix/-1948816683=([int, int], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode)}
; {var3381=com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction, var1947=r0, var343=r1, var1921=i11, var3048=i12, var2288=$i0, var1703=$i1, var2711=$i2, var2077=$i3, var2489=$i4, var2090=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var3396=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction=var3381, r0=var1947, r1=var343, i11=var1921, i12=var3048, $i0=var2288, $i1=var1703, $i2=var2711, $i3=var2077, $i4=var2489, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var2090, $r2=var3396}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction;	r1 := @parameter0: java.lang.CharSequence;	i11 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: int seed>;	i12 = 1;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	if i12 >= $i0 goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i2 = $i1 & 1;	if $i2 != 1 goto $i3 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i3 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i4 = 2 * $i3;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode fmix(int,int)>(i11, $i4);	return $r2
;block_num 4