(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var799 0)
(declare-sort var3739 0)
(declare-sort var916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var916-init () var916)
(declare-fun <init>/875830710 (var916 String) void)
(declare-const null-var799 var799)
(declare-const null-String String)
(declare-const var3915 var799) ; Statement: r1 := @this: com.alibaba.fastjson2.internal.asm.ByteVector 
(assert (not (= var3915 null-var799)))
(declare-const var2268 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2268 null-String)))
(assert true)
(define-const var619 Int (length/-134980193 var2268)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1105 Int (cast-from-Int-to-Int 65535)) ; Statement: $i16 = (int) 65535 
 ; Statement: if i0 <= $i16 goto i11 = r1.<com.alibaba.fastjson2.internal.asm.ByteVector: int length> 
(assert (not (<= var619 var1105))) ; Negate: Cond: i0 <= $i16  
(define-const var1517 var916 var916-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1517 "UTF8 string too large")) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("UTF8 string too large") 

(declare-const var1517!1 var916)
(declare-const var908 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), var916-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var799=com.alibaba.fastjson2.internal.asm.ByteVector, var3915=r1, var2268=r0, var3739=null_type, var619=i0, var1105=$i16, var916=java.lang.IllegalArgumentException, var1517=$r5, var908="UTF8 string too large"}
; {com.alibaba.fastjson2.internal.asm.ByteVector=var799, r1=var3915, r0=var2268, null_type=var3739, i0=var619, $i16=var1105, java.lang.IllegalArgumentException=var916, $r5=var1517, "UTF8 string too large"=var908}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.internal.asm.ByteVector;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i16 = (int) 65535;	if i0 <= $i16 goto i11 = r1.<com.alibaba.fastjson2.internal.asm.ByteVector: int length>;	$r5 = new java.lang.IllegalArgumentException;	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("UTF8 string too large");	throw $r5
;block_num 2