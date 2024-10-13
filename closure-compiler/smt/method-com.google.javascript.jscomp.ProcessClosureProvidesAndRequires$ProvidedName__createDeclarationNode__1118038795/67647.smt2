(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2438 0)
(declare-sort var3907 0)
(declare-sort var466 0)
(declare-sort var569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isObjectLit/-1056552194 (var3907) Bool)
(declare-fun var466_checkArgument/-972017905 (Bool var569) void)
(declare-fun cast-from-var3907-to-var569 (var3907) var569)
(declare-fun namespace/977910952 (var2438) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun makeAssignmentExprNode/1363064743 (var2438 var3907) var3907)
(declare-const null-var2438 var2438)
(declare-const null-var3907 var3907)
(declare-const var174 var2438) ; Statement: r1 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName 
(assert (not (= var174 null-var2438)))
(declare-const var3332 var3907) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3332 null-var3907)))
(assert true)
(define-const var660 Bool (isObjectLit/-1056552194 var3332)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isObjectLit()>() 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var660 1 0) 0))) ; Cond: $z0 != 0 
(define-const var525 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0)] 
(assert true) ; Non Conditional
;(assert (var466_checkArgument/-972017905 var525 (cast-from-var3907-to-var569 var3332))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0) 

(declare-const var525!1 Bool)
(declare-const var3332!1 var3907)
(define-const var1610 String (namespace/977910952 var174)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace> 
(assert true)
(define-const var629 Int (indexOf/-1037706067 var1610 46)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(46) 
(define-const var2719 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeAssignmentExprNode(com.google.javascript.rhino.Node)>(r0) 
(assert (not (= var629 var2719))) ; Cond: $i0 != $i2 
(assert true)
(define-const var731 var3907 (makeAssignmentExprNode/1363064743 var174 var3332!1)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeAssignmentExprNode(com.google.javascript.rhino.Node)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isObjectLit/-1056552194=([com.google.javascript.rhino.Node], boolean), var466_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-var3907-to-var569=([com.google.javascript.rhino.Node], java.lang.Object), namespace/977910952=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), makeAssignmentExprNode/1363064743=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var2438=com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName, var174=r1, var3907=com.google.javascript.rhino.Node, var3332=r0, var660=$z0, var525=$z2, var466=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var569=java.lang.Object, var1610=$r2, var629=$i0, var2719=$i2, var731=$r3}
; {com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName=var2438, r1=var174, com.google.javascript.rhino.Node=var3907, r0=var3332, $z0=var660, $z2=var525, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var466, java.lang.Object=var569, $r2=var1610, $i0=var629, $i2=var2719, $r3=var731}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isObjectLit()>();	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0);	$r2 = r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace>;	$i0 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 != $i2 goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeAssignmentExprNode(com.google.javascript.rhino.Node)>(r0);	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeAssignmentExprNode(com.google.javascript.rhino.Node)>(r0);	return $r3
;block_num 4