(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-2106681294 (var1018) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1018 var1018)
(declare-const var3682 var1018) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var3682 null-var1018)))
(define-const var537 String (buf/-2106681294 var3682)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
;(assert (append/-1166366385 var537 44)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var537!1 String)
(assert (str.prefixof var537 var537!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1018=jdk.nashorn.internal.ir.debug.JSONWriter, var3682=r0, var537=$r1}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var1018, r0=var3682, $r1=var537}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	$r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	return
;block_num 1