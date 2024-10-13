(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sb/-1774502042 (var1969) String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-var1969 var1969)
(declare-const var535 var1969) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder 
(assert (not (= var535 null-var1969)))
(define-const var1721 String (sb/-1774502042 var535)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb> 
(assert true)
(define-const var1538 Int (length/-171891354 var1721)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {sb/-1774502042=([com.google.javascript.jscomp.Compiler$CodeBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var1969=com.google.javascript.jscomp.Compiler$CodeBuilder, var535=r0, var1721=$r1, var1538=$i0}
; {com.google.javascript.jscomp.Compiler$CodeBuilder=var1969, r0=var535, $r1=var1721, $i0=var1538}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler$CodeBuilder;	$r1 = r0.<com.google.javascript.jscomp.Compiler$CodeBuilder: java.lang.StringBuilder sb>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	return $i0
;block_num 1