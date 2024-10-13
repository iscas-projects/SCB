(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1829 0)
(declare-sort var383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ahead/1052581389 (var1829 String) Bool)
(declare-const null-var1829 var1829)
(declare-const null-String String)
(declare-const var754 var1829) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.HbsLexer 
(assert (not (= var754 null-var1829)))
(declare-const var2931 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2931 null-String)))
(assert true)
(define-const var3673 Bool (ahead/1052581389 var754 var2931)) ; Statement: $z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsLexer: boolean ahead(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var3673 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {ahead/1052581389=([com.github.jknack.handlebars.internal.HbsLexer, java.lang.String], boolean)}
; {var1829=com.github.jknack.handlebars.internal.HbsLexer, var754=r0, var2931=r1, var383=null_type, var3673=$z0}
; {com.github.jknack.handlebars.internal.HbsLexer=var1829, r0=var754, r1=var2931, null_type=var383, $z0=var3673}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.HbsLexer;	r1 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<com.github.jknack.handlebars.internal.HbsLexer: boolean ahead(java.lang.String)>(r1);	if $z0 == 0 goto return 0;	return 0
;block_num 2