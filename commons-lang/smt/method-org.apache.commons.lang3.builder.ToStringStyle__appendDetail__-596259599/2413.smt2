(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3095 0)
(declare-sort var3533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/1845021834 (String Int) String)
(declare-const null-var3095 var3095)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3754 var3095) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var3754 null-var3095)))
(declare-const var351 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var351 null-String)))
(declare-const var210 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var210 null-String)))
(declare-const var331 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var331 null-Int)))
(define-const var2037 Int (cast-from-Int-to-Int var331)) ; Statement: $i1 = (int) s0 
(assert true)
;(assert (append/1845021834 var351 var2037)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 

(declare-const var351!1 String)
(declare-const var2037!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer)}
; {var3095=org.apache.commons.lang3.builder.ToStringStyle, var3754=r1, var351=r0, var210=r2, var3533=null_type, var331=s0, var2037=$i1}
; {org.apache.commons.lang3.builder.ToStringStyle=var3095, r1=var3754, r0=var351, r2=var210, null_type=var3533, s0=var331, $i1=var2037}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(int)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r2 := @parameter1: java.lang.String;	s0 := @parameter2: short;	$i1 = (int) s0;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	return
;block_num 1