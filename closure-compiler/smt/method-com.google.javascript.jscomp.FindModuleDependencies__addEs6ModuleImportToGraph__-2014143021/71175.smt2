(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3627 0)
(declare-sort var1619 0)
(declare-sort var1993 0)
(declare-sort var2320 0)
(declare-sort var3479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEs6ModuleNameFromImportNode/-1954861329 (var3627 var1619 var1993) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getInput/1894382808 (var1619) var2320)
(declare-fun getLastChild/1278987161 (var1993) var1993)
(declare-fun getString/-897720134 (var1993) String)
(declare-fun var3479_es6Import/-2046513354 (String String) var3479)
(declare-fun addOrderedRequire/926330675 (var2320 var3479) Bool)
(declare-const null-var3627 var3627)
(declare-const null-var1619 var1619)
(declare-const null-var1993 var1993)
(declare-const var3246 var3627) ; Statement: r0 := @this: com.google.javascript.jscomp.FindModuleDependencies 
(assert (not (= var3246 null-var3627)))
(declare-const var459 var1619) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var459 null-var1619)))
(declare-const var155 var1993) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var155 null-var1993)))
(assert true)
(define-const var1174 String (getEs6ModuleNameFromImportNode/-1954861329 var3246 var459 var155)) ; Statement: r3 = virtualinvoke r0.<com.google.javascript.jscomp.FindModuleDependencies: java.lang.String getEs6ModuleNameFromImportNode(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node)>(r1, r2) 
(assert true)
(define-const var2571 Bool (startsWith/-1785782452 var1174 "goog.")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("goog.") 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>() 
(assert (= (ite var2571 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3357 var2320 (getInput/1894382808 var459)) ; Statement: $r7 = virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>() 
(assert true)
(define-const var683 var1993 (getLastChild/1278987161 var155)) ; Statement: $r4 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var3800 String (getString/-897720134 var683)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var692 var3479 (var3479_es6Import/-2046513354 var1174 var3800)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.deps.DependencyInfo$Require: com.google.javascript.jscomp.deps.DependencyInfo$Require es6Import(java.lang.String,java.lang.String)>(r3, $r5) 
(assert true)
;(assert (addOrderedRequire/926330675 var3357 var692)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.CompilerInput: boolean addOrderedRequire(com.google.javascript.jscomp.deps.DependencyInfo$Require)>($r6) 

(declare-const var3357!1 var2320)
(declare-const var692!1 var3479)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getEs6ModuleNameFromImportNode/-1954861329=([com.google.javascript.jscomp.FindModuleDependencies, com.google.javascript.jscomp.NodeTraversal, com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getInput/1894382808=([com.google.javascript.jscomp.NodeTraversal], com.google.javascript.jscomp.CompilerInput), getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), var3479_es6Import/-2046513354=([java.lang.String, java.lang.String], com.google.javascript.jscomp.deps.DependencyInfo$Require), addOrderedRequire/926330675=([com.google.javascript.jscomp.CompilerInput, com.google.javascript.jscomp.deps.DependencyInfo$Require], boolean)}
; {var3627=com.google.javascript.jscomp.FindModuleDependencies, var3246=r0, var1619=com.google.javascript.jscomp.NodeTraversal, var459=r1, var1993=com.google.javascript.rhino.Node, var155=r2, var1174=r3, var2571=$z0, var2320=com.google.javascript.jscomp.CompilerInput, var3357=$r7, var683=$r4, var3800=$r5, var3479=com.google.javascript.jscomp.deps.DependencyInfo$Require, var692=$r6}
; {com.google.javascript.jscomp.FindModuleDependencies=var3627, r0=var3246, com.google.javascript.jscomp.NodeTraversal=var1619, r1=var459, com.google.javascript.rhino.Node=var1993, r2=var155, r3=var1174, $z0=var2571, com.google.javascript.jscomp.CompilerInput=var2320, $r7=var3357, $r4=var683, $r5=var3800, com.google.javascript.jscomp.deps.DependencyInfo$Require=var3479, $r6=var692}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.FindModuleDependencies;	r1 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r2 := @parameter1: com.google.javascript.rhino.Node;	r3 = virtualinvoke r0.<com.google.javascript.jscomp.FindModuleDependencies: java.lang.String getEs6ModuleNameFromImportNode(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node)>(r1, r2);	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("goog.");	if $z0 == 0 goto $r7 = virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>();	$r7 = virtualinvoke r1.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>();	$r4 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r5 = virtualinvoke $r4.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r6 = staticinvoke <com.google.javascript.jscomp.deps.DependencyInfo$Require: com.google.javascript.jscomp.deps.DependencyInfo$Require es6Import(java.lang.String,java.lang.String)>(r3, $r5);	virtualinvoke $r7.<com.google.javascript.jscomp.CompilerInput: boolean addOrderedRequire(com.google.javascript.jscomp.deps.DependencyInfo$Require)>($r6);	return
;block_num 2