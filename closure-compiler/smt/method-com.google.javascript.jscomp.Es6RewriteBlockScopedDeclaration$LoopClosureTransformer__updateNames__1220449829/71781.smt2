(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1050 0)
(declare-sort var737 0)
(declare-sort var1257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var737) Bool)
(declare-fun getFirstChild/2090828207 (var737) var737)
(declare-const null-var1050 var1050)
(declare-const null-var737 var737)
(declare-const null-String String)
(declare-const var2040 var1050) ; Statement: r1 := @this: com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer 
(assert (not (= var2040 null-var1050)))
(declare-const var2818 var737) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2818 null-var737)))
(declare-const var46 var737) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var46 null-var737)))
(declare-const var2466 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2466 null-String)))
(assert true)
(define-const var2901 Bool (isName/-1249361959 var2818)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (= (ite var2901 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3688 var737 (getFirstChild/2090828207 var2818)) ; Statement: r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true) ; Non Conditional
 ; Statement: if r7 == null goto return 
(assert (= var3688 null-var737)) ; Cond: r7 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var1050=com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer, var2040=r1, var737=com.google.javascript.rhino.Node, var2818=r0, var46=r2, var2466=r3, var1257=null_type, var2901=$z0, var3688=r7}
; {com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer=var1050, r1=var2040, com.google.javascript.rhino.Node=var737, r0=var2818, r2=var46, r3=var2466, null_type=var1257, $z0=var2901, r7=var3688}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.Es6RewriteBlockScopedDeclaration$LoopClosureTransformer;	r0 := @parameter0: com.google.javascript.rhino.Node;	r2 := @parameter1: com.google.javascript.rhino.Node;	r3 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r7 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	if r7 == null goto return;	return
;block_num 4