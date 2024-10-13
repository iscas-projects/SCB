(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun encode/985791237 (var3934 (Array Int Int)) (Array Int Int))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3934-INSTANCE var3934)
(declare-const var1765 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1765 null-__Array__Int__Int__)))
(define-const var854 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2927 var3934 var3934-INSTANCE) ; Statement: $r2 = <cn.hutool.core.codec.Base62Codec: cn.hutool.core.codec.Base62Codec INSTANCE> 
(assert true)
(define-const var1145 (Array Int Int) (encode/985791237 var2927 var1765)) ; Statement: $r3 = virtualinvoke $r2.<cn.hutool.core.codec.Base62Codec: byte[] encode(byte[])>(r1) 
(assert true)
;(assert (<init>/76075152 var854 var1145)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[])>($r3) 

(declare-const var854!1 String)
(declare-const var1145!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), encode/985791237=([cn.hutool.core.codec.Base62Codec, byte[]], byte[]), <init>/76075152=([java.lang.String, byte[]], void)}
; {var1765=r1, var854=$r0, var3934=cn.hutool.core.codec.Base62Codec, var2927=$r2, var1145=$r3}
; {r1=var1765, $r0=var854, cn.hutool.core.codec.Base62Codec=var3934, $r2=var2927, $r3=var1145}
;seq <java.lang.String: void <init>(byte[])>
;cnt {"<java.lang.String: void <init>(byte[])>": 1}
;stmts r1 := @parameter0: byte[];	$r0 = new java.lang.String;	$r2 = <cn.hutool.core.codec.Base62Codec: cn.hutool.core.codec.Base62Codec INSTANCE>;	$r3 = virtualinvoke $r2.<cn.hutool.core.codec.Base62Codec: byte[] encode(byte[])>(r1);	specialinvoke $r0.<java.lang.String: void <init>(byte[])>($r3);	return $r0
;block_num 1