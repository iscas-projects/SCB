(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun content/1602771272 (var2306) String)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-const null-var2306 var2306)
(declare-const null-Int Int)
(declare-const var3031 var2306) ; Statement: r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString 
(assert (not (= var3031 null-var2306)))
(declare-const var2741 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2741 null-Int)))
(define-const var1881 String (content/1602771272 var3031)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content> 
(define-const var548 Int (String_charAt/1466887330 var1881 var2741)) ; Statement: $c1 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>(i0) 
 ; Statement: return $c1 
(check-sat)
(get-model)
(get-unsat-core)
; {content/1602771272=([com.github.jknack.handlebars.Handlebars$SafeString], java.lang.CharSequence), String_charAt/1466887330=([java.lang.CharSequence, int], char)}
; {var2306=com.github.jknack.handlebars.Handlebars$SafeString, var3031=r0, var2741=i0, var1881=$r1, var548=$c1}
; {com.github.jknack.handlebars.Handlebars$SafeString=var2306, r0=var3031, i0=var2741, $r1=var1881, $c1=var548}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Handlebars$SafeString;	i0 := @parameter0: int;	$r1 = r0.<com.github.jknack.handlebars.Handlebars$SafeString: java.lang.CharSequence content>;	$c1 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>(i0);	return $c1
;block_num 1