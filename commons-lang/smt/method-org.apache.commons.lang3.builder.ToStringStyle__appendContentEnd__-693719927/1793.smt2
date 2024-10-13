(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var41 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentEnd/-417041427 (var41) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var41 var41)
(declare-const null-String String)
(declare-const var289 var41) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var289 null-var41)))
(declare-const var3488 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3488 null-String)))
(define-const var3787 String (contentEnd/-417041427 var289)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String contentEnd> 
(assert true)
;(assert (append/1560614132 var3488 var3787)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3488!1 String)
(assert (str.prefixof var3488 var3488!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contentEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var41=org.apache.commons.lang3.builder.ToStringStyle, var289=r1, var3488=r0, var3787=$r2}
; {org.apache.commons.lang3.builder.ToStringStyle=var41, r1=var289, r0=var3488, $r2=var3787}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String contentEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1