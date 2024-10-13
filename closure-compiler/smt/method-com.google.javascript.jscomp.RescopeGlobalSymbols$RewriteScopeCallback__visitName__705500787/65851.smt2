(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1380 0)
(declare-sort var3643 0)
(declare-sort var3863 0)
(declare-sort var3648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var3863) String)
(declare-fun isFunction/-1932469268 (var3863) Bool)
(declare-fun this$0/1094395389 (var1380) var3648)
(declare-fun isExternVar/-1103883462 (var3648 String var3643) Bool)
(declare-const null-var1380 var1380)
(declare-const null-var3643 var3643)
(declare-const null-var3863 var3863)
(declare-const var1434 var1380) ; Statement: r3 := @this: com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback 
(assert (not (= var1434 null-var1380)))
(declare-const var1218 var3643) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var1218 null-var3643)))
(declare-const var2656 var3863) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2656 null-var3863)))
(declare-const var3051 var3863) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var3051 null-var3863)))
(assert true)
(define-const var663 String (getString/-897720134 var2656)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2691 Bool (isFunction/-1932469268 var3051)) ; Statement: $z0 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isFunction()>() 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0> 
(assert (= (ite var2691 1 0) 0)) ; Cond: $z0 == 0 
(define-const var146 var3648 (this$0/1094395389 var1434)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0> 
(assert true)
(define-const var2184 Bool (isExternVar/-1103883462 var146 var663 var1218)) ; Statement: $z1 = virtualinvoke $r5.<com.google.javascript.jscomp.RescopeGlobalSymbols: boolean isExternVar(java.lang.String,com.google.javascript.jscomp.NodeTraversal)>(r1, r4) 
 ; Statement: if $z1 == 0 goto $r6 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(assert (not (= (ite var2184 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), this$0/1094395389=([com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback], com.google.javascript.jscomp.RescopeGlobalSymbols), isExternVar/-1103883462=([com.google.javascript.jscomp.RescopeGlobalSymbols, java.lang.String, com.google.javascript.jscomp.NodeTraversal], boolean)}
; {var1380=com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback, var1434=r3, var3643=com.google.javascript.jscomp.NodeTraversal, var1218=r4, var3863=com.google.javascript.rhino.Node, var2656=r0, var3051=r2, var663=r1, var2691=$z0, var3648=com.google.javascript.jscomp.RescopeGlobalSymbols, var146=$r5, var2184=$z1}
; {com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback=var1380, r3=var1434, com.google.javascript.jscomp.NodeTraversal=var3643, r4=var1218, com.google.javascript.rhino.Node=var3863, r0=var2656, r2=var3051, r1=var663, $z0=var2691, com.google.javascript.jscomp.RescopeGlobalSymbols=var3648, $r5=var146, $z1=var2184}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback;	r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isFunction()>();	if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0>;	$r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0>;	$z1 = virtualinvoke $r5.<com.google.javascript.jscomp.RescopeGlobalSymbols: boolean isExternVar(java.lang.String,com.google.javascript.jscomp.NodeTraversal)>(r1, r4);	if $z1 == 0 goto $r6 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	return
;block_num 3