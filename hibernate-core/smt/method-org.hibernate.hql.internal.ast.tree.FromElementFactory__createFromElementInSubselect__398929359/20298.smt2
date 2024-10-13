(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2755 0)
(declare-sort var84 0)
(declare-sort var3254 0)
(declare-sort var3671 0)
(declare-sort var220 0)
(declare-sort var2745 0)
(declare-sort var2537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3671_debugf/585189783 (var3671 String var220) void)
(declare-fun cast-from-String-to-var220 (String) var220)
(declare-fun evaluateFromElementPath/2072274727 (var2755 String String) var3254)
(declare-fun getEntityPersister/730545235 (var3254) var2745)
(declare-fun getClassAlias/-1384515022 (var3254) String)
(declare-fun getFromClause/128187641 (var3254) var2537)
(declare-fun fromClause/1032928764 (var2755) var2537)
(declare-fun var3671_debugf/1063386898 (var3671 String var220 var220) void)
(declare-fun cast-from-var3254-to-var220 (var3254) var220)
(declare-const null-var2755 var2755)
(declare-const null-String String)
(declare-const null-var3254 var3254)
(declare-const var2755-LOG var3671)
(declare-const var2486 var2755) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory 
(assert (not (= var2486 null-var2755)))
(declare-const var75 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var75 null-String)))
(declare-const var2331 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2331 null-String)))
(declare-const var232 var3254) ; Statement: r6 := @parameter2: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var232 null-var3254)))
(declare-const var907 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var907 null-String)))
(define-const var1976 var3671 var2755-LOG) ; Statement: $r1 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var3671_debugf/585189783 var1976 "createFromElementInSubselect() : path = %s" (cast-from-String-to-var220 var75))) ; Statement: interfaceinvoke $r1.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("createFromElementInSubselect() : path = %s", r0) 

(declare-const var1976!1 var3671)
(declare-const var2722 String)
(declare-const var75!1 String)
(assert true)
(define-const var541 var3254 (evaluateFromElementPath/2072274727 var2486 var75!1 var907)) ; Statement: r15 = specialinvoke r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement evaluateFromElementPath(java.lang.String,java.lang.String)>(r0, r3) 
(assert true)
(define-const var3175 var2745 (getEntityPersister/730545235 var541)) ; Statement: r4 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(assert true)
(define-const var2134 String (getClassAlias/-1384515022 var232)) ; Statement: $r7 = virtualinvoke r6.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>() 
(assert true)
(define-const var2545 Bool (= var2331 var2134)) ; Statement: z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if z0 == 0 goto r16 = null 
(assert (= (ite var2545 1 0) 0)) ; Cond: z0 == 0 
(define-const var816 String null-String) ; Statement: r16 = null 
(assert true) ; Non Conditional
(assert true)
(define-const var13 var2537 (getFromClause/128187641 var541)) ; Statement: $r9 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromClause getFromClause()>() 
(define-const var1860 var2537 (fromClause/1032928764 var2486)) ; Statement: $r8 = r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromClause fromClause> 
 ; Statement: if $r9 == $r8 goto $r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (= var13 var1860)) ; Cond: $r9 == $r8 
(define-const var748 var3671 var2755-LOG) ; Statement: $r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var3671_debugf/1063386898 var748 "createFromElementInSubselect() : %s -> %s" (cast-from-String-to-var220 var75!1) (cast-from-var3254-to-var220 var541))) ; Statement: interfaceinvoke $r10.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("createFromElementInSubselect() : %s -> %s", r0, r15) 

(declare-const var748!1 var3671)
(declare-const var1089 String)
(declare-const var75!2 String)
(declare-const var541!1 var3254)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3671_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var220=([java.lang.String], java.lang.Object), evaluateFromElementPath/2072274727=([org.hibernate.hql.internal.ast.tree.FromElementFactory, java.lang.String, java.lang.String], org.hibernate.hql.internal.ast.tree.FromElement), getEntityPersister/730545235=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.persister.entity.EntityPersister), getClassAlias/-1384515022=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getFromClause/128187641=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromClause), fromClause/1032928764=([org.hibernate.hql.internal.ast.tree.FromElementFactory], org.hibernate.hql.internal.ast.tree.FromClause), var3671_debugf/1063386898=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-var3254-to-var220=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.Object)}
; {var2755=org.hibernate.hql.internal.ast.tree.FromElementFactory, var2486=r2, var75=r0, var84=null_type, var2331=r5, var3254=org.hibernate.hql.internal.ast.tree.FromElement, var232=r6, var907=r3, var3671=org.hibernate.internal.CoreMessageLogger, var1976=$r1, var220=java.lang.Object, var2722="createFromElementInSubselect() : path = %s", var541=r15, var2745=org.hibernate.persister.entity.EntityPersister, var3175=r4, var2134=$r7, var2545=z0, var816=r16, var2537=org.hibernate.hql.internal.ast.tree.FromClause, var13=$r9, var1860=$r8, var748=$r10, var1089="createFromElementInSubselect() : %s -> %s"}
; {org.hibernate.hql.internal.ast.tree.FromElementFactory=var2755, r2=var2486, r0=var75, null_type=var84, r5=var2331, org.hibernate.hql.internal.ast.tree.FromElement=var3254, r6=var232, r3=var907, org.hibernate.internal.CoreMessageLogger=var3671, $r1=var1976, java.lang.Object=var220, "createFromElementInSubselect() : path = %s"=var2722, r15=var541, org.hibernate.persister.entity.EntityPersister=var2745, r4=var3175, $r7=var2134, z0=var2545, r16=var816, org.hibernate.hql.internal.ast.tree.FromClause=var2537, $r9=var13, $r8=var1860, $r10=var748, "createFromElementInSubselect() : %s -> %s"=var1089}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r6 := @parameter2: org.hibernate.hql.internal.ast.tree.FromElement;	r3 := @parameter3: java.lang.String;	$r1 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r1.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("createFromElementInSubselect() : path = %s", r0);	r15 = specialinvoke r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement evaluateFromElementPath(java.lang.String,java.lang.String)>(r0, r3);	r4 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r7 = virtualinvoke r6.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>();	z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if z0 == 0 goto r16 = null;	r16 = null;	$r9 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromClause getFromClause()>();	$r8 = r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromClause fromClause>;	if $r9 == $r8 goto $r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG>;	$r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r10.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("createFromElementInSubselect() : %s -> %s", r0, r15);	return r15
;block_num 4