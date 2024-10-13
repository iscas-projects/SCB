(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var771 0)
(declare-sort var1721 0)
(declare-sort var3372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3372-init () var3372)
(declare-fun <init>/875830710 (var3372 String) void)
(declare-const null-var771 var771)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var302 var771) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.ByteVector 
(assert (not (= var302 null-var771)))
(declare-const var3627 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3627 null-String)))
(declare-const var611 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var611 null-Int)))
(assert true)
(define-const var1701 Int (length/-134980193 var3627)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3237 Int var611) ; Statement: i34 = i1 
(define-const var575 Int var611) ; Statement: i35 = i1 
(assert true) ; Non Conditional
 ; Statement: if i35 >= i0 goto $i47 = (int) 65535 
(assert (>= var575 var1701)) ; Cond: i35 >= i0 
(define-const var1412 Int (cast-from-Int-to-Int 65535)) ; Statement: $i47 = (int) 65535 
 ; Statement: if i34 <= $i47 goto $i2 = r1.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(assert (not (<= var3237 var1412))) ; Negate: Cond: i34 <= $i47  
(define-const var3773 var3372 var3372-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3773 "UTF8 string too large")) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("UTF8 string too large") 

(declare-const var3773!1 var3372)
(declare-const var3947 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), var3372-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var771=com.alibaba.fastjson2.internal.asm.ByteVector, var302=r1, var3627=r0, var1721=null_type, var611=i1, var1701=i0, var3237=i34, var575=i35, var1412=$i47, var3372=java.lang.IllegalArgumentException, var3773=$r12, var3947="UTF8 string too large"}
; {com.alibaba.fastjson2.internal.asm.ByteVector=var771, r1=var302, r0=var3627, null_type=var1721, i1=var611, i0=var1701, i34=var3237, i35=var575, $i47=var1412, java.lang.IllegalArgumentException=var3372, $r12=var3773, "UTF8 string too large"=var3947}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.ByteVector;	r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i34 = i1;	i35 = i1;	if i35 >= i0 goto $i47 = (int) 65535;	$i47 = (int) 65535;	if i34 <= $i47 goto $i2 = r1.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	$r12 = new java.lang.IllegalArgumentException;	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("UTF8 string too large");	throw $r12
;block_num 4