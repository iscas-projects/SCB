(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2856 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2856 null-String)))
(declare-const var3423 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3423 null-String)))
(assert true)
(define-const var913 Int (length/-134980193 var2856)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001_\u0001") 
(assert (not (not (= var913 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2856=r0, var3131=null_type, var3423=r1, var913=$i0}
; {r0=var2856, null_type=var3131, r1=var3423, $i0=var913}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r0, r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001_\u0001");	return r1
;block_num 2