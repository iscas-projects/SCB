(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2391 0)
(declare-sort var2398 0)
(declare-sort var2177 0)
(declare-sort var1608 0)
(declare-sort var3454 0)
(declare-sort var2142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-818710314 (var1608) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2398_getEncoded/647475158 (var2398) (Array Int Int))
(declare-fun var2142_createHmacSm3Engine/-821312947 ((Array Int Int)) var3454)
(declare-const null-String String)
(declare-const null-var2398 var2398)
(declare-const null-var2177 var2177)
(declare-const var1608-HmacSM3 var1608)
(declare-const var921 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var921 null-String)))
(declare-const var2085 var2398) ; Statement: r4 := @parameter1: java.security.Key 
(assert (not (= var2085 null-var2398)))
(declare-const var1678 var2177) ; Statement: r5 := @parameter2: java.security.spec.AlgorithmParameterSpec 
(assert (not (= var1678 null-var2177)))
(define-const var166 var1608 var1608-HmacSM3) ; Statement: $r1 = <cn.hutool.crypto.digest.HmacAlgorithm: cn.hutool.crypto.digest.HmacAlgorithm HmacSM3> 
(assert true)
(define-const var2345 String (getValue/-818710314 var166)) ; Statement: $r2 = virtualinvoke $r1.<cn.hutool.crypto.digest.HmacAlgorithm: java.lang.String getValue()>() 
(assert true)
(define-const var3451 Bool (equalsIgnoreCase/-92311102 var921 var2345)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = new cn.hutool.crypto.digest.mac.DefaultHMacEngine 
(assert (not (= (ite var3451 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2048 (Array Int Int) (var2398_getEncoded/647475158 var2085)) ; Statement: $r6 = interfaceinvoke r4.<java.security.Key: byte[] getEncoded()>() 
(define-const var2653 var3454 (var2142_createHmacSm3Engine/-821312947 var2048)) ; Statement: $r7 = staticinvoke <cn.hutool.crypto.SmUtil: cn.hutool.crypto.digest.mac.MacEngine createHmacSm3Engine(byte[])>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-818710314=([cn.hutool.crypto.digest.HmacAlgorithm], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2398_getEncoded/647475158=([java.security.Key], byte[]), var2142_createHmacSm3Engine/-821312947=([byte[]], cn.hutool.crypto.digest.mac.MacEngine)}
; {var921=r0, var2391=null_type, var2398=java.security.Key, var2085=r4, var2177=java.security.spec.AlgorithmParameterSpec, var1678=r5, var1608=cn.hutool.crypto.digest.HmacAlgorithm, var166=$r1, var2345=$r2, var3451=$z0, var2048=$r6, var3454=cn.hutool.crypto.digest.mac.MacEngine, var2142=cn.hutool.crypto.SmUtil, var2653=$r7}
; {r0=var921, null_type=var2391, java.security.Key=var2398, r4=var2085, java.security.spec.AlgorithmParameterSpec=var2177, r5=var1678, cn.hutool.crypto.digest.HmacAlgorithm=var1608, $r1=var166, $r2=var2345, $z0=var3451, $r6=var2048, cn.hutool.crypto.digest.mac.MacEngine=var3454, cn.hutool.crypto.SmUtil=var2142, $r7=var2653}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.security.Key;	r5 := @parameter2: java.security.spec.AlgorithmParameterSpec;	$r1 = <cn.hutool.crypto.digest.HmacAlgorithm: cn.hutool.crypto.digest.HmacAlgorithm HmacSM3>;	$r2 = virtualinvoke $r1.<cn.hutool.crypto.digest.HmacAlgorithm: java.lang.String getValue()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	if $z0 == 0 goto $r3 = new cn.hutool.crypto.digest.mac.DefaultHMacEngine;	$r6 = interfaceinvoke r4.<java.security.Key: byte[] getEncoded()>();	$r7 = staticinvoke <cn.hutool.crypto.SmUtil: cn.hutool.crypto.digest.mac.MacEngine createHmacSm3Engine(byte[])>($r6);	return $r7
;block_num 2