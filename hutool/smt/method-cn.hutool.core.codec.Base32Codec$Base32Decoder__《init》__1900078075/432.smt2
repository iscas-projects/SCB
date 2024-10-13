(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3214 0)
(declare-sort var2700 0)
(declare-sort var907 0)
(declare-sort var1361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var907) void)
(declare-fun cast-from-var3214-to-var907 (var3214) var907)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun lookupTable/-461956395 (var3214) (Array Int Int))
(declare-fun var1361_fill/-1423580022 ((Array Int Int) Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3214 var3214)
(declare-const null-String String)
(declare-const var1104 var3214) ; Statement: r0 := @this: cn.hutool.core.codec.Base32Codec$Base32Decoder 
(assert (not (= var1104 null-var3214)))
(declare-const var984 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var984 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3214-to-var907 var1104))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1104!1 var3214)
(define-const var1631 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (byte)[128] 
(declare-const var1104!2 var3214)
(assert (not (= var1104!2 null-var3214)))
(assert (= (lookupTable/-461956395 var1104!2) var1631)) ; Statement: r0.<cn.hutool.core.codec.Base32Codec$Base32Decoder: byte[] lookupTable> = $r1 
(define-const var2246 (Array Int Int) (lookupTable/-461956395 var1104!2)) ; Statement: $r2 = r0.<cn.hutool.core.codec.Base32Codec$Base32Decoder: byte[] lookupTable> 
;(assert (var1361_fill/-1423580022 var2246 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r2, -1) 

(declare-const var2246!1 (Array Int Int))
(declare-const var3411 Int)
(assert true)
(define-const var1020 Int (length/-134980193 var984)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1759 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return 
(assert (>= var1759 var1020)) ; Cond: i7 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3214-to-var907=([cn.hutool.core.codec.Base32Codec$Base32Decoder], java.lang.Object), arr-Int-init=([], byte[]), lookupTable/-461956395=([cn.hutool.core.codec.Base32Codec$Base32Decoder], byte[]), var1361_fill/-1423580022=([byte[], byte], void), length/-134980193=([java.lang.String], int)}
; {var3214=cn.hutool.core.codec.Base32Codec$Base32Decoder, var1104=r0, var984=r3, var2700=null_type, var907=java.lang.Object, var1631=$r1, var2246=$r2, var1361=java.util.Arrays, var3411=-1, var1020=i0, var1759=i7}
; {cn.hutool.core.codec.Base32Codec$Base32Decoder=var3214, r0=var1104, r3=var984, null_type=var2700, java.lang.Object=var907, $r1=var1631, $r2=var2246, java.util.Arrays=var1361, -1=var3411, i0=var1020, i7=var1759}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.codec.Base32Codec$Base32Decoder;	r3 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = newarray (byte)[128];	r0.<cn.hutool.core.codec.Base32Codec$Base32Decoder: byte[] lookupTable> = $r1;	$r2 = r0.<cn.hutool.core.codec.Base32Codec$Base32Decoder: byte[] lookupTable>;	staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r2, -1);	i0 = virtualinvoke r3.<java.lang.String: int length()>();	i7 = 0;	if i7 >= i0 goto return;	return
;block_num 3