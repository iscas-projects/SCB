(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-421028705 (var653) String)
(declare-fun append/50905802 (String String Int Int) String)
(declare-const null-var653 var653)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3950 var653) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var3950 null-var653)))
(declare-const var854 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var854 null-String)))
(declare-const var2685 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2685 null-Int)))
(declare-const var1389 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1389 null-Int)))
(define-const var2511 String (buffer/-421028705 var3950)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/50905802 var2511 var854 var2685 var1389)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1) 
(declare-const var2511!1 String)
(assert (str.prefixof var2511 var2511!1))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder)}
; {var653=com.github.jknack.handlebars.internal.FastStringWriter, var3950=r0, var854=r1, var2685=i0, var1389=i1, var2511=$r2}
; {com.github.jknack.handlebars.internal.FastStringWriter=var653, r0=var3950, r1=var854, i0=var2685, i1=var1389, $r2=var2511}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1);	return r0
;block_num 1