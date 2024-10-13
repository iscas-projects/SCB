(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-421028705 (var2139) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2139 var2139)
(declare-const null-Int Int)
(declare-const var1884 var2139) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var1884 null-var2139)))
(declare-const var3970 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3970 null-Int)))
(define-const var3244 String (buffer/-421028705 var1884)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> 
(define-const var423 Int (cast-from-Int-to-Int var3970)) ; Statement: $c1 = (char) i0 
(assert true)
;(assert (append/-1166366385 var3244 var423)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3244!1 String)
(assert (str.prefixof var3244 var3244!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2139=com.github.jknack.handlebars.internal.FastStringWriter, var1884=r0, var3970=i0, var3244=$r1, var423=$c1}
; {com.github.jknack.handlebars.internal.FastStringWriter=var2139, r0=var1884, i0=var3970, $r1=var3244, $c1=var423}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	i0 := @parameter0: int;	$r1 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer>;	$c1 = (char) i0;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	return
;block_num 1