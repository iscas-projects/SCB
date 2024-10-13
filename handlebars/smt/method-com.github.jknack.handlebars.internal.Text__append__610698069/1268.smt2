(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/-1579571732 (var3930) String)
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-const null-var3930 var3930)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var810 var3930) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.Text 
(assert (not (= var810 null-var3930)))
(declare-const var2325 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2325 null-__Array__Int__Int__)))
(define-const var2021 String (text/-1579571732 var810)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text> 
(assert true)
;(assert (append/109888945 var2021 var2325)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>(r1) 
(declare-const var2021!1 String)
(assert (str.prefixof var2021 var2021!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {text/-1579571732=([com.github.jknack.handlebars.internal.Text], java.lang.StringBuilder), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder)}
; {var3930=com.github.jknack.handlebars.internal.Text, var810=r0, var2325=r1, var2021=$r2}
; {com.github.jknack.handlebars.internal.Text=var3930, r0=var810, r1=var2325, $r2=var2021}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.Text;	r1 := @parameter0: char[];	$r2 = r0.<com.github.jknack.handlebars.internal.Text: java.lang.StringBuilder text>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>(r1);	return r0
;block_num 1