(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var681 0)
(declare-sort var3035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var681 var681)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3005 var681) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var3005 null-var681)))
(declare-const var2692 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2692 null-String)))
(declare-const var2005 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2005 null-String)))
(declare-const var2976 Int) ; Statement: b0 := @parameter2: byte 
(assert (not (= var2976 null-Int)))
(define-const var2332 Int (cast-from-Int-to-Int var2976)) ; Statement: $i1 = (int) b0 
(assert true)
;(assert (append/1845021834 var2692 var2332)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 

(declare-const var2692!1 String)
(declare-const var2332!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var681=org.apache.commons.lang3.builder.ToStringStyle, var3005=r1, var2692=r0, var2005=r2, var3035=null_type, var2976=b0, var2332=$i1}
; {org.apache.commons.lang3.builder.ToStringStyle=var681, r1=var3005, r0=var2692, r2=var2005, null_type=var3035, b0=var2976, $i1=var2332}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	b0 := @parameter2: byte;	$i1 = (int) b0;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	return
;block_num 1