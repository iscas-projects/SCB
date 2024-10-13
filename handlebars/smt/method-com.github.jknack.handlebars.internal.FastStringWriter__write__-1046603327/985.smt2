(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-421028705 (var2920) String)
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-const null-var2920 var2920)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var75 var2920) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var75 null-var2920)))
(declare-const var2079 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2079 null-__Array__Int__Int__)))
(define-const var2724 String (buffer/-421028705 var75)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/109888945 var2724 var2079)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>(r1) 
(declare-const var2724!1 String)
(assert (str.prefixof var2724 var2724!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder)}
; {var2920=com.github.jknack.handlebars.internal.FastStringWriter, var75=r0, var2079=r1, var2724=$r2}
; {com.github.jknack.handlebars.internal.FastStringWriter=var2920, r0=var75, r1=var2079, $r2=var2724}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	r1 := @parameter0: char[];	$r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>(r1);	return
;block_num 1