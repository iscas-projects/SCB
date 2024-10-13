(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1415 0)
(declare-sort var2591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-421028705 (var1415) String)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1415 var1415)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3251 var1415) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var3251 null-var1415)))
(declare-const var2349 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2349 null-String)))
(declare-const var429 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var429 null-Int)))
(declare-const var1740 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1740 null-Int)))
(define-const var944 String (buffer/-421028705 var3251)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/50905802 var944 (cast-from-String-to-String var2349) var429 var1740)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1) 
(declare-const var944!1 String)
(assert (str.prefixof var944 var944!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1415=com.github.jknack.handlebars.internal.FastStringWriter, var3251=r0, var2349=r1, var2591=null_type, var429=i0, var1740=i1, var944=$r2}
; {com.github.jknack.handlebars.internal.FastStringWriter=var1415, r0=var3251, r1=var2349, null_type=var2591, i0=var429, i1=var1740, $r2=var944}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1);	return
;block_num 1