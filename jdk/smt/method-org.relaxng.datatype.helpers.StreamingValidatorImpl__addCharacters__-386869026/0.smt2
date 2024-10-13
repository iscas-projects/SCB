(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-772521324 (var814) String)
(declare-fun append/-420189427 (String (Array Int Int) Int Int) String)
(declare-const null-var814 var814)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3477 var814) ; Statement: r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl 
(assert (not (= var3477 null-var814)))
(declare-const var2547 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2547 null-__Array__Int__Int__)))
(declare-const var3544 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3544 null-Int)))
(declare-const var2830 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2830 null-Int)))
(define-const var884 String (buffer/-772521324 var3477)) ; Statement: $r2 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer> 
(assert true)
;(assert (append/-420189427 var884 var2547 var3544 var2830)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>(r1, i0, i1) 

(declare-const var884!1 String)
(declare-const var2547!1 (Array Int Int))
(declare-const var3544!1 Int)
(declare-const var2830!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], java.lang.StringBuffer), append/-420189427=([java.lang.StringBuffer, char[], int, int], java.lang.StringBuffer)}
; {var814=org.relaxng.datatype.helpers.StreamingValidatorImpl, var3477=r0, var2547=r1, var3544=i0, var2830=i1, var884=$r2}
; {org.relaxng.datatype.helpers.StreamingValidatorImpl=var814, r0=var3477, r1=var2547, i0=var3544, i1=var2830, $r2=var884}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>": 1}
;stmts r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>(r1, i0, i1);	return
;block_num 1