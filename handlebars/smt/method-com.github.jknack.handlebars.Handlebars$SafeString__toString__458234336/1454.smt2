(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun content/1602771272 (var545) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var545 var545)
(declare-const var3079 var545) ; Statement: r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString 
(assert (not (= var3079 null-var545)))
(define-const var134 String (content/1602771272 var3079)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content> 
(define-const var2452 String (String_toString/-1426662429 var134)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {content/1602771272=([com.github.jknack.handlebars.Handlebars$SafeString], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var545=com.github.jknack.handlebars.Handlebars$SafeString, var3079=r0, var134=$r1, var2452=$r2}
; {com.github.jknack.handlebars.Handlebars$SafeString=var545, r0=var3079, $r1=var134, $r2=var2452}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString;	$r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content>;	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 1