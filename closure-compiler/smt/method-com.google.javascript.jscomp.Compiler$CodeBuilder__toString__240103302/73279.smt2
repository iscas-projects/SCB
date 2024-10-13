(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-1774502042 (var2792) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2792 var2792)
(declare-const var2823 var2792) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var2823 null-var2792)))
(define-const var3875 String (sb/-1774502042 var2823)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> 
(assert true)
(define-const var3642 String (toString/-2075883882 var3875)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2792=com.google.javascript.jscomp.Compiler$CodeBuilder, var2823=r0, var3875=$r1, var3642=$r2}
; {com.google.javascript.jscomp.Compiler$CodeBuilder=var2792, r0=var2823, $r1=var3875, $r2=var3642}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder;	$r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1