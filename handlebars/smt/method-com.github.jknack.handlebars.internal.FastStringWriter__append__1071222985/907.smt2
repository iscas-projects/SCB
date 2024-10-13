(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-421028705 (var3103) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3103 var3103)
(declare-const null-Int Int)
(declare-const var1194 var3103) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var1194 null-var3103)))
(declare-const var3404 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3404 null-Int)))
(define-const var2948 String (buffer/-421028705 var1194)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/-1166366385 var2948 var3404)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2948!1 String)
(assert (str.prefixof var2948 var2948!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3103=com.github.jknack.handlebars.internal.FastStringWriter, var1194=r0, var3404=c0, var2948=$r1}
; {com.github.jknack.handlebars.internal.FastStringWriter=var3103, r0=var1194, c0=var3404, $r1=var2948}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	c0 := @parameter0: char;	$r1 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	return r0
;block_num 1