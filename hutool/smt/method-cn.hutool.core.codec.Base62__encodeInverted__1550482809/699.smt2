(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun encode/1458019969 (var3548 (Array Int Int) Bool) (Array Int Int))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3548-INSTANCE var3548)
(declare-const var3229 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3229 null-__Array__Int__Int__)))
(define-const var2306 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2088 var3548 var3548-INSTANCE) ; Statement: $r2 = <cn.hutool.core.codec.Base62Codec: cn.hutool.core.codec.Base62Codec INSTANCE> 
(assert true)
(define-const var1222 (Array Int Int) (encode/1458019969 var2088 var3229 (ite (= 1 1) true false))) ; Statement: $r3 = virtualinvoke $r2.<cn.hutool.core.codec.Base62Codec: byte[] encode(byte[],boolean)>(r1, 1) 
(assert true)
;(assert (<init>/76075152 var2306 var1222)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[])>($r3) 

(declare-const var2306!1 String)
(declare-const var1222!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), encode/1458019969=([cn.hutool.core.codec.Base62Codec, byte[], boolean], byte[]), <init>/76075152=([java.lang.String, byte[]], void)}
; {var3229=r1, var2306=$r0, var3548=cn.hutool.core.codec.Base62Codec, var2088=$r2, var1222=$r3}
; {r1=var3229, $r0=var2306, cn.hutool.core.codec.Base62Codec=var3548, $r2=var2088, $r3=var1222}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r1 := @parameter0: byte[];	$r0 = new java.lang.String;	$r2 = <cn.hutool.core.codec.Base62Codec: cn.hutool.core.codec.Base62Codec INSTANCE>;	$r3 = virtualinvoke $r2.<cn.hutool.core.codec.Base62Codec: byte[] encode(byte[],boolean)>(r1, 1);	specialinvoke $r0.<java.lang.String: void <init>(byte[])>($r3);	return $r0
;block_num 1