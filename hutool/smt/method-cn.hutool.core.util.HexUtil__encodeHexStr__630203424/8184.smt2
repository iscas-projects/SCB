(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var2976_encodeHex/789866114 ((Array Int Int) Bool) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var3588 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3588 null-__Array__Int__Int__)))
(declare-const var1494 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1494 null-Bool)))
(define-const var1243 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3887 (Array Int Int) (var2976_encodeHex/789866114 var3588 var1494)) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.HexUtil: char[] encodeHex(byte[],boolean)>(r1, z0) 
(assert true)
;(assert (<init>/-915723298 var1243 var3887)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var1243!1 String)
(declare-const var3887!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var2976_encodeHex/789866114=([byte[], boolean], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3588=r1, var1494=z0, var1243=$r0, var2976=cn.hutool.core.util.HexUtil, var3887=$r2}
; {r1=var3588, z0=var1494, $r0=var1243, cn.hutool.core.util.HexUtil=var2976, $r2=var3887}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: byte[];	z0 := @parameter1: boolean;	$r0 = new java.lang.String;	$r2 = staticinvoke <cn.hutool.core.util.HexUtil: char[] encodeHex(byte[],boolean)>(r1, z0);	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 1