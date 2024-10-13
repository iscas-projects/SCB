(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1228 0)
(declare-sort var666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun pad/683209645 (var1228) var666)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1228 var1228)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var666 var666)
(declare-const var340 var1228) ; Statement: r2 := @this: cn.hutool.core.codec.Base32Codec$Base32Encoder 
(assert (not (= var340 null-var1228)))
(declare-const var2065 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2065 null-__Array__Int__Int__)))
(define-const var3241 Int 0) ; Statement: i30 = 0 
(define-const var138 Int 0) ; Statement: i31 = 0 
(define-const var3376 Int (getLength-Arr-Int-1 var2065)) ; Statement: $i0 = lengthof r0 
(define-const var548 Int (* var3376 8)) ; Statement: $i1 = $i0 * 8 
(define-const var3412 Int (div var548 5)) ; Statement: i32 = $i1 / 5 
 ; Statement: if i32 == 0 goto $r8 = new java.lang.StringBuilder 
(assert (= var3412 0)) ; Cond: i32 == 0 
(define-const var1350 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1350 var3412)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>(i32) 

(declare-const var1350!1 String)
(declare-const var3412!1 Int)
(assert true) ; Non Conditional
(define-const var3029 Int (getLength-Arr-Int-1 var2065)) ; Statement: $i33 = lengthof r0 
 ; Statement: if i30 >= $i33 goto $r3 = r2.<cn.hutool.core.codec.Base32Codec$Base32Encoder: java.lang.Character pad> 
(assert (>= var3241 var3029)) ; Cond: i30 >= $i33 
(define-const var3833 var666 (pad/683209645 var340)) ; Statement: $r3 = r2.<cn.hutool.core.codec.Base32Codec$Base32Encoder: java.lang.Character pad> 
 ; Statement: if null == $r3 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= null-var666 var3833)) ; Cond: null == $r3 
(assert true)
(define-const var3378 String (toString/-2075883882 var1350!1)) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), pad/683209645=([cn.hutool.core.codec.Base32Codec$Base32Encoder], java.lang.Character), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1228=cn.hutool.core.codec.Base32Codec$Base32Encoder, var340=r2, var2065=r0, var3241=i30, var138=i31, var3376=$i0, var548=$i1, var3412=i32, var1350=$r8, var3029=$i33, var666=java.lang.Character, var3833=$r3, var3378=$r4}
; {cn.hutool.core.codec.Base32Codec$Base32Encoder=var1228, r2=var340, r0=var2065, i30=var3241, i31=var138, $i0=var3376, $i1=var548, i32=var3412, $r8=var1350, $i33=var3029, java.lang.Character=var666, $r3=var3833, $r4=var3378}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.core.codec.Base32Codec$Base32Encoder;	r0 := @parameter0: byte[];	i30 = 0;	i31 = 0;	$i0 = lengthof r0;	$i1 = $i0 * 8;	i32 = $i1 / 5;	if i32 == 0 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>(i32);	$i33 = lengthof r0;	if i30 >= $i33 goto $r3 = r2.<cn.hutool.core.codec.Base32Codec$Base32Encoder: java.lang.Character pad>;	$r3 = r2.<cn.hutool.core.codec.Base32Codec$Base32Encoder: java.lang.Character pad>;	if null == $r3 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5