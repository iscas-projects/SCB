(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1997898014 (var1652) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1652 var1652)
(declare-const null-Int Int)
(declare-const var2735 var1652) ; Statement: r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer 
(assert (not (= var2735 null-var1652)))
(declare-const var2923 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2923 null-Int)))
(define-const var1911 String (buffer/1997898014 var2735)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/-1166366385 var1911 var2923)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var1911!1 String)
(assert (str.prefixof var1911 var1911!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1997898014=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1652=com.github.jknack.handlebars.Options$InMemoryBuffer, var2735=r0, var2923=c0, var1911=$r1}
; {com.github.jknack.handlebars.Options$InMemoryBuffer=var1652, r0=var2735, c0=var2923, $r1=var1911}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer;	c0 := @parameter0: char;	$r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	return r0
;block_num 1