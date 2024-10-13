(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var903 0)
(declare-sort var787 0)
(declare-sort var1693 0)
(declare-sort var2533 0)
(declare-sort var3571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-818710314 (var2533) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var3571-init () var3571)
(declare-fun <init>/111930081 (var3571 String var787 var1693) void)
(declare-const null-String String)
(declare-const null-var787 var787)
(declare-const null-var1693 var1693)
(declare-const var2533-HmacSM3 var2533)
(declare-const var3839 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3839 null-String)))
(declare-const var55 var787) ; Statement: r4 := @parameter1: java.security.Key 
(assert (not (= var55 null-var787)))
(declare-const var3944 var1693) ; Statement: r5 := @parameter2: java.security.spec.AlgorithmParameterSpec 
(assert (not (= var3944 null-var1693)))
(define-const var1690 var2533 var2533-HmacSM3) ; Statement: $r1 = <cn.hutool.crypto.digest.HmacAlgorithm: cn.hutool.crypto.digest.HmacAlgorithm HmacSM3> 
(assert true)
(define-const var1559 String (getValue/-818710314 var1690)) ; Statement: $r2 = virtualinvoke $r1.<cn.hutool.crypto.digest.HmacAlgorithm: java.lang.String getValue()>() 
(assert true)
(define-const var2192 Bool (equalsIgnoreCase/-92311102 var3839 var1559)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = new cn.hutool.crypto.digest.mac.DefaultHMacEngine 
(assert (= (ite var2192 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3317 var3571 var3571-init) ; Statement: $r3 = new cn.hutool.crypto.digest.mac.DefaultHMacEngine 
(assert true)
;(assert (<init>/111930081 var3317 var3839 var55 var3944)) ; Statement: specialinvoke $r3.<cn.hutool.crypto.digest.mac.DefaultHMacEngine: void <init>(java.lang.String,java.security.Key,java.security.spec.AlgorithmParameterSpec)>(r0, r4, r5) 

(declare-const var3317!1 var3571)
(declare-const var3839!1 String)
(declare-const var55!1 var787)
(declare-const var3944!1 var1693)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-818710314=([cn.hutool.crypto.digest.HmacAlgorithm], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var3571-init=([], cn.hutool.crypto.digest.mac.DefaultHMacEngine), <init>/111930081=([cn.hutool.crypto.digest.mac.DefaultHMacEngine, java.lang.String, java.security.Key, java.security.spec.AlgorithmParameterSpec], void)}
; {var3839=r0, var903=null_type, var787=java.security.Key, var55=r4, var1693=java.security.spec.AlgorithmParameterSpec, var3944=r5, var2533=cn.hutool.crypto.digest.HmacAlgorithm, var1690=$r1, var1559=$r2, var2192=$z0, var3571=cn.hutool.crypto.digest.mac.DefaultHMacEngine, var3317=$r3}
; {r0=var3839, null_type=var903, java.security.Key=var787, r4=var55, java.security.spec.AlgorithmParameterSpec=var1693, r5=var3944, cn.hutool.crypto.digest.HmacAlgorithm=var2533, $r1=var1690, $r2=var1559, $z0=var2192, cn.hutool.crypto.digest.mac.DefaultHMacEngine=var3571, $r3=var3317}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.security.Key;	r5 := @parameter2: java.security.spec.AlgorithmParameterSpec;	$r1 = <cn.hutool.crypto.digest.HmacAlgorithm: cn.hutool.crypto.digest.HmacAlgorithm HmacSM3>;	$r2 = virtualinvoke $r1.<cn.hutool.crypto.digest.HmacAlgorithm: java.lang.String getValue()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	if $z0 == 0 goto $r3 = new cn.hutool.crypto.digest.mac.DefaultHMacEngine;	$r3 = new cn.hutool.crypto.digest.mac.DefaultHMacEngine;	specialinvoke $r3.<cn.hutool.crypto.digest.mac.DefaultHMacEngine: void <init>(java.lang.String,java.security.Key,java.security.spec.AlgorithmParameterSpec)>(r0, r4, r5);	return $r3
;block_num 2