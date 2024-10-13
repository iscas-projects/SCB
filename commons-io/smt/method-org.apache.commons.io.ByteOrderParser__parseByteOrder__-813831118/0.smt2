(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var671 0)
(declare-sort var3085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1997666440 (var3085) String)
(declare-const null-String String)
(declare-const var3085-BIG_ENDIAN var3085)
(declare-const var2330 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2330 null-String)))
(define-const var3762 var3085 var3085-BIG_ENDIAN) ; Statement: $r0 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN> 
(assert true)
(define-const var1231 String (toString/-1997666440 var3762)) ; Statement: $r2 = virtualinvoke $r0.<java.nio.ByteOrder: java.lang.String toString()>() 
(assert true)
(define-const var3492 Bool (= var1231 var2330)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
(assert (not (= (ite var3492 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1638 var3085 var3085-BIG_ENDIAN) ; Statement: $r17 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN> 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1997666440=([java.nio.ByteOrder], java.lang.String)}
; {var2330=r1, var671=null_type, var3085=java.nio.ByteOrder, var3762=$r0, var1231=$r2, var3492=$z0, var1638=$r17}
; {r1=var2330, null_type=var671, java.nio.ByteOrder=var3085, $r0=var3762, $r2=var1231, $z0=var3492, $r17=var1638}
;seq <java.nio.ByteOrder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN>;	$r2 = virtualinvoke $r0.<java.nio.ByteOrder: java.lang.String toString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	$r17 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN>;	return $r17
;block_num 2