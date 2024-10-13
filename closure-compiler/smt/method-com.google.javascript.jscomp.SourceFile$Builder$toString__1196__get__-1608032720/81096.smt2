(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2268 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cap0/-645093918 (var2268) String)
(declare-fun toString/-1749764803 (String) String)
(declare-const null-var2268 var2268)
(declare-const var2178 var2268) ; Statement: $r0 := @this: com.google.javascript.jscomp.SourceFile$Builder$toString__1196 
(assert (not (= var2178 null-var2268)))
(define-const var1926 String (cap0/-645093918 var2178)) ; Statement: $r1 = $r0.<com.google.javascript.jscomp.SourceFile$Builder$toString__1196: java.lang.String cap0> 
(assert true)
(define-const var3792 String (toString/-1749764803 var1926)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cap0/-645093918=([com.google.javascript.jscomp.SourceFile$Builder$toString__1196], java.lang.String), toString/-1749764803=([java.lang.String], java.lang.String)}
; {var2268=com.google.javascript.jscomp.SourceFile$Builder$toString__1196, var2178=$r0, var1926=$r1, var3792=$r2}
; {com.google.javascript.jscomp.SourceFile$Builder$toString__1196=var2268, $r0=var2178, $r1=var1926, $r2=var3792}
;seq <java.lang.String: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toString()>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.SourceFile$Builder$toString__1196;	$r1 = $r0.<com.google.javascript.jscomp.SourceFile$Builder$toString__1196: java.lang.String cap0>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toString()>();	return $r2
;block_num 1