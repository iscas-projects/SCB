(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3352 0)
(declare-sort var1657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun encrypt/864674732 (var3352 (Array Int Int)) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var3352 var3352)
(declare-const null-String String)
(declare-const var3083 var3352) ; Statement: r2 := @this: cn.hutool.crypto.symmetric.fpe.FPE 
(assert (not (= var3083 null-var3352)))
(declare-const var3223 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3223 null-String)))
 ; Statement: if null != r0 goto $r1 = new java.lang.String 
(assert (not (= null-String var3223))) ; Cond: null != r0 
(define-const var2457 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
(define-const var2832 (Array Int Int) (toCharArray/415275702 var3223)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var2875 (Array Int Int) (encrypt/864674732 var3083 var2832)) ; Statement: $r4 = virtualinvoke r2.<cn.hutool.crypto.symmetric.fpe.FPE: char[] encrypt(char[])>($r3) 
(assert true)
;(assert (<init>/-915723298 var2457 var2875)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>($r4) 

(declare-const var2457!1 String)
(declare-const var2875!1 (Array Int Int))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), encrypt/864674732=([cn.hutool.crypto.symmetric.fpe.FPE, char[]], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3352=cn.hutool.crypto.symmetric.fpe.FPE, var3083=r2, var3223=r0, var1657=null_type, var2457=$r1, var2832=$r3, var2875=$r4}
; {cn.hutool.crypto.symmetric.fpe.FPE=var3352, r2=var3083, r0=var3223, null_type=var1657, $r1=var2457, $r3=var2832, $r4=var2875}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @this: cn.hutool.crypto.symmetric.fpe.FPE;	r0 := @parameter0: java.lang.String;	if null != r0 goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	$r3 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r4 = virtualinvoke r2.<cn.hutool.crypto.symmetric.fpe.FPE: char[] encrypt(char[])>($r3);	specialinvoke $r1.<java.lang.String: void <init>(char[])>($r4);	return $r1
;block_num 2