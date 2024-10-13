(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var333 0)
(declare-sort var961 0)
(declare-sort var3604 0)
(declare-sort var3534 0)
(declare-sort var3132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStringLit/305832528 (var3604) Bool)
(declare-fun var3534_checkState/1431124798 (Bool) void)
(declare-fun getString/-897720134 (var3604) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun renameReference/-2110412067 (var333 var961 var3604 String String) void)
(declare-const null-var333 var333)
(declare-const null-var961 var961)
(declare-const null-var3604 var3604)
(declare-const null-String String)
(declare-const var1080 var333) ; Statement: r2 := @this: com.google.javascript.jscomp.Es6RenameTypeReferences 
(assert (not (= var1080 null-var333)))
(declare-const var1208 var961) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var1208 null-var961)))
(declare-const var1446 var3604) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1446 null-var3604)))
(assert true)
(define-const var2413 Bool (isStringLit/305832528 var1446)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
;(assert (var3534_checkState/1431124798 var2413)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var2413!1 Bool)
(assert true)
(define-const var389 String (getString/-897720134 var1446)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3437 Int (indexOf/-1037706067 var389 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46) 
(define-const var531 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var3437 var531)))) ; Negate: Cond: i0 != $i2  
(define-const var1212 String var389) ; Statement: r4 = r1 
(define-const var3739 String null-String) ; Statement: r5 = null 
 ; Statement: goto [?= virtualinvoke r2.<com.google.javascript.jscomp.Es6RenameTypeReferences: void renameReference(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r3, r0, r4, r5)] 
(assert true) ; Non Conditional
(assert true)
;(assert (renameReference/-2110412067 var1080 var1208 var1446 var1212 var3739)) ; Statement: virtualinvoke r2.<com.google.javascript.jscomp.Es6RenameTypeReferences: void renameReference(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r3, r0, r4, r5) 

(declare-const var1080!1 var333)
(declare-const var1208!1 var961)
(declare-const var1446!1 var3604)
(declare-const var1212!1 String)
(declare-const var3739!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), var3534_checkState/1431124798=([boolean], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), renameReference/-2110412067=([com.google.javascript.jscomp.Es6RenameTypeReferences, com.google.javascript.jscomp.NodeTraversal, com.google.javascript.rhino.Node, java.lang.String, java.lang.String], void)}
; {var333=com.google.javascript.jscomp.Es6RenameTypeReferences, var1080=r2, var961=com.google.javascript.jscomp.NodeTraversal, var1208=r3, var3604=com.google.javascript.rhino.Node, var1446=r0, var2413=$z0, var3534=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var389=r1, var3437=i0, var531=$i2, var1212=r4, var3132=null_type, var3739=r5}
; {com.google.javascript.jscomp.Es6RenameTypeReferences=var333, r2=var1080, com.google.javascript.jscomp.NodeTraversal=var961, r3=var1208, com.google.javascript.rhino.Node=var3604, r0=var1446, $z0=var2413, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3534, r1=var389, i0=var3437, $i2=var531, r4=var1212, null_type=var3132, r5=var3739}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.Es6RenameTypeReferences;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r4 = r1;	r5 = null;	goto [?= virtualinvoke r2.<com.google.javascript.jscomp.Es6RenameTypeReferences: void renameReference(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r3, r0, r4, r5)];	virtualinvoke r2.<com.google.javascript.jscomp.Es6RenameTypeReferences: void renameReference(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,java.lang.String,java.lang.String)>(r3, r0, r4, r5);	return
;block_num 3