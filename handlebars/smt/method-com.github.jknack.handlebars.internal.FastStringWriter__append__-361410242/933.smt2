(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-421028705 (var2069) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2069 var2069)
(declare-const null-String String)
(declare-const var902 var2069) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var902 null-var2069)))
(declare-const var1175 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var1175 null-String)))
(define-const var801 String (buffer/-421028705 var902)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/-13659068 var801 var1175)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>(r1) 
(declare-const var801!1 String)
(assert (str.prefixof var801 var801!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder)}
; {var2069=com.github.jknack.handlebars.internal.FastStringWriter, var902=r0, var1175=r1, var801=$r2}
; {com.github.jknack.handlebars.internal.FastStringWriter=var2069, r0=var902, r1=var1175, $r2=var801}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	r1 := @parameter0: java.lang.CharSequence;	$r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>(r1);	return r0
;block_num 1