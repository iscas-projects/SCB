(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var3142) Bool)
(declare-fun isGetProp/-1072994147 (var3142) Bool)
(declare-fun isCast/1878987429 (var3142) Bool)
(declare-const null-var3142 var3142)
(declare-const var1181 var3142) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1181 null-var3142)))
(assert true)
(define-const var812 Bool (isName/-1249361959 var1181)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
(assert (= (ite var812 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3367 Bool (isGetProp/-1072994147 var1181)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>() 
(assert (= (ite var3367 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2589 Bool (isCast/1878987429 var1181)) ; Statement: $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>() 
 ; Statement: if $z2 == 0 goto return null 
(assert (= (ite var2589 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), isCast/1878987429=([com.google.javascript.rhino.Node], boolean)}
; {var3142=com.google.javascript.rhino.Node, var1181=r0, var812=$z0, var3367=$z1, var2589=$z2}
; {com.google.javascript.rhino.Node=var3142, r0=var1181, $z0=var812, $z1=var3367, $z2=var2589}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>();	$z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>();	if $z2 == 0 goto return null;	return null
;block_num 4