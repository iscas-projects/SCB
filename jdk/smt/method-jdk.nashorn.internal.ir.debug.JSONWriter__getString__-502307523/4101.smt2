(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-2106681294 (var1252) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1252 var1252)
(declare-const var2252 var1252) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter 
(assert (not (= var2252 null-var1252)))
(define-const var3333 String (buf/-2106681294 var2252)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf> 
(assert true)
(define-const var825 String (toString/-2075883882 var3333)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-2106681294=([jdk.nashorn.internal.ir.debug.JSONWriter], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1252=jdk.nashorn.internal.ir.debug.JSONWriter, var2252=r0, var3333=$r1, var825=$r2}
; {jdk.nashorn.internal.ir.debug.JSONWriter=var1252, r0=var2252, $r1=var3333, $r2=var825}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.JSONWriter;	$r1 = r0.<jdk.nashorn.internal.ir.debug.JSONWriter: java.lang.StringBuilder buf>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1