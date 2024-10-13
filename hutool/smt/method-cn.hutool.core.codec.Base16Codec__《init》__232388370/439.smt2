(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3000 0)
(declare-sort var3295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3295) void)
(declare-fun cast-from-var3000-to-var3295 (var3000) var3295)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun alphabets/1357768735 (var3000) (Array Int Int))
(declare-const null-var3000 var3000)
(declare-const null-Bool Bool)
(declare-const var1344 var3000) ; Statement: r0 := @this: cn.hutool.core.codec.Base16Codec 
(assert (not (= var1344 null-var3000)))
(declare-const var2077 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2077 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3000-to-var3295 var1344))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1344!1 var3000)
 ; Statement: if z0 == 0 goto $r2 = "0123456789ABCDEF" 
(assert (= (ite var2077 1 0) 0)) ; Cond: z0 == 0 
(define-const var534 String "0123456789ABCDEF") ; Statement: $r2 = "0123456789ABCDEF" 
(assert true) ; Non Conditional
(assert true)
(define-const var2643 (Array Int Int) (toCharArray/415275702 var534)) ; Statement: $r1 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(declare-const var1344!2 var3000)
(assert (not (= var1344!2 null-var3000)))
(assert (= (alphabets/1357768735 var1344!2) var2643)) ; Statement: r0.<cn.hutool.core.codec.Base16Codec: char[] alphabets> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3000-to-var3295=([cn.hutool.core.codec.Base16Codec], java.lang.Object), toCharArray/415275702=([java.lang.String], char[]), alphabets/1357768735=([cn.hutool.core.codec.Base16Codec], char[])}
; {var3000=cn.hutool.core.codec.Base16Codec, var1344=r0, var2077=z0, var3295=java.lang.Object, var534=$r2, var2643=$r1}
; {cn.hutool.core.codec.Base16Codec=var3000, r0=var1344, z0=var2077, java.lang.Object=var3295, $r2=var534, $r1=var2643}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: cn.hutool.core.codec.Base16Codec;	z0 := @parameter0: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	if z0 == 0 goto $r2 = "0123456789ABCDEF";	$r2 = "0123456789ABCDEF";	$r1 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	r0.<cn.hutool.core.codec.Base16Codec: char[] alphabets> = $r1;	return
;block_num 3