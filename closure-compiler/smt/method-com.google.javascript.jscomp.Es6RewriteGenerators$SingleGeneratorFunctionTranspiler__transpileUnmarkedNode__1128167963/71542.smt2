(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3905 0)
(declare-sort var1811 0)
(declare-sort var3642 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isGeneratorMarker/-1260375543 (var1811) Bool)
(declare-fun var3642_checkState/1431124798 (Bool) void)
(declare-fun isFunction/-1932469268 (var1811) Bool)
(declare-fun getFirstChild/2090828207 (var1811) var1811)
(declare-fun getString/-897720134 (var1811) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun hoistFunctionDeclarationNode/-391054937 (var3905 var1811) void)
(declare-const null-var3905 var3905)
(declare-const null-var1811 var1811)
(declare-const var3247 var3905) ; Statement: r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler 
(assert (not (= var3247 null-var3905)))
(declare-const var1686 var1811) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1686 null-var1811)))
(assert true)
(define-const var3741 Bool (isGeneratorMarker/-1260375543 var1686)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>() 
 ; Statement: if $z0 != 0 goto $z6 = 0 
(assert (not (not (= (ite var3741 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var901 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6)] 
(assert true) ; Non Conditional
;(assert (var3642_checkState/1431124798 var901)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6) 

(declare-const var901!1 Bool)
(assert true)
(define-const var482 Bool (isFunction/-1932469268 var1686)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>() 
 ; Statement: if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context> 
(assert (not (= (ite var482 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var813 var1811 (getFirstChild/2090828207 var1686)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2000 String (getString/-897720134 var813)) ; Statement: r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1847 Bool (isEmpty/-1285796103 var2000)) ; Statement: $z4 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 != 0 goto $z7 = 0 
(assert (not (= (ite var1847 1 0) 0))) ; Cond: $z4 != 0 
(define-const var993 Bool (ite (= 1 0) true false)) ; Statement: $z7 = 0 
(assert true) ; Non Conditional
;(assert (var3642_checkState/1431124798 var993)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z7) 

(declare-const var993!1 Bool)
(assert true)
;(assert (hoistFunctionDeclarationNode/-391054937 var3247 var1686)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: void hoistFunctionDeclarationNode(com.google.javascript.rhino.Node)>(r0) 

(declare-const var3247!1 var3905)
(declare-const var1686!1 var1811)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isGeneratorMarker/-1260375543=([com.google.javascript.rhino.Node], boolean), var3642_checkState/1431124798=([boolean], void), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), hoistFunctionDeclarationNode/-391054937=([com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler, com.google.javascript.rhino.Node], void)}
; {var3905=com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler, var3247=r1, var1811=com.google.javascript.rhino.Node, var1686=r0, var3741=$z0, var901=$z6, var3642=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var482=$z1, var813=$r3, var2000=r4, var1847=$z4, var993=$z7}
; {com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler=var3905, r1=var3247, com.google.javascript.rhino.Node=var1811, r0=var1686, $z0=var3741, $z6=var901, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3642, $z1=var482, $r3=var813, r4=var2000, $z4=var1847, $z7=var993}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGeneratorMarker()>();	if $z0 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z6);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isFunction()>();	if $z1 == 0 goto $r2 = r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler$TranspilationContext context>;	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z4 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z4 != 0 goto $z7 = 0;	$z7 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z7);	virtualinvoke r1.<com.google.javascript.jscomp.Es6RewriteGenerators$SingleGeneratorFunctionTranspiler: void hoistFunctionDeclarationNode(com.google.javascript.rhino.Node)>(r0);	return
;block_num 6