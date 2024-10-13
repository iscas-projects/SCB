(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(declare-const null-var865 var865)
(declare-const null-String String)
(declare-const var3887 var865) ; Statement: r1 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var3887 null-var865)))
(declare-const var1180 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1180 null-String)))
(define-const var2949 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var909 Int (length/-1112840705 var1180)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(define-const var760 Int (- var909 1)) ; Statement: $i1 = $i0 - 1 
 ; Statement: if i7 >= $i1 goto return 
(assert (>= var2949 var760)) ; Cond: i7 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int)}
; {var865=org.javacc.parser.CodeGenerator, var3887=r1, var1180=r0, var2949=i7, var909=$i0, var760=$i1}
; {org.javacc.parser.CodeGenerator=var865, r1=var3887, r0=var1180, i7=var2949, $i0=var909, $i1=var760}
;seq <java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r1 := @this: org.javacc.parser.CodeGenerator;	r0 := @parameter0: java.lang.StringBuffer;	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	$i1 = $i0 - 1;	if i7 >= $i1 goto return;	return
;block_num 3