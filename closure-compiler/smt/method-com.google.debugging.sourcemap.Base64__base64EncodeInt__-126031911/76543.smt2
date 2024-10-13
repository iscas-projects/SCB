(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2199_toBase64/142631938 (Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3372 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3372 null-Int)))
(define-const var3287 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[6] 
(define-const var1806 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= 5 goto $i1 = i0 << 4 
(assert (>= var1806 5)) ; Cond: i9 >= 5 
(define-const var948 Int (* var3372 (to_int (^ 2 4)))) ; Statement: $i1 = i0 << 4 
(define-const var3588 Int (bv2nat (bvand ((_ int2bv 64) var948) ((_ int2bv 64) 63)))) ; Statement: $i2 = $i1 & 63 
(define-const var1046 Int (var2199_toBase64/142631938 var3588)) ; Statement: $c3 = staticinvoke <com.google.debugging.sourcemap.Base64: char toBase64(int)>($i2) 
(declare-const var3287!1 (Array Int Int))
(assert (not (= var3287!1 null-__Array__Int__Int__)))
(assert (= (select var3287!1 5) var1046)) ; Statement: r0[5] = $c3 
(define-const var3018 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3018 var3287!1)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var3018!1 String)
(declare-const var3287!2 (Array Int Int))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), var2199_toBase64/142631938=([int], char), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3372=i0, var3287=r0, var1806=i9, var948=$i1, var3588=$i2, var2199=com.google.debugging.sourcemap.Base64, var1046=$c3, var3018=$r1}
; {i0=var3372, r0=var3287, i9=var1806, $i1=var948, $i2=var3588, com.google.debugging.sourcemap.Base64=var2199, $c3=var1046, $r1=var3018}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts i0 := @parameter0: int;	r0 = newarray (char)[6];	i9 = 0;	if i9 >= 5 goto $i1 = i0 << 4;	$i1 = i0 << 4;	$i2 = $i1 & 63;	$c3 = staticinvoke <com.google.debugging.sourcemap.Base64: char toBase64(int)>($i2);	r0[5] = $c3;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0);	return $r1
;block_num 3