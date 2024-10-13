(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1997898014 (var2669) String)
(declare-fun charAt/1621160911 (String Int) Int)
(declare-const null-var2669 var2669)
(declare-const null-Int Int)
(declare-const var142 var2669) ; Statement: r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer 
(assert (not (= var142 null-var2669)))
(declare-const var3261 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3261 null-Int)))
(define-const var2367 String (buffer/1997898014 var142)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> 
(assert true)
(define-const var559 Int (charAt/1621160911 var2367 var3261)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.StringBuilder: char charAt(int)>(i0) 
 ; Statement: return $c1 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1997898014=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.StringBuilder), charAt/1621160911=([java.lang.StringBuilder, int], char)}
; {var2669=com.github.jknack.handlebars.Options$InMemoryBuffer, var142=r0, var3261=i0, var2367=$r1, var559=$c1}
; {com.github.jknack.handlebars.Options$InMemoryBuffer=var2669, r0=var142, i0=var3261, $r1=var2367, $c1=var559}
;seq <java.lang.StringBuilder: char charAt(int)>
;cnt {"<java.lang.StringBuilder: char charAt(int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer;	i0 := @parameter0: int;	$r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer>;	$c1 = virtualinvoke $r1.<java.lang.StringBuilder: char charAt(int)>(i0);	return $c1
;block_num 1