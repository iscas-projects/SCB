(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2656 0)
(declare-sort var3725 0)
(declare-sort var2517 0)
(declare-sort var1473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2517-init () var2517)
(declare-fun arr-var1473-init () (Array Int var1473))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1473 (Int) var1473)
(declare-fun <init>/-1016591490 (var2517 String (Array Int var1473)) void)
(declare-const null-var2656 var2656)
(declare-const null-String String)
(declare-const null-__Array__Int__var1473__ (Array Int var1473))
(declare-const var3599 var2656) ; Statement: r5 := @this: cn.hutool.crypto.symmetric.RC4 
(assert (not (= var3599 null-var2656)))
(declare-const var1706 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1706 null-String)))
(assert true)
(define-const var1768 Int (length/-134980193 var1706)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 < 5 goto $r1 = new cn.hutool.crypto.CryptoException 
(assert (< var1768 5)) ; Cond: i0 < 5 
(define-const var775 var2517 var2517-init) ; Statement: $r1 = new cn.hutool.crypto.CryptoException 
(define-const var2029 (Array Int var1473) arr-var1473-init) ; Statement: $r2 = newarray (java.lang.Object)[2] 
(define-const var1076 Int (Int_valueOf/-1371140006 5)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(5) 
(declare-const var2029!1 (Array Int var1473))
(assert (not (= var2029!1 null-__Array__Int__var1473__)))
(assert (= (select var2029!1 0) (cast-from-Int-to-var1473 var1076))) ; Statement: $r2[0] = $r3 
(define-const var2077 Int (Int_valueOf/-1371140006 255)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(255) 
(declare-const var2029!2 (Array Int var1473))
(assert (not (= var2029!2 null-__Array__Int__var1473__)))
(assert (= (select var2029!2 1) (cast-from-Int-to-var1473 var2077))) ; Statement: $r2[1] = $r4 
(assert true)
;(assert (<init>/-1016591490 var775 "Key length has to be between {} and {}" var2029!2)) ; Statement: specialinvoke $r1.<cn.hutool.crypto.CryptoException: void <init>(java.lang.String,java.lang.Object[])>("Key length has to be between {} and {}", $r2) 

(declare-const var775!1 var2517)
(declare-const var2400 String)
(declare-const var2029!3 (Array Int var1473))
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2517-init=([], cn.hutool.crypto.CryptoException), arr-var1473-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1473=([java.lang.Integer], java.lang.Object), <init>/-1016591490=([cn.hutool.crypto.CryptoException, java.lang.String, java.lang.Object[]], void)}
; {var2656=cn.hutool.crypto.symmetric.RC4, var3599=r5, var1706=r0, var3725=null_type, var1768=i0, var2517=cn.hutool.crypto.CryptoException, var775=$r1, var1473=java.lang.Object, var2029=$r2, var1076=$r3, var2077=$r4, var2400="Key length has to be between {} and {}"}
; {cn.hutool.crypto.symmetric.RC4=var2656, r5=var3599, r0=var1706, null_type=var3725, i0=var1768, cn.hutool.crypto.CryptoException=var2517, $r1=var775, java.lang.Object=var1473, $r2=var2029, $r3=var1076, $r4=var2077, "Key length has to be between {} and {}"=var2400}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @this: cn.hutool.crypto.symmetric.RC4;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 < 5 goto $r1 = new cn.hutool.crypto.CryptoException;	$r1 = new cn.hutool.crypto.CryptoException;	$r2 = newarray (java.lang.Object)[2];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(5);	$r2[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(255);	$r2[1] = $r4;	specialinvoke $r1.<cn.hutool.crypto.CryptoException: void <init>(java.lang.String,java.lang.Object[])>("Key length has to be between {} and {}", $r2);	throw $r1
;block_num 2