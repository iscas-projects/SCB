(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-294971588 (var2178) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2178 var2178)
(declare-const null-Int Int)
(declare-const var2734 var2178) ; Statement: r0 := @this: org.apache.commons.io.output.StringBuilderWriter 
(assert (not (= var2734 null-var2178)))
(declare-const var3072 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3072 null-Int)))
(define-const var530 String (builder/-294971588 var2734)) ; Statement: $r1 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder> 
(assert true)
;(assert (append/-1166366385 var530 var3072)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var530!1 String)
(assert (str.prefixof var530 var530!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-294971588=([org.apache.commons.io.output.StringBuilderWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2178=org.apache.commons.io.output.StringBuilderWriter, var2734=r0, var3072=c0, var530=$r1}
; {org.apache.commons.io.output.StringBuilderWriter=var2178, r0=var2734, c0=var3072, $r1=var530}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.apache.commons.io.output.StringBuilderWriter;	c0 := @parameter0: char;	$r1 = r0.<org.apache.commons.io.output.StringBuilderWriter: java.lang.StringBuilder builder>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	return r0
;block_num 1