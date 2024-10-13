(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2648 0)
(declare-sort var683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getD/963102122 (var2648) (Array Int Int))
(declare-fun var683_encode/1872408413 ((Array Int Int)) (Array Int Int))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-var2648 var2648)
(declare-const var265 var2648) ; Statement: r1 := @this: cn.hutool.crypto.asymmetric.SM2 
(assert (not (= var265 null-var2648)))
(define-const var186 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var3714 (Array Int Int) (getD/963102122 var265)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.crypto.asymmetric.SM2: byte[] getD()>() 
(define-const var3114 (Array Int Int) (var683_encode/1872408413 var3714)) ; Statement: $r3 = staticinvoke <org.bouncycastle.util.encoders.Hex: byte[] encode(byte[])>($r2) 
(assert true)
;(assert (<init>/76075152 var186 var3114)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[])>($r3) 

(declare-const var186!1 String)
(declare-const var3114!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), getD/963102122=([cn.hutool.crypto.asymmetric.SM2], byte[]), var683_encode/1872408413=([byte[]], byte[]), <init>/76075152=([java.lang.String, byte[]], void)}
; {var2648=cn.hutool.crypto.asymmetric.SM2, var265=r1, var186=$r0, var3714=$r2, var683=org.bouncycastle.util.encoders.Hex, var3114=$r3}
; {cn.hutool.crypto.asymmetric.SM2=var2648, r1=var265, $r0=var186, $r2=var3714, org.bouncycastle.util.encoders.Hex=var683, $r3=var3114}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r1 := @this: cn.hutool.crypto.asymmetric.SM2;	$r0 = new java.lang.String;	$r2 = virtualinvoke r1.<cn.hutool.crypto.asymmetric.SM2: byte[] getD()>();	$r3 = staticinvoke <org.bouncycastle.util.encoders.Hex: byte[] encode(byte[])>($r2);	specialinvoke $r0.<java.lang.String: void <init>(byte[])>($r3);	return $r0
;block_num 1