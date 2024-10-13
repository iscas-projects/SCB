(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2118 0)
(declare-sort var1403 0)
(declare-sort var3977 0)
(declare-sort var2362 0)
(declare-sort var1641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var1403-init () var1403)
(declare-fun <init>/1450656817 (var1403 String) void)
(declare-fun arr-var3977-init () (Array Int var3977))
(declare-fun cast-from-var1403-to-var3977 (var1403) var3977)
(declare-fun var1641_generateKeyPair/1503622326 (String Int (Array Int Int) (Array Int var3977)) var2362)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var3977__ (Array Int var3977))
(declare-const var1866 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1866 null-String)))
(declare-const var2304 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2304 null-Int)))
(declare-const var220 (Array Int Int)) ; Statement: r2 := @parameter2: byte[] 
(assert (not (= var220 null-__Array__Int__Int__)))
(define-const var2561 String "SM2") ; Statement: $r1 = "SM2" 
(assert true)
(define-const var2751 Bool (equalsIgnoreCase/-92311102 var2561 var1866)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = (java.security.spec.AlgorithmParameterSpec[]) null 
(assert (not (= (ite var2751 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var725 var1403 var1403-init) ; Statement: $r5 = new java.security.spec.ECGenParameterSpec 
(assert true)
;(assert (<init>/1450656817 var725 "sm2p256v1")) ; Statement: specialinvoke $r5.<java.security.spec.ECGenParameterSpec: void <init>(java.lang.String)>("sm2p256v1") 

(declare-const var725!1 var1403)
(declare-const var1267 String)
(define-const var2179 (Array Int var3977) arr-var3977-init) ; Statement: $r6 = newarray (java.security.spec.AlgorithmParameterSpec)[1] 
(declare-const var2179!1 (Array Int var3977))
(assert (not (= var2179!1 null-__Array__Int__var3977__)))
(assert (= (select var2179!1 0) (cast-from-var1403-to-var3977 var725!1))) ; Statement: $r6[0] = $r5 
(define-const var659 var2362 (var1641_generateKeyPair/1503622326 var1866 var2304 var220 var2179!1)) ; Statement: $r7 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int,byte[],java.security.spec.AlgorithmParameterSpec[])>(r0, i0, r2, $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var1403-init=([], java.security.spec.ECGenParameterSpec), <init>/1450656817=([java.security.spec.ECGenParameterSpec, java.lang.String], void), arr-var3977-init=([], java.security.spec.AlgorithmParameterSpec[]), cast-from-var1403-to-var3977=([java.security.spec.ECGenParameterSpec], java.security.spec.AlgorithmParameterSpec), var1641_generateKeyPair/1503622326=([java.lang.String, int, byte[], java.security.spec.AlgorithmParameterSpec[]], java.security.KeyPair)}
; {var1866=r0, var2118=null_type, var2304=i0, var220=r2, var2561=$r1, var2751=$z0, var1403=java.security.spec.ECGenParameterSpec, var725=$r5, var1267="sm2p256v1", var3977=java.security.spec.AlgorithmParameterSpec, var2179=$r6, var2362=java.security.KeyPair, var1641=cn.hutool.crypto.KeyUtil, var659=$r7}
; {r0=var1866, null_type=var2118, i0=var2304, r2=var220, $r1=var2561, $z0=var2751, java.security.spec.ECGenParameterSpec=var1403, $r5=var725, "sm2p256v1"=var1267, java.security.spec.AlgorithmParameterSpec=var3977, $r6=var2179, java.security.KeyPair=var2362, cn.hutool.crypto.KeyUtil=var1641, $r7=var659}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r2 := @parameter2: byte[];	$r1 = "SM2";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r3 = (java.security.spec.AlgorithmParameterSpec[]) null;	$r5 = new java.security.spec.ECGenParameterSpec;	specialinvoke $r5.<java.security.spec.ECGenParameterSpec: void <init>(java.lang.String)>("sm2p256v1");	$r6 = newarray (java.security.spec.AlgorithmParameterSpec)[1];	$r6[0] = $r5;	$r7 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int,byte[],java.security.spec.AlgorithmParameterSpec[])>(r0, i0, r2, $r6);	return $r7
;block_num 2