(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextUniqueNameId/538489916 (var841) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var841 var841)
(declare-const var401 var841) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var401 null-var841)))
(assert true)
(define-const var2693 Int (nextUniqueNameId/538489916 var401)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: int nextUniqueNameId()>() 
(define-const var3638 String (String_valueOf/1240665136 var2693)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {nextUniqueNameId/538489916=([com.google.javascript.jscomp.Compiler], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var841=com.google.javascript.jscomp.Compiler, var401=r0, var2693=$i0, var3638=$r1}
; {com.google.javascript.jscomp.Compiler=var841, r0=var401, $i0=var2693, $r1=var3638}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: int nextUniqueNameId()>();	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1