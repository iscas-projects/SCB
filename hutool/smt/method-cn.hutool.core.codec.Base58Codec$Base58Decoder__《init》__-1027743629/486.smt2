(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3931 0)
(declare-sort var1996 0)
(declare-sort var1830 0)
(declare-sort var1357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1830) void)
(declare-fun cast-from-var3931-to-var1830 (var3931) var1830)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1357_fill/-1423580022 ((Array Int Int) Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lookupTable/54785869 (var3931) (Array Int Int))
(declare-const null-var3931 var3931)
(declare-const null-String String)
(declare-const var298 var3931) ; Statement: r0 := @this: cn.hutool.core.codec.Base58Codec$Base58Decoder 
(assert (not (= var298 null-var3931)))
(declare-const var3836 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3836 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3931-to-var1830 var298))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var298!1 var3931)
(define-const var2840 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[123] 
;(assert (var1357_fill/-1423580022 var2840 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r1, -1) 

(declare-const var2840!1 (Array Int Int))
(declare-const var94 Int)
(assert true)
(define-const var1115 Int (length/-134980193 var3836)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3983 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto r0.<cn.hutool.core.codec.Base58Codec$Base58Decoder: byte[] lookupTable> = r1 
(assert (>= var3983 var1115)) ; Cond: i3 >= i0 
(declare-const var298!2 var3931)
(assert (not (= var298!2 null-var3931)))
(assert (= (lookupTable/54785869 var298!2) var2840!1)) ; Statement: r0.<cn.hutool.core.codec.Base58Codec$Base58Decoder: byte[] lookupTable> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3931-to-var1830=([cn.hutool.core.codec.Base58Codec$Base58Decoder], java.lang.Object), arr-Int-init=([], byte[]), var1357_fill/-1423580022=([byte[], byte], void), length/-134980193=([java.lang.String], int), lookupTable/54785869=([cn.hutool.core.codec.Base58Codec$Base58Decoder], byte[])}
; {var3931=cn.hutool.core.codec.Base58Codec$Base58Decoder, var298=r0, var3836=r2, var1996=null_type, var1830=java.lang.Object, var2840=r1, var1357=java.util.Arrays, var94=-1, var1115=i0, var3983=i3}
; {cn.hutool.core.codec.Base58Codec$Base58Decoder=var3931, r0=var298, r2=var3836, null_type=var1996, java.lang.Object=var1830, r1=var2840, java.util.Arrays=var1357, -1=var94, i0=var1115, i3=var3983}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.codec.Base58Codec$Base58Decoder;	r2 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r1 = newarray (byte)[123];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r1, -1);	i0 = virtualinvoke r2.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto r0.<cn.hutool.core.codec.Base58Codec$Base58Decoder: byte[] lookupTable> = r1;	r0.<cn.hutool.core.codec.Base58Codec$Base58Decoder: byte[] lookupTable> = r1;	return
;block_num 3