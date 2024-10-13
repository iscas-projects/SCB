(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var979 0)
(declare-sort var1188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1188) void)
(declare-fun cast-from-var979-to-var1188 (var979) var1188)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun alphabets/1357768735 (var979) (Array Int Int))
(declare-const null-var979 var979)
(declare-const null-Bool Bool)
(declare-const var1368 var979) ; Statement: r0 := @this: cn.hutool.core.codec.Base16Codec 
(assert (not (= var1368 null-var979)))
(declare-const var2444 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2444 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var979-to-var1188 var1368))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1368!1 var979)
 ; Statement: if z0 == 0 goto $r2 = "0123456789ABCDEF" 
(assert (not (= (ite var2444 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var371 String "0123456789abcdef") ; Statement: $r2 = "0123456789abcdef" 
 ; Statement: goto [?= $r1 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var301 (Array Int Int) (toCharArray/415275702 var371)) ; Statement: $r1 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(declare-const var1368!2 var979)
(assert (not (= var1368!2 null-var979)))
(assert (= (alphabets/1357768735 var1368!2) var301)) ; Statement: r0.<cn.hutool.core.codec.Base16Codec: char[] alphabets> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var979-to-var1188=([cn.hutool.core.codec.Base16Codec], java.lang.Object), toCharArray/415275702=([java.lang.String], char[]), alphabets/1357768735=([cn.hutool.core.codec.Base16Codec], char[])}
; {var979=cn.hutool.core.codec.Base16Codec, var1368=r0, var2444=z0, var1188=java.lang.Object, var371=$r2, var301=$r1}
; {cn.hutool.core.codec.Base16Codec=var979, r0=var1368, z0=var2444, java.lang.Object=var1188, $r2=var371, $r1=var301}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: cn.hutool.core.codec.Base16Codec;	z0 := @parameter0: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	if z0 == 0 goto $r2 = "0123456789ABCDEF";	$r2 = "0123456789abcdef";	goto [?= $r1 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>()];	$r1 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	r0.<cn.hutool.core.codec.Base16Codec: char[] alphabets> = $r1;	return
;block_num 3