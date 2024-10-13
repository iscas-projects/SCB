(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var210 0)
(declare-sort var1729 0)
(declare-sort var664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isGeneratorMarker/-1260375543 (var1729) Bool)
(declare-fun var664_checkState/1431124798 (Bool) void)
(declare-fun isFunction/-1932469268 (var1729) Bool)
(declare-fun getFirstChild/2090828207 (var1729) var1729)
(declare-fun getString/-897720134 (var1729) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun hoistFunctionDeclarationNode/-391054937 (var210 var1729) void)
(declare-const null-var210 var210)
(declare-const null-var1729 var1729)
(declare-const var2573 var210) ; Statement: r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler 
(assert (not (= var2573 null-var210)))
(declare-const var1867 var1729) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1867 null-var1729)))
(assert true)
(define-const var1509 Bool (isGeneratorMarker/-1260375543 var1867)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>() 
 ; Statement: if $z0 != 0 goto $z6 = 0 
(assert (not (= (ite var1509 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2186 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
;(assert (var664_checkState/1431124798 var2186)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6) 

(declare-const var2186!1 Bool)
(assert true)
(define-const var1558 Bool (isFunction/-1932469268 var1867)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>() 
 ; Statement: if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context> 
(assert (not (= (ite var1558 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var2787 var1729 (getFirstChild/2090828207 var1867)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2756 String (getString/-897720134 var2787)) ; Statement: r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var306 Bool (isEmpty/-1285796103 var2756)) ; Statement: $z4 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 != 0 goto $z7 = 0 
(assert (not (= (ite var306 1 0) 0))) ; Cond: $z4 != 0 
(define-const var3916 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
;(assert (var664_checkState/1431124798 var3916)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z7) 

(declare-const var3916!1 Bool)
(assert true)
;(assert (hoistFunctionDeclarationNode/-391054937 var2573 var1867)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: void hoistFunctionDeclarationNode(com.google.javascript.rhino.Node)>(r0) 

(declare-const var2573!1 var210)
(declare-const var1867!1 var1729)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isGeneratorMarker/-1260375543=([com.google.javascript.rhino.Node], boolean), var664_checkState/1431124798=([boolean], void), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), hoistFunctionDeclarationNode/-391054937=([com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler, com.google.javascript.rhino.Node], void)}
; {var210=com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler, var2573=r1, var1729=com.google.javascript.rhino.Node, var1867=r0, var1509=$z0, var2186=$z6, var664=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1558=$z1, var2787=$r3, var2756=r4, var306=$z4, var3916=$z7}
; {com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler=var210, r1=var2573, com.google.javascript.rhino.Node=var1729, r0=var1867, $z0=var1509, $z6=var2186, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var664, $z1=var1558, $r3=var2787, r4=var2756, $z4=var306, $z7=var3916}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>();	if $z0 != 0 goto $z6 = 0;	$z6 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>();	if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context>;	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z4 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z4 != 0 goto $z7 = 0;	$z7 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z7);	virtualinvoke r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: void hoistFunctionDeclarationNode(com.google.javascript.rhino.Node)>(r0);	return
;block_num 6