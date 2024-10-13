(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1026 0)
(declare-sort var3617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1026) Bool)
(declare-fun isGetProp/-1072994147 (var1026) Bool)
(declare-fun isCast/1878987429 (var1026) Bool)
(declare-fun getFirstChild/2090828207 (var1026) var1026)
(declare-fun var3617_getQualifiedNameThroughCast/99842863 (var1026) String)
(declare-const null-var1026 var1026)
(declare-const var3811 var1026) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3811 null-var1026)))
(assert true)
(define-const var291 Bool (isName/-1249361959 var3811)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
(assert (= (ite var291 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1129 Bool (isGetProp/-1072994147 var3811)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>() 
(assert (= (ite var1129 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var888 Bool (isCast/1878987429 var3811)) ; Statement: $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>() 
 ; Statement: if $z2 == 0 goto return null 
(assert (not (= (ite var888 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var681 var1026 (getFirstChild/2090828207 var3811)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(define-const var1417 String (var3617_getQualifiedNameThroughCast/99842863 var681)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.PolymerBehaviorExtractor: java.lang.String getQualifiedNameThroughCast(com.google.javascript.rhino.Node)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), isCast/1878987429=([com.google.javascript.rhino.Node], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var3617_getQualifiedNameThroughCast/99842863=([com.google.javascript.rhino.Node], java.lang.String)}
; {var1026=com.google.javascript.rhino.Node, var3811=r0, var291=$z0, var1129=$z1, var888=$z2, var681=$r1, var3617=com.google.javascript.jscomp.PolymerBehaviorExtractor, var1417=$r2}
; {com.google.javascript.rhino.Node=var1026, r0=var3811, $z0=var291, $z1=var1129, $z2=var888, $r1=var681, com.google.javascript.jscomp.PolymerBehaviorExtractor=var3617, $r2=var1417}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>();	$z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>();	if $z2 == 0 goto return null;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r2 = staticinvoke <com.google.javascript.jscomp.PolymerBehaviorExtractor: java.lang.String getQualifiedNameThroughCast(com.google.javascript.rhino.Node)>($r1);	return $r2
;block_num 4