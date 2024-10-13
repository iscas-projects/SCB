(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var742 0)
(declare-sort var1174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-425049343 (var742) String)
(declare-fun tag/-425049343 (var742) String)
(declare-const null-var742 var742)
(declare-const null-String String)
(declare-const var3137 var742) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk 
(assert (not (= var3137 null-var742)))
(define-const var1589 String (label/-425049343 var3137)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag> 
(assert (= var1589 null-String)) ; Cond: $r1 == null 
(define-const var250 String (tag/-425049343 var3137)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-425049343=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk], java.lang.String), tag/-425049343=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk], java.lang.String)}
; {var742=com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk, var3137=r0, var1589=$r1, var1174=null_type, var250=$r2}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk=var742, r0=var3137, $r1=var1589, null_type=var1174, $r2=var250}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String label>;	if $r1 == null goto $r2 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag>;	$r2 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TagChunk: java.lang.String tag>;	return $r2
;block_num 2