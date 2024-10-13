(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-2106681294 (var3431) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3431 var3431)
(declare-const var3319 var3431) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var3319 null-var3431)))
(define-const var3648 String (buf/-2106681294 var3319)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var3648 125)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var3648!1 String)
(assert (str.prefixof var3648 var3648!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3431=jdk.nashorn.internal.ir.debug.JSONWriter, var3319=r0, var3648=$r1}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var3431, r0=var3319, $r1=var3648}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	$r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 1