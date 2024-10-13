(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3619 0)
(declare-sort var2006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun decrypt/692144516 (var3619 (Array Int Int)) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var3619 var3619)
(declare-const null-String String)
(declare-const var1091 var3619) ; Statement: r2 := @this: cn.hutool.crypto.symmetric.fpe.FPE 
(assert (not (= var1091 null-var3619)))
(declare-const var1650 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1650 null-String)))
 ; Statement: if null != r0 goto $r1 = new java.lang.String 
(assert (not (= null-String var1650))) ; Cond: null != r0 
(define-const var3256 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
(define-const var810 (Array Int Int) (toCharArray/415275702 var1650)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var2260 (Array Int Int) (decrypt/692144516 var1091 var810)) ; Statement: $r4 = virtualinvoke r2.<cn.hutool.crypto.symmetric.fpe.FPE: char[] decrypt(char[])>($r3) 
(assert true)
;(assert (<init>/-915723298 var3256 var2260)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>($r4) 

(declare-const var3256!1 String)
(declare-const var2260!1 (Array Int Int))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), decrypt/692144516=([cn.hutool.crypto.symmetric.fpe.FPE, char[]], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3619=cn.hutool.crypto.symmetric.fpe.FPE, var1091=r2, var1650=r0, var2006=null_type, var3256=$r1, var810=$r3, var2260=$r4}
; {cn.hutool.crypto.symmetric.fpe.FPE=var3619, r2=var1091, r0=var1650, null_type=var2006, $r1=var3256, $r3=var810, $r4=var2260}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r2 := @this: cn.hutool.crypto.symmetric.fpe.FPE;	r0 := @parameter0: java.lang.String;	if null != r0 goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	$r3 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r4 = virtualinvoke r2.<cn.hutool.crypto.symmetric.fpe.FPE: char[] decrypt(char[])>($r3);	specialinvoke $r1.<java.lang.String: void <init>(char[])>($r4);	return $r1
;block_num 2