(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3670 0)
(declare-sort var671 0)
(declare-sort var3437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var3670) Bool)
(declare-fun isGetProp/-1072994147 (var3670) Bool)
(declare-fun getFirstChild/2090828207 (var3670) var3670)
(declare-fun var671_getQualifiedNameThroughCast/99842863 (var3670) String)
(declare-const null-var3670 var3670)
(declare-const null-String String)
(declare-const var1651 var3670) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1651 null-var3670)))
(assert true)
(define-const var420 Bool (isName/-1249361959 var1651)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
(assert (= (ite var420 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var12 Bool (isGetProp/-1072994147 var1651)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>() 
(assert (not (= (ite var12 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1352 var3670 (getFirstChild/2090828207 var1651)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(define-const var2379 String (var671_getQualifiedNameThroughCast/99842863 var1352)) ; Statement: r8 = staticinvoke <com.google.javascript.jscomp.PolymerBehaviorExtractor: java.lang.String getQualifiedNameThroughCast(com.google.javascript.rhino.Node)>($r3) 
 ; Statement: if r8 != null goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (not (= var2379 null-String)))) ; Negate: Cond: r8 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var671_getQualifiedNameThroughCast/99842863=([com.google.javascript.rhino.Node], java.lang.String)}
; {var3670=com.google.javascript.rhino.Node, var1651=r0, var420=$z0, var12=$z1, var1352=$r3, var671=com.google.javascript.jscomp.PolymerBehaviorExtractor, var2379=r8, var3437=null_type}
; {com.google.javascript.rhino.Node=var3670, r0=var1651, $z0=var420, $z1=var12, $r3=var1352, com.google.javascript.jscomp.PolymerBehaviorExtractor=var671, r8=var2379, null_type=var3437}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>();	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r8 = staticinvoke <com.google.javascript.jscomp.PolymerBehaviorExtractor: java.lang.String getQualifiedNameThroughCast(com.google.javascript.rhino.Node)>($r3);	if r8 != null goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	return null
;block_num 4