(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2041 0)
(declare-sort var2223 0)
(declare-sort var3425 0)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isObjectLit/-1056552194 (var2223) Bool)
(declare-fun var3425_checkArgument/-972017905 (Bool var1476) void)
(declare-fun cast-from-var2223-to-var1476 (var2223) var1476)
(declare-fun namespace/977910952 (var2041) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun makeVarDeclNode/1901125222 (var2041 var2223) var2223)
(declare-const null-var2041 var2041)
(declare-const null-var2223 var2223)
(declare-const var964 var2041) ; Statement: r1 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName 
(assert (not (= var964 null-var2041)))
(declare-const var3539 var2223) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3539 null-var2223)))
(assert true)
(define-const var3378 Bool (isObjectLit/-1056552194 var3539)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isObjectLit()>() 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3378 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2294 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0)] 
(assert true) ; Non Conditional
;(assert (var3425_checkArgument/-972017905 var2294 (cast-from-var2223-to-var1476 var3539))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0) 

(declare-const var2294!1 Bool)
(declare-const var3539!1 var2223)
(define-const var899 String (namespace/977910952 var964)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace> 
(assert true)
(define-const var3098 Int (indexOf/-1037706067 var899 46)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(46) 
(define-const var1316 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 != $i2 goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeAssignmentExprNode(com.google.javascript.rhino.Node)>(r0) 
(assert (not (not (= var3098 var1316)))) ; Negate: Cond: $i0 != $i2  
(assert true)
(define-const var2147 var2223 (makeVarDeclNode/1901125222 var964 var3539!1)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeVarDeclNode(com.google.javascript.rhino.Node)>(r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {isObjectLit/-1056552194=([com.google.javascript.rhino.Node], boolean), var3425_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-var2223-to-var1476=([com.google.javascript.rhino.Node], java.lang.Object), namespace/977910952=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), makeVarDeclNode/1901125222=([com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var2041=com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName, var964=r1, var2223=com.google.javascript.rhino.Node, var3539=r0, var3378=$z0, var2294=$z2, var3425=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1476=java.lang.Object, var899=$r2, var3098=$i0, var1316=$i2, var2147=$r4}
; {com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName=var2041, r1=var964, com.google.javascript.rhino.Node=var2223, r0=var3539, $z0=var3378, $z2=var2294, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3425, java.lang.Object=var1476, $r2=var899, $i0=var3098, $i2=var1316, $r4=var2147}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isObjectLit()>();	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z2, r0);	$r2 = r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: java.lang.String namespace>;	$i0 = virtualinvoke $r2.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 != $i2 goto $r3 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeAssignmentExprNode(com.google.javascript.rhino.Node)>(r0);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.ProcessClosureProvidesAndRequires$ProvidedName: com.google.javascript.rhino.Node makeVarDeclNode(com.google.javascript.rhino.Node)>(r0);	return $r4
;block_num 4