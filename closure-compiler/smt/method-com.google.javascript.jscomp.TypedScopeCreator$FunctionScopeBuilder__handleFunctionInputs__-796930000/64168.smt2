(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2857 0)
(declare-sort var1100 0)
(declare-sort var1645 0)
(declare-sort var782 0)
(declare-sort var1532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentScope/-1285863288 (var1645) var1100)
(declare-fun cast-from-var2857-to-var1645 (var2857) var1645)
(declare-fun getRootNode/1922186487 (var1532) var782)
(declare-fun cast-from-var1100-to-var1532 (var1100) var1532)
(declare-fun getFirstChild/2090828207 (var782) var782)
(declare-fun getString/-897720134 (var782) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun declareParameters/2117073634 (var2857 var782) void)
(declare-const null-var2857 var2857)
(declare-const var1981 var2857) ; Statement: r0 := @this: com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder 
(assert (not (= var1981 null-var2857)))
(define-const var3158 var1100 (currentScope/-1285863288 (cast-from-var2857-to-var1645 var1981))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder: com.google.javascript.jscomp.TypedScope currentScope> 
(assert true)
(define-const var2933 var782 (getRootNode/1922186487 (cast-from-var1100-to-var1532 var3158))) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.TypedScope: com.google.javascript.rhino.Node getRootNode()>() 
(assert true)
(define-const var971 var782 (getFirstChild/2090828207 var2933)) ; Statement: r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2519 String (getString/-897720134 var971)) ; Statement: r4 = virtualinvoke r3.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1291 Bool (isEmpty/-1285796103 var2519)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder: void declareParameters(com.google.javascript.rhino.Node)>(r2) 
(assert (not (= (ite var1291 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (declareParameters/2117073634 var1981 var2933)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder: void declareParameters(com.google.javascript.rhino.Node)>(r2) 

(declare-const var1981!1 var2857)
(declare-const var2933!1 var782)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentScope/-1285863288=([com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder], com.google.javascript.jscomp.TypedScope), cast-from-var2857-to-var1645=([com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder], com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder), getRootNode/1922186487=([com.google.javascript.jscomp.AbstractScope], com.google.javascript.rhino.Node), cast-from-var1100-to-var1532=([com.google.javascript.jscomp.TypedScope], com.google.javascript.jscomp.AbstractScope), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), declareParameters/2117073634=([com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder, com.google.javascript.rhino.Node], void)}
; {var2857=com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder, var1981=r0, var1100=com.google.javascript.jscomp.TypedScope, var1645=com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder, var3158=$r1, var782=com.google.javascript.rhino.Node, var1532=com.google.javascript.jscomp.AbstractScope, var2933=r2, var971=r3, var2519=r4, var1291=$z0}
; {com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder=var2857, r0=var1981, com.google.javascript.jscomp.TypedScope=var1100, com.google.javascript.jscomp.TypedScopeCreator$AbstractScopeBuilder=var1645, $r1=var3158, com.google.javascript.rhino.Node=var782, com.google.javascript.jscomp.AbstractScope=var1532, r2=var2933, r3=var971, r4=var2519, $z0=var1291}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder;	$r1 = r0.<com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder: com.google.javascript.jscomp.TypedScope currentScope>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.TypedScope: com.google.javascript.rhino.Node getRootNode()>();	r3 = virtualinvoke r2.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r4 = virtualinvoke r3.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder: void declareParameters(com.google.javascript.rhino.Node)>(r2);	virtualinvoke r0.<com.google.javascript.jscomp.TypedScopeCreator$FunctionScopeBuilder: void declareParameters(com.google.javascript.rhino.Node)>(r2);	return
;block_num 2