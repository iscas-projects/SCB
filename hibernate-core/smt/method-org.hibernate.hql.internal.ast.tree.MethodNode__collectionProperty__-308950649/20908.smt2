(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var3750 0)
(declare-sort var1714 0)
(declare-sort var1131 0)
(declare-sort var2586 0)
(declare-sort var3615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3750-to-var1714 (var3750) var1714)
(declare-fun getDataType/1447955185 (var1714) var1131)
(declare-fun debugf/47384645 (var2586 String var3615 var3615) void)
(declare-fun cast-from-var3750-to-var3615 (var3750) var3615)
(declare-fun cast-from-var1131-to-var3615 (var1131) var3615)
(declare-fun cast-from-var1714-to-var3750 (var1714) var3750)
(declare-fun resolveCollectionProperty/-1588057071 (var2331 var3750) void)
(declare-const null-var2331 var2331)
(declare-const null-var3750 var3750)
(declare-const var2331-LOG var2586)
(declare-const var687 var2331) ; Statement: r5 := @this: org.hibernate.hql.internal.ast.tree.MethodNode 
(assert (not (= var687 null-var2331)))
(declare-const var481 var3750) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var481 null-var3750)))
(declare-const var918 var3750) ; Statement: r3 := @parameter1: antlr.collections.AST 
(assert (not (= var918 null-var3750)))
 ; Statement: if r0 != null goto r1 = (org.hibernate.hql.internal.ast.tree.SqlNode) r0 
(assert (not (= var481 null-var3750))) ; Cond: r0 != null 
(define-const var3952 var1714 (cast-from-var3750-to-var1714 var481)) ; Statement: r1 = (org.hibernate.hql.internal.ast.tree.SqlNode) r0 
(assert true)
(define-const var3516 var1131 (getDataType/1447955185 var3952)) ; Statement: r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.SqlNode: org.hibernate.type.Type getDataType()>() 
(define-const var2380 var2586 var2331-LOG) ; Statement: $r4 = <org.hibernate.hql.internal.ast.tree.MethodNode: org.jboss.logging.Logger LOG> 
(assert true)
;(assert (debugf/47384645 var2380 "collectionProperty() :  name=%s type=%s" (cast-from-var3750-to-var3615 var918) (cast-from-var1131-to-var3615 var3516))) ; Statement: virtualinvoke $r4.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("collectionProperty() :  name=%s type=%s", r3, r2) 

(declare-const var2380!1 var2586)
(declare-const var3122 String)
(declare-const var918!1 var3750)
(declare-const var3516!1 var1131)
(define-const var898 var3750 (cast-from-var1714-to-var3750 var3952)) ; Statement: $r16 = (antlr.collections.AST) r1 
(assert true)
;(assert (resolveCollectionProperty/-1588057071 var687 var898)) ; Statement: virtualinvoke r5.<org.hibernate.hql.internal.ast.tree.MethodNode: void resolveCollectionProperty(antlr.collections.AST)>($r16) 

(declare-const var687!1 var2331)
(declare-const var898!1 var3750)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3750-to-var1714=([antlr.collections.AST], org.hibernate.hql.internal.ast.tree.SqlNode), getDataType/1447955185=([org.hibernate.hql.internal.ast.tree.SqlNode], org.hibernate.type.Type), debugf/47384645=([org.jboss.logging.Logger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-var3750-to-var3615=([antlr.collections.AST], java.lang.Object), cast-from-var1131-to-var3615=([org.hibernate.type.Type], java.lang.Object), cast-from-var1714-to-var3750=([org.hibernate.hql.internal.ast.tree.SqlNode], antlr.collections.AST), resolveCollectionProperty/-1588057071=([org.hibernate.hql.internal.ast.tree.MethodNode, antlr.collections.AST], void)}
; {var2331=org.hibernate.hql.internal.ast.tree.MethodNode, var687=r5, var3750=antlr.collections.AST, var481=r0, var918=r3, var1714=org.hibernate.hql.internal.ast.tree.SqlNode, var3952=r1, var1131=org.hibernate.type.Type, var3516=r2, var2586=org.jboss.logging.Logger, var2380=$r4, var3615=java.lang.Object, var3122="collectionProperty() :  name=%s type=%s", var898=$r16}
; {org.hibernate.hql.internal.ast.tree.MethodNode=var2331, r5=var687, antlr.collections.AST=var3750, r0=var481, r3=var918, org.hibernate.hql.internal.ast.tree.SqlNode=var1714, r1=var3952, org.hibernate.type.Type=var1131, r2=var3516, org.jboss.logging.Logger=var2586, $r4=var2380, java.lang.Object=var3615, "collectionProperty() :  name=%s type=%s"=var3122, $r16=var898}
;seq 
;cnt {}
;stmts r5 := @this: org.hibernate.hql.internal.ast.tree.MethodNode;	r0 := @parameter0: antlr.collections.AST;	r3 := @parameter1: antlr.collections.AST;	if r0 != null goto r1 = (org.hibernate.hql.internal.ast.tree.SqlNode) r0;	r1 = (org.hibernate.hql.internal.ast.tree.SqlNode) r0;	r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.SqlNode: org.hibernate.type.Type getDataType()>();	$r4 = <org.hibernate.hql.internal.ast.tree.MethodNode: org.jboss.logging.Logger LOG>;	virtualinvoke $r4.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("collectionProperty() :  name=%s type=%s", r3, r2);	$r16 = (antlr.collections.AST) r1;	virtualinvoke r5.<org.hibernate.hql.internal.ast.tree.MethodNode: void resolveCollectionProperty(antlr.collections.AST)>($r16);	return
;block_num 2