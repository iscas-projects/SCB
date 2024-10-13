(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2428 0)
(declare-sort var107 0)
(declare-sort var773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var773-init () var773)
(declare-fun <init>/750527633 (var773) void)
(declare-const null-var2428 var2428)
(declare-const null-String String)
(declare-const var2130 var2428) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.ByteVector 
(assert (not (= var2130 null-var2428)))
(declare-const var1080 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1080 null-String)))
(assert true)
(define-const var3638 Int (length/-134980193 var1080)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3419 Int (cast-from-Int-to-Int 65535)) ; Statement: $i16 = (int) 65535 
 ; Statement: if i0 <= $i16 goto i11 = r1.<jdk.internal.org.objectweb.asm.ByteVector: int length> 
(assert (not (<= var3638 var3419))) ; Negate: Cond: i0 <= $i16  
(define-const var1139 var773 var773-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/750527633 var1139)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>()>() 

(declare-const var1139!1 var773)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int), var773-init=([], java.lang.IllegalArgumentException), <init>/750527633=([java.lang.IllegalArgumentException], void)}
; {var2428=jdk.internal.org.objectweb.asm.ByteVector, var2130=r1, var1080=r0, var107=null_type, var3638=i0, var3419=$i16, var773=java.lang.IllegalArgumentException, var1139=$r6}
; {jdk.internal.org.objectweb.asm.ByteVector=var2428, r1=var2130, r0=var1080, null_type=var107, i0=var3638, $i16=var3419, java.lang.IllegalArgumentException=var773, $r6=var1139}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.ByteVector;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i16 = (int) 65535;	if i0 <= $i16 goto i11 = r1.<jdk.internal.org.objectweb.asm.ByteVector: int length>;	$r6 = new java.lang.IllegalArgumentException;	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>()>();	throw $r6
;block_num 2