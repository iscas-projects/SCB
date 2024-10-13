(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3665 0)
(declare-sort var921 0)
(declare-sort var3802 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isGeneratorMarker/-1260375543 (var921) Bool)
(declare-fun var3802_checkState/1431124798 (Bool) void)
(declare-fun isFunction/-1932469268 (var921) Bool)
(declare-fun context/-266489352 (var3665) var389)
(declare-fun isBlock/1715609001 (var921) Bool)
(declare-fun transpileUnmarkedBlock/-488045333 (var389 var921) void)
(declare-const null-var3665 var3665)
(declare-const null-var921 var921)
(declare-const var2923 var3665) ; Statement: r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler 
(assert (not (= var2923 null-var3665)))
(declare-const var214 var921) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var214 null-var921)))
(assert true)
(define-const var3613 Bool (isGeneratorMarker/-1260375543 var214)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>() 
 ; Statement: if $z0 != 0 goto $z6 = 0 
(assert (not (= (ite var3613 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1956 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
;(assert (var3802_checkState/1431124798 var1956)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6) 

(declare-const var1956!1 Bool)
(assert true)
(define-const var3252 Bool (isFunction/-1932469268 var214)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>() 
 ; Statement: if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context> 
(assert (= (ite var3252 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2429 var389 (context/-266489352 var2923)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context> 
(assert true)
(define-const var1379 Bool (isBlock/1715609001 var214)) ; Statement: $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isBlock()>() 
 ; Statement: if $z2 != 0 goto $r5 = r0 
(assert (not (= (ite var1379 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1711 var921 var214) ; Statement: $r5 = r0 
 ; Statement: goto [?= virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5)] 
(assert true) ; Non Conditional
(assert true)
;(assert (transpileUnmarkedBlock/-488045333 var2429 var1711)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5) 

(declare-const var2429!1 var389)
(declare-const var1711!1 var921)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isGeneratorMarker/-1260375543=([com.google.javascript.rhino.Node], boolean), var3802_checkState/1431124798=([boolean], void), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), context/-266489352=([com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler], com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext), isBlock/1715609001=([com.google.javascript.rhino.Node], boolean), transpileUnmarkedBlock/-488045333=([com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext, com.google.javascript.rhino.Node], void)}
; {var3665=com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler, var2923=r1, var921=com.google.javascript.rhino.Node, var214=r0, var3613=$z0, var1956=$z6, var3802=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3252=$z1, var389=com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext, var2429=$r2, var1379=$z2, var1711=$r5}
; {com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler=var3665, r1=var2923, com.google.javascript.rhino.Node=var921, r0=var214, $z0=var3613, $z6=var1956, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3802, $z1=var3252, com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext=var389, $r2=var2429, $z2=var1379, $r5=var1711}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>();	if $z0 != 0 goto $z6 = 0;	$z6 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>();	if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context>;	$r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context>;	$z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isBlock()>();	if $z2 != 0 goto $r5 = r0;	$r5 = r0;	goto [?= virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5)];	virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5);	return
;block_num 6