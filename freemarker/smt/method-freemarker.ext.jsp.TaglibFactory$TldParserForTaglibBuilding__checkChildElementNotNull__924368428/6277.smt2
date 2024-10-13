(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var460 0)
(declare-sort var2385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var460 var460)
(declare-const null-String String)
(declare-const var3407 var460) ; Statement: r10 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var3407 null-var460)))
(declare-const var3109 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3109 null-String)))
(declare-const var1149 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1149 null-String)))
(declare-const var2471 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2471 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (= var2471 null-String))) ; Cond: r0 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var460=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var3407=r10, var3109=r6, var2385=null_type, var1149=r3, var2471=r0}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var460, r10=var3407, r6=var3109, null_type=var2385, r3=var1149, r0=var2471}
;seq 
;cnt {}
;stmts r10 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r6 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	if r0 != null goto return;	return
;block_num 2