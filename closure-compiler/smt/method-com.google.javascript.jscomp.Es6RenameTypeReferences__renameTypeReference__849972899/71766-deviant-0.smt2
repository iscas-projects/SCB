(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var842 0)
(declare-sort var1957 0)
(declare-sort var689 0)
(declare-sort var3378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStringLit/305832528 (var689) Bool)
(declare-fun var3378_checkState/1431124798 (Bool) void)
(declare-fun getString/-897720134 (var689) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun renameReference/-2110412067 (var842 var1957 var689 String String) void)
(declare-const null-var842 var842)
(declare-const null-var1957 var1957)
(declare-const null-var689 var689)
(declare-const var1109 var842) ; Statement: r2 := @this: com.google.javascript.jscomp.Es6RenameTypeReferences 
(assert (not (= var1109 null-var842)))
(declare-const var829 var1957) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var829 null-var1957)))
(declare-const var2928 var689) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2928 null-var689)))
(assert true)
(define-const var951 Bool (isStringLit/305832528 var2928)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
;(assert (var3378_checkState/1431124798 var951)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var951!1 Bool)
(assert true)
(define-const var953 String (getString/-897720134 var2928)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3100 Int (indexOf/-1037706067 var953 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46) 
(define-const var2553 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var3100 var2553))) ; Cond: i0 != $i2 
(assert (not (and true (and (>= 0 0) (>= (str.len var953) var3100) (>= var3100 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), var3378_checkState/1431124798=([boolean], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), renameReference/-2110412067=([com.google.javascript.jscomp.Es6RenameTypeReferences, com.google.javascript.jscomp.NodeTraversal, com.google.javascript.rhino.Node, java.lang.String, java.lang.String], void)}
; {var842=com.google.javascript.jscomp.Es6RenameTypeReferences, var1109=r2, var1957=com.google.javascript.jscomp.NodeTraversal, var829=r3, var689=com.google.javascript.rhino.Node, var2928=r0, var951=$z0, var3378=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var953=r1, var3100=i0, var2553=$i2, var2358=r4, var84=r5}
; {com.google.javascript.jscomp.Es6RenameTypeReferences=var842, r2=var1109, com.google.javascript.jscomp.NodeTraversal=var1957, r3=var829, com.google.javascript.rhino.Node=var689, r0=var2928, $z0=var951, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3378, r1=var953, i0=var3100, $i2=var2553, r4=var2358, r5=var84}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.Es6RenameTypeReferences;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0);	virtualinvoke r2.<com.google.javascript.jscomp.Es6RenameTypeReferences: void renameReference(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r3, r0, r4, r5);	return
;block_num 3