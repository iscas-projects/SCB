(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var310 0)
(declare-sort var2231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/955095398 (var310) String)
(declare-fun tag/955095398 (var310) String)
(declare-const null-var310 var310)
(declare-const null-String String)
(declare-const var162 var310) ; Statement: r0 := @this: org.antlr.v4.runtime.tree.pattern.TagChunk 
(assert (not (= var162 null-var310)))
(define-const var2517 String (label/955095398 var162)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag> 
(assert (= var2517 null-String)) ; Cond: $r1 == null 
(define-const var1745 String (tag/955095398 var162)) ; Statement: $r2 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {label/955095398=([org.antlr.v4.runtime.tree.pattern.TagChunk], java.lang.String), tag/955095398=([org.antlr.v4.runtime.tree.pattern.TagChunk], java.lang.String)}
; {var310=org.antlr.v4.runtime.tree.pattern.TagChunk, var162=r0, var2517=$r1, var2231=null_type, var1745=$r2}
; {org.antlr.v4.runtime.tree.pattern.TagChunk=var310, r0=var162, $r1=var2517, null_type=var2231, $r2=var1745}
;seq 
;cnt {}
;stmts r0 := @this: org.antlr.v4.runtime.tree.pattern.TagChunk;	$r1 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String label>;	if $r1 == null goto $r2 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag>;	$r2 = r0.<org.antlr.v4.runtime.tree.pattern.TagChunk: java.lang.String tag>;	return $r2
;block_num 2