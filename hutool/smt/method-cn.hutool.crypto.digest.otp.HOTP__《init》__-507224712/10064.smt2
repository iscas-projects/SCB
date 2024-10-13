(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3861 0)
(declare-sort var3530 0)
(declare-sort var3228 0)
(declare-sort var1971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3228) void)
(declare-fun cast-from-var3861-to-var3228 (var3861) var3228)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1971-init () var1971)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1971 String) void)
(declare-const null-var3861 var3861)
(declare-const null-Int Int)
(declare-const null-var3530 var3530)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3861-MOD_DIVISORS (Array Int Int))
(declare-const var184 var3861) ; Statement: r0 := @this: cn.hutool.crypto.digest.otp.HOTP 
(assert (not (= var184 null-var3861)))
(declare-const var2872 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2872 null-Int)))
(declare-const var518 var3530) ; Statement: r3 := @parameter1: cn.hutool.crypto.digest.HmacAlgorithm 
(assert (not (= var518 null-var3530)))
(declare-const var2920 (Array Int Int)) ; Statement: r4 := @parameter2: byte[] 
(assert (not (= var2920 null-__Array__Int__Int__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3861-to-var3228 var184))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var184!1 var3861)
(define-const var3469 (Array Int Int) var3861-MOD_DIVISORS) ; Statement: $r1 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS> 
(define-const var1416 Int (getLength-Arr-Int-1 var3469)) ; Statement: $i1 = lengthof $r1 
 ; Statement: if i0 < $i1 goto $r2 = new cn.hutool.crypto.digest.HMac 
(assert (not (< var2872 var1416))) ; Negate: Cond: i0 < $i1  
(define-const var460 var1971 var1971-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2407 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2407)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2407!1 String)
(assert (= var2407!1 ""))
(assert true)
(define-const var2343 String (append/672562846 var2407!1 "Password length must be < ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Password length must be < ") 
(declare-const var2407!2 String)
(assert (= var2407!2 (str.++ var2407!1 "Password length must be < ")))
(define-const var782 (Array Int Int) var3861-MOD_DIVISORS) ; Statement: $r9 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS> 
(define-const var2027 Int (getLength-Arr-Int-1 var782)) ; Statement: $i3 = lengthof $r9 
(assert true)
(define-const var2135 String (append/-1001720160 var2343 var2027)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2343!1 String)
(assert (str.prefixof var2343 var2343!1))
(assert true)
(define-const var223 String (toString/-2075883882 var2135)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var460 var223)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var460!1 var1971)
(declare-const var223!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3861-to-var3228=([cn.hutool.crypto.digest.otp.HOTP], java.lang.Object), getLength-Arr-Int-1=([int[]], int), var1971-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3861=cn.hutool.crypto.digest.otp.HOTP, var184=r0, var2872=i0, var3530=cn.hutool.crypto.digest.HmacAlgorithm, var518=r3, var2920=r4, var3228=java.lang.Object, var3469=$r1, var1416=$i1, var1971=java.lang.IllegalArgumentException, var460=$r7, var2407=$r8, var2343=$r10, var782=$r9, var2027=$i3, var2135=$r11, var223=$r12}
; {cn.hutool.crypto.digest.otp.HOTP=var3861, r0=var184, i0=var2872, cn.hutool.crypto.digest.HmacAlgorithm=var3530, r3=var518, r4=var2920, java.lang.Object=var3228, $r1=var3469, $i1=var1416, java.lang.IllegalArgumentException=var1971, $r7=var460, $r8=var2407, $r10=var2343, $r9=var782, $i3=var2027, $r11=var2135, $r12=var223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.crypto.digest.otp.HOTP;	i0 := @parameter0: int;	r3 := @parameter1: cn.hutool.crypto.digest.HmacAlgorithm;	r4 := @parameter2: byte[];	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS>;	$i1 = lengthof $r1;	if i0 < $i1 goto $r2 = new cn.hutool.crypto.digest.HMac;	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Password length must be < ");	$r9 = <cn.hutool.crypto.digest.otp.HOTP: int[] MOD_DIVISORS>;	$i3 = lengthof $r9;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2