(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort var3787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-421028705 (var2650) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2650 var2650)
(declare-const null-String String)
(declare-const var1883 var2650) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter 
(assert (not (= var1883 null-var2650)))
(declare-const var3209 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3209 null-String)))
(define-const var2576 String (buffer/-421028705 var1883)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/672562846 var2576 var3209)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2576!1 String)
(assert (= var2576!1 (str.++ var2576 var3209)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-421028705=([com.github.jknack.handlebars.internal.FastStringWriter], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2650=com.github.jknack.handlebars.internal.FastStringWriter, var1883=r0, var3209=r1, var3787=null_type, var2576=$r2}
; {com.github.jknack.handlebars.internal.FastStringWriter=var2650, r0=var1883, r1=var3209, null_type=var3787, $r2=var2576}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.FastStringWriter;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.github.jknack.handlebars.internal.FastStringWriter: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1