(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-294971588 (var2049) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2049 var2049)
(declare-const null-String String)
(declare-const var477 var2049) ; Statement: r0 := @this: org.apache.commons.io.output.StringBuilderWriter 
(assert (not (= var477 null-var2049)))
(declare-const var2004 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2004 null-String)))
(define-const var2602 String (builder/-294971588 var477)) ; Statement: $r2 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> 
(assert true)
;(assert (append/-13659068 var2602 var2004)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>(r1) 
(declare-const var2602!1 String)
(assert (str.prefixof var2602 var2602!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-294971588=([org.apache.commons.io.output.StringBuilderWriter], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder)}
; {var2049=org.apache.commons.io.output.StringBuilderWriter, var477=r0, var2004=r1, var2602=$r2}
; {org.apache.commons.io.output.StringBuilderWriter=var2049, r0=var477, r1=var2004, $r2=var2602}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.commons.io.output.StringBuilderWriter;	r1 := @parameter0: java.lang.CharSequence;	$r2 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>(r1);	return r0
;block_num 1