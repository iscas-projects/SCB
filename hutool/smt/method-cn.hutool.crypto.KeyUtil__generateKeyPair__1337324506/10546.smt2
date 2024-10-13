(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3607 0)
(declare-sort var1706 0)
(declare-sort var1948 0)
(declare-sort var788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var788_generateKeyPair/1503622326 (String Int (Array Int Int) (Array Int var1706)) var1948)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var1706__ (Array Int var1706))
(declare-const var3852 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3852 null-String)))
(declare-const var2535 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2535 null-Int)))
(declare-const var3110 (Array Int Int)) ; Statement: r2 := @parameter2: byte[] 
(assert (not (= var3110 null-__Array__Int__Int__)))
(define-const var1887 String "SM2") ; Statement: $r1 = "SM2" 
(assert true)
(define-const var1904 Bool (equalsIgnoreCase/-92311102 var1887 var3852)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = (java.security.spec.AlgorithmParameterSpec[]) null 
(assert (= (ite var1904 1 0) 0)) ; Cond: $z0 == 0 
(define-const var980 (Array Int var1706) null-__Array__Int__var1706__) ; Statement: $r3 = (java.security.spec.AlgorithmParameterSpec[]) null 
(define-const var2733 var1948 (var788_generateKeyPair/1503622326 var3852 var2535 var3110 var980)) ; Statement: $r4 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int,byte[],java.security.spec.AlgorithmParameterSpec[])>(r0, i0, r2, $r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var788_generateKeyPair/1503622326=([java.lang.String, int, byte[], java.security.spec.AlgorithmParameterSpec[]], java.security.KeyPair)}
; {var3852=r0, var3607=null_type, var2535=i0, var3110=r2, var1887=$r1, var1904=$z0, var1706=java.security.spec.AlgorithmParameterSpec, var980=$r3, var1948=java.security.KeyPair, var788=cn.hutool.crypto.KeyUtil, var2733=$r4}
; {r0=var3852, null_type=var3607, i0=var2535, r2=var3110, $r1=var1887, $z0=var1904, java.security.spec.AlgorithmParameterSpec=var1706, $r3=var980, java.security.KeyPair=var1948, cn.hutool.crypto.KeyUtil=var788, $r4=var2733}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r2 := @parameter2: byte[];	$r1 = "SM2";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r3 = (java.security.spec.AlgorithmParameterSpec[]) null;	$r3 = (java.security.spec.AlgorithmParameterSpec[]) null;	$r4 = staticinvoke <cn.hutool.crypto.KeyUtil: java.security.KeyPair generateKeyPair(java.lang.String,int,byte[],java.security.spec.AlgorithmParameterSpec[])>(r0, i0, r2, $r3);	return $r4
;block_num 2