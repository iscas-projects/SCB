(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1997898014 (var1346) String)
(define-fun append/-13659068 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1346 var1346)
(declare-const null-String String)
(declare-const var2754 var1346) ; Statement: r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer 
(assert (not (= var2754 null-var1346)))
(declare-const var764 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var764 null-String)))
(define-const var2849 String (buffer/1997898014 var2754)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/-13659068 var2849 var764)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>(r1) 
(declare-const var2849!1 String)
(assert (str.prefixof var2849 var2849!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1997898014=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.StringBuilder), append/-13659068=([java.lang.StringBuilder, java.lang.CharSequence], java.lang.StringBuilder)}
; {var1346=com.github.jknack.handlebars.Options$InMemoryBuffer, var2754=r0, var764=r1, var2849=$r2}
; {com.github.jknack.handlebars.Options$InMemoryBuffer=var1346, r0=var2754, r1=var764, $r2=var2849}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer;	r1 := @parameter0: java.lang.CharSequence;	$r2 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>(r1);	return r0
;block_num 1