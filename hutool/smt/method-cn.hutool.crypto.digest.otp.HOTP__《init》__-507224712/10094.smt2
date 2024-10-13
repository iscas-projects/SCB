(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1209 0)
(declare-sort var1458 0)
(declare-sort var941 0)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var941) void)
(declare-fun cast-from-var1209-to-var941 (var1209) var941)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1226-init () var1226)
(declare-fun <init>/-1922979364 (var1226 var1458 (Array Int Int)) void)
(declare-fun mac/-1064659447 (var1209) var1226)
(declare-fun modDivisor/-1064659447 (var1209) Int)
(declare-fun passwordLength/-1064659447 (var1209) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun buffer/-1064659447 (var1209) (Array Int Int))
(declare-const null-var1209 var1209)
(declare-const null-Int Int)
(declare-const null-var1458 var1458)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1209-MOD_DIVISORS (Array Int Int))
(declare-const var3124 var1209) ; Statement: r0 := @this: cn.hutool.crypto.digest.otp.HOTP 
(assert (not (= var3124 null-var1209)))
(declare-const var2954 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2954 null-Int)))
(declare-const var3028 var1458) ; Statement: r3 := @parameter1: cn.hutool.crypto.digest.HmacAlgorithm 
(assert (not (= var3028 null-var1458)))
(declare-const var948 (Array Int Int)) ; Statement: r4 := @parameter2: byte[] 
(assert (not (= var948 null-__Array__Int__Int__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1209-to-var941 var3124))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3124!1 var1209)
(define-const var3574 (Array Int Int) var1209-MOD_DIVISORS) ; Statement: $r1 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS> 
(define-const var3852 Int (getLength-Arr-Int-1 var3574)) ; Statement: $i1 = lengthof $r1 
 ; Statement: if i0 < $i1 goto $r2 = new cn.hutool.crypto.digest.HMac 
(assert (< var2954 var3852)) ; Cond: i0 < $i1 
(define-const var1549 var1226 var1226-init) ; Statement: $r2 = new cn.hutool.crypto.digest.HMac 
(assert true)
;(assert (<init>/-1922979364 var1549 var3028 var948)) ; Statement: specialinvoke $r2.<cn.hutool.crypto.digest.HMac: void <init>(cn.hutool.crypto.digest.HmacAlgorithm,byte[])>(r3, r4) 

(declare-const var1549!1 var1226)
(declare-const var3028!1 var1458)
(declare-const var948!1 (Array Int Int))
(declare-const var3124!2 var1209)
(assert (not (= var3124!2 null-var1209)))
(assert (= (mac/-1064659447 var3124!2) var1549!1)) ; Statement: r0.<cn.hutool.crypto.digest.otp.HOTP: cn.hutool.crypto.digest.HMac mac> = $r2 
(define-const var2124 (Array Int Int) var1209-MOD_DIVISORS) ; Statement: $r5 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS> 
(define-const var2393 Int (select var2124 var2954)) ; Statement: $i2 = $r5[i0] 
(declare-const var3124!3 var1209)
(assert (not (= var3124!3 null-var1209)))
(assert (= (modDivisor/-1064659447 var3124!3) var2393)) ; Statement: r0.<cn.hutool.crypto.digest.otp.HOTP: int modDivisor> = $i2 
(declare-const var3124!4 var1209)
(assert (not (= var3124!4 null-var1209)))
(assert (= (passwordLength/-1064659447 var3124!4) var2954)) ; Statement: r0.<cn.hutool.crypto.digest.otp.HOTP: int passwordLength> = i0 
(define-const var3120 (Array Int Int) arr-Int-init) ; Statement: $r6 = newarray (byte)[8] 
(declare-const var3124!5 var1209)
(assert (not (= var3124!5 null-var1209)))
(assert (= (buffer/-1064659447 var3124!5) var3120)) ; Statement: r0.<cn.hutool.crypto.digest.otp.HOTP: byte[] buffer> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1209-to-var941=([cn.hutool.crypto.digest.otp.HOTP], java.lang.Object), getLength-Arr-Int-1=([int[]], int), var1226-init=([], cn.hutool.crypto.digest.HMac), <init>/-1922979364=([cn.hutool.crypto.digest.HMac, cn.hutool.crypto.digest.HmacAlgorithm, byte[]], void), mac/-1064659447=([cn.hutool.crypto.digest.otp.HOTP], cn.hutool.crypto.digest.HMac), modDivisor/-1064659447=([cn.hutool.crypto.digest.otp.HOTP], int), passwordLength/-1064659447=([cn.hutool.crypto.digest.otp.HOTP], int), arr-Int-init=([], byte[]), buffer/-1064659447=([cn.hutool.crypto.digest.otp.HOTP], byte[])}
; {var1209=cn.hutool.crypto.digest.otp.HOTP, var3124=r0, var2954=i0, var1458=cn.hutool.crypto.digest.HmacAlgorithm, var3028=r3, var948=r4, var941=java.lang.Object, var3574=$r1, var3852=$i1, var1226=cn.hutool.crypto.digest.HMac, var1549=$r2, var2124=$r5, var2393=$i2, var3120=$r6}
; {cn.hutool.crypto.digest.otp.HOTP=var1209, r0=var3124, i0=var2954, cn.hutool.crypto.digest.HmacAlgorithm=var1458, r3=var3028, r4=var948, java.lang.Object=var941, $r1=var3574, $i1=var3852, cn.hutool.crypto.digest.HMac=var1226, $r2=var1549, $r5=var2124, $i2=var2393, $r6=var3120}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.crypto.digest.otp.HOTP;	i0 := @parameter0: int;	r3 := @parameter1: cn.hutool.crypto.digest.HmacAlgorithm;	r4 := @parameter2: byte[];	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS>;	$i1 = lengthof $r1;	if i0 < $i1 goto $r2 = new cn.hutool.crypto.digest.HMac;	$r2 = new cn.hutool.crypto.digest.HMac;	specialinvoke $r2.<cn.hutool.crypto.digest.HMac: void <init>(cn.hutool.crypto.digest.HmacAlgorithm,byte[])>(r3, r4);	r0.<cn.hutool.crypto.digest.otp.HOTP: cn.hutool.crypto.digest.HMac mac> = $r2;	$r5 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS>;	$i2 = $r5[i0];	r0.<cn.hutool.crypto.digest.otp.HOTP: int modDivisor> = $i2;	r0.<cn.hutool.crypto.digest.otp.HOTP: int passwordLength> = i0;	$r6 = newarray (byte)[8];	r0.<cn.hutool.crypto.digest.otp.HOTP: byte[] buffer> = $r6;	return
;block_num 2