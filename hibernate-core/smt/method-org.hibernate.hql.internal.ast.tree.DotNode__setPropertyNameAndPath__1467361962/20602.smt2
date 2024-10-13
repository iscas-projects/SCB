(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var553 0)
(declare-sort var1193 0)
(declare-sort var311 0)
(declare-sort var351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var553_isDotNode/158380045 (var1193) Bool)
(declare-fun propertyPath/790005799 (var553) String)
(declare-fun var311_debugf/585189783 (var311 String var351) void)
(declare-fun cast-from-String-to-var351 (String) var351)
(declare-const null-var553 var553)
(declare-const null-var1193 var1193)
(declare-const var553-LOG var311)
(declare-const var2152 var553) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var2152 null-var553)))
(declare-const var1351 var1193) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var1351 null-var1193)))
(define-const var583 Bool (var553_isDotNode/158380045 var1351)) ; Statement: $z0 = staticinvoke <org.hibernate.hql.internal.ast.tree.DotNode: boolean isDotNode(antlr.collections.AST)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (= (ite var583 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1656 var311 var553-LOG) ; Statement: $r3 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var1298 String (propertyPath/790005799 var2152)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
;(assert (var311_debugf/585189783 var1656 "Terminal getPropertyPath = [%s]" (cast-from-String-to-var351 var1298))) ; Statement: interfaceinvoke $r3.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Terminal getPropertyPath = [%s]", $r2) 

(declare-const var1656!1 var311)
(declare-const var272 String)
(declare-const var1298!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var553_isDotNode/158380045=([antlr.collections.AST], boolean), propertyPath/790005799=([org.hibernate.hql.internal.ast.tree.DotNode], java.lang.String), var311_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var351=([java.lang.String], java.lang.Object)}
; {var553=org.hibernate.hql.internal.ast.tree.DotNode, var2152=r1, var1193=antlr.collections.AST, var1351=r0, var583=$z0, var311=org.hibernate.internal.CoreMessageLogger, var1656=$r3, var1298=$r2, var351=java.lang.Object, var272="Terminal getPropertyPath = [%s]"}
; {org.hibernate.hql.internal.ast.tree.DotNode=var553, r1=var2152, antlr.collections.AST=var1193, r0=var1351, $z0=var583, org.hibernate.internal.CoreMessageLogger=var311, $r3=var1656, $r2=var1298, java.lang.Object=var351, "Terminal getPropertyPath = [%s]"=var272}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode;	r0 := @parameter0: antlr.collections.AST;	$z0 = staticinvoke <org.hibernate.hql.internal.ast.tree.DotNode: boolean isDotNode(antlr.collections.AST)>(r0);	if $z0 == 0 goto $r3 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG>;	$r3 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG>;	$r2 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	interfaceinvoke $r3.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Terminal getPropertyPath = [%s]", $r2);	return
;block_num 3