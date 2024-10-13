(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var981 0)
(declare-sort var3314 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3314__ (Array Int var3314))
(declare-const var40 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var40 null-String)))
(declare-const var3719 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var3719 null-Int)))
(declare-const var2662 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2662 null-Int)))
(declare-const var1110 (Array Int var3314)) ; Statement: r1 := @parameter3: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] 
(assert (not (= var1110 null-__Array__Int__var3314__)))
(define-const var647 Int var3719) ; Statement: i0 = i5 
(define-const var2348 Int 0) ; Statement: i6 = 0 
(assert (and true (and (> (str.len var40) var3719) (<= 0 var3719))))
(define-const var3858 Int (charAt/698050440 var40 var3719)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i5) 
(define-const var2862 Int (cast-from-Int-to-Int var3858)) ; Statement: $i12 = (int) c7 
 ; Statement: if $i12 != 41 goto $i13 = (int) c7 
(assert (not (not (= var2862 41)))) ; Negate: Cond: $i12 != 41  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var40=r0, var981=null_type, var3719=i5, var2662=i1, var3314=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var1110=r1, var647=i0, var2348=i6, var3858=c7, var2862=$i12}
; {r0=var40, null_type=var981, i5=var3719, i1=var2662, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var3314, r1=var1110, i0=var647, i6=var2348, c7=var3858, $i12=var2862}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 := @parameter1: int;	i1 := @parameter2: int;	r1 := @parameter3: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[];	i0 = i5;	i6 = 0;	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i5);	$i12 = (int) c7;	if $i12 != 41 goto $i13 = (int) c7;	return 0
;block_num 2