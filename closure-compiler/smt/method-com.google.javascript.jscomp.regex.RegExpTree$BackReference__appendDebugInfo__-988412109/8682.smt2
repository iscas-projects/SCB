(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var44 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun groupIndex/-507954453 (var44) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const null-var44 var44)
(declare-const null-String String)
(declare-const var3700 var44) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$BackReference 
(assert (not (= var3700 null-var44)))
(declare-const var2426 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2426 null-String)))
(define-const var3054 Int (groupIndex/-507954453 var3700)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$BackReference: int groupIndex> 
(assert true)
;(assert (append/-1001720160 var2426 var3054)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2426!1 String)
(assert (str.prefixof var2426 var2426!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {groupIndex/-507954453=([com.google.javascript.jscomp.regex.RegExpTree$BackReference], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var44=com.google.javascript.jscomp.regex.RegExpTree$BackReference, var3700=r1, var2426=r0, var3054=$i0}
; {com.google.javascript.jscomp.regex.RegExpTree$BackReference=var44, r1=var3700, r0=var2426, $i0=var3054}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$BackReference;	r0 := @parameter0: java.lang.StringBuilder;	$i0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$BackReference: int groupIndex>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	return
;block_num 1