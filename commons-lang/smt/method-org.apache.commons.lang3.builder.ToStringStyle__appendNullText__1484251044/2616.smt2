(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1059 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nullText/-417041427 (var1059) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1059 var1059)
(declare-const null-String String)
(declare-const var300 var1059) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var300 null-var1059)))
(declare-const var1276 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1276 null-String)))
(declare-const var2920 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2920 null-String)))
(define-const var3070 String (nullText/-417041427 var300)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String nullText> 
(assert true)
;(assert (append/1560614132 var1276 var3070)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1276!1 String)
(assert (str.prefixof var1276 var1276!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {nullText/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var1059=org.apache.commons.lang3.builder.ToStringStyle, var300=r1, var1276=r0, var2920=r3, var3271=null_type, var3070=$r2}
; {org.apache.commons.lang3.builder.ToStringStyle=var1059, r1=var300, r0=var1276, r3=var2920, null_type=var3271, $r2=var3070}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r3 := @parameter1: java.lang.String;	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String nullText>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1