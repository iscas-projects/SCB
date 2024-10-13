(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldSeparator/-417041427 (var768) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var768 var768)
(declare-const null-String String)
(declare-const var307 var768) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var307 null-var768)))
(declare-const var1803 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1803 null-String)))
(define-const var1534 String (fieldSeparator/-417041427 var307)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String fieldSeparator> 
(assert true)
;(assert (append/1560614132 var1803 var1534)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1803!1 String)
(assert (str.prefixof var1803 var1803!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldSeparator/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var768=org.apache.commons.lang3.builder.ToStringStyle, var307=r1, var1803=r0, var1534=$r2}
; {org.apache.commons.lang3.builder.ToStringStyle=var768, r1=var307, r0=var1803, $r2=var1534}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String fieldSeparator>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1