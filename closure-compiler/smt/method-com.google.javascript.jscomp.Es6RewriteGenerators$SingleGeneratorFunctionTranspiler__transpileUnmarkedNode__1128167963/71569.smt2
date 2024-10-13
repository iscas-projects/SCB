(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var188 0)
(declare-sort var3164 0)
(declare-sort var3488 0)
(declare-sort var2193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isGeneratorMarker/-1260375543 (var3164) Bool)
(declare-fun var3488_checkState/1431124798 (Bool) void)
(declare-fun isFunction/-1932469268 (var3164) Bool)
(declare-fun context/-266489352 (var188) var2193)
(declare-fun isBlock/1715609001 (var3164) Bool)
(declare-fun transpileUnmarkedBlock/-488045333 (var2193 var3164) void)
(declare-const null-var188 var188)
(declare-const null-var3164 var3164)
(declare-const var3830 var188) ; Statement: r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler 
(assert (not (= var3830 null-var188)))
(declare-const var2450 var3164) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2450 null-var3164)))
(assert true)
(define-const var621 Bool (isGeneratorMarker/-1260375543 var2450)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>() 
 ; Statement: if $z0 != 0 goto $z6 = 0 
(assert (not (not (= (ite var621 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1914 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6)] 
(assert true) ; Non Conditional
;(assert (var3488_checkState/1431124798 var1914)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6) 

(declare-const var1914!1 Bool)
(assert true)
(define-const var1184 Bool (isFunction/-1932469268 var2450)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>() 
 ; Statement: if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context> 
(assert (= (ite var1184 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2229 var2193 (context/-266489352 var3830)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context> 
(assert true)
(define-const var3842 Bool (isBlock/1715609001 var2450)) ; Statement: $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isBlock()>() 
 ; Statement: if $z2 != 0 goto $r5 = r0 
(assert (not (= (ite var3842 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2442 var3164 var2450) ; Statement: $r5 = r0 
 ; Statement: goto [?= virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5)] 
(assert true) ; Non Conditional
(assert true)
;(assert (transpileUnmarkedBlock/-488045333 var2229 var2442)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5) 

(declare-const var2229!1 var2193)
(declare-const var2442!1 var3164)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isGeneratorMarker/-1260375543=([com.google.javascript.rhino.Node], boolean), var3488_checkState/1431124798=([boolean], void), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), context/-266489352=([com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler], com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext), isBlock/1715609001=([com.google.javascript.rhino.Node], boolean), transpileUnmarkedBlock/-488045333=([com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext, com.google.javascript.rhino.Node], void)}
; {var188=com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler, var3830=r1, var3164=com.google.javascript.rhino.Node, var2450=r0, var621=$z0, var1914=$z6, var3488=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1184=$z1, var2193=com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext, var2229=$r2, var3842=$z2, var2442=$r5}
; {com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler=var188, r1=var3830, com.google.javascript.rhino.Node=var3164, r0=var2450, $z0=var621, $z6=var1914, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3488, $z1=var1184, com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext=var2193, $r2=var2229, $z2=var3842, $r5=var2442}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>();	if $z0 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>();	if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context>;	$r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context>;	$z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isBlock()>();	if $z2 != 0 goto $r5 = r0;	$r5 = r0;	goto [?= virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5)];	virtualinvoke $r2.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext: void transpileUnmarkedBlock(com.google.javascript.rhino.Node)>($r5);	return
;block_num 6