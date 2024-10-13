(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentStart/-417041427 (var3720) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3720 var3720)
(declare-const null-String String)
(declare-const var185 var3720) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var185 null-var3720)))
(declare-const var630 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var630 null-String)))
(define-const var224 String (contentStart/-417041427 var185)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String contentStart> 
(assert true)
;(assert (append/1560614132 var630 var224)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var630!1 String)
(assert (str.prefixof var630 var630!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {contentStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3720=org.apache.commons.lang3.builder.ToStringStyle, var185=r1, var630=r0, var224=$r2}
; {org.apache.commons.lang3.builder.ToStringStyle=var3720, r1=var185, r0=var630, $r2=var224}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String contentStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1