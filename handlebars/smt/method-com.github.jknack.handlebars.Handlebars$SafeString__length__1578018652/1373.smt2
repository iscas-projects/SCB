(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun content/1602771272 (var1442) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var1442 var1442)
(declare-const var580 var1442) ; Statement: r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString 
(assert (not (= var580 null-var1442)))
(define-const var1855 String (content/1602771272 var580)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content> 
(define-const var1810 Int (String_length/-667254855 var1855)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {content/1602771272=([com.github.jknack.handlebars.Handlebars$SafeString], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var1442=com.github.jknack.handlebars.Handlebars$SafeString, var580=r0, var1855=$r1, var1810=$i0}
; {com.github.jknack.handlebars.Handlebars$SafeString=var1442, r0=var580, $r1=var1855, $i0=var1810}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString;	$r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	return $i0
;block_num 1