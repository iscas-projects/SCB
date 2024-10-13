(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var1509 0)
(declare-sort var1692 0)
(declare-sort var2310 0)
(declare-sort var1226 0)
(declare-sort var3811 0)
(declare-sort var2458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2310_debugf/585189783 (var2310 String var1226) void)
(declare-fun cast-from-String-to-var1226 (String) var1226)
(declare-fun evaluateFromElementPath/2072274727 (var3389 String String) var1692)
(declare-fun getEntityPersister/730545235 (var1692) var3811)
(declare-fun getClassAlias/-1384515022 (var1692) String)
(declare-fun getTableAlias/-89139576 (var1692) String)
(declare-fun getFromClause/128187641 (var1692) var2458)
(declare-fun fromClause/1032928764 (var3389) var2458)
(declare-fun var2310_debugf/1063386898 (var2310 String var1226 var1226) void)
(declare-fun cast-from-var1692-to-var1226 (var1692) var1226)
(declare-const null-var3389 var3389)
(declare-const null-String String)
(declare-const null-var1692 var1692)
(declare-const var3389-LOG var2310)
(declare-const var183 var3389) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory 
(assert (not (= var183 null-var3389)))
(declare-const var2828 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2828 null-String)))
(declare-const var3156 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3156 null-String)))
(declare-const var413 var1692) ; Statement: r6 := @parameter2: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var413 null-var1692)))
(declare-const var2551 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var2551 null-String)))
(define-const var1352 var2310 var3389-LOG) ; Statement: $r1 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var2310_debugf/585189783 var1352 "createFromElementInSubselect() : path = %s" (cast-from-String-to-var1226 var2828))) ; Statement: interfaceinvoke $r1.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("createFromElementInSubselect() : path = %s", r0) 

(declare-const var1352!1 var2310)
(declare-const var3526 String)
(declare-const var2828!1 String)
(assert true)
(define-const var1065 var1692 (evaluateFromElementPath/2072274727 var183 var2828!1 var2551)) ; Statement: r15 = specialinvoke r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement evaluateFromElementPath(java.lang.String,java.lang.String)>(r0, r3) 
(assert true)
(define-const var3181 var3811 (getEntityPersister/730545235 var1065)) ; Statement: r4 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(assert true)
(define-const var1252 String (getClassAlias/-1384515022 var413)) ; Statement: $r7 = virtualinvoke r6.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>() 
(assert true)
(define-const var3742 Bool (= var3156 var1252)) ; Statement: z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if z0 == 0 goto r16 = null 
(assert (not (= (ite var3742 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var2875 String (getTableAlias/-89139576 var1065)) ; Statement: r16 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>() 
 ; Statement: goto [?= $r9 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromClause getFromClause()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var926 var2458 (getFromClause/128187641 var1065)) ; Statement: $r9 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromClause getFromClause()>() 
(define-const var3326 var2458 (fromClause/1032928764 var183)) ; Statement: $r8 = r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromClause fromClause> 
 ; Statement: if $r9 == $r8 goto $r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (= var926 var3326)) ; Cond: $r9 == $r8 
(define-const var1701 var2310 var3389-LOG) ; Statement: $r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var2310_debugf/1063386898 var1701 "createFromElementInSubselect() : %s -> %s" (cast-from-String-to-var1226 var2828!1) (cast-from-var1692-to-var1226 var1065))) ; Statement: interfaceinvoke $r10.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("createFromElementInSubselect() : %s -> %s", r0, r15) 

(declare-const var1701!1 var2310)
(declare-const var1780 String)
(declare-const var2828!2 String)
(declare-const var1065!1 var1692)
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var2310_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var1226=([java.lang.String], java.lang.Object), evaluateFromElementPath/2072274727=([org.hibernate.hql.internal.ast.tree.FromElementFactory, java.lang.String, java.lang.String], org.hibernate.hql.internal.ast.tree.FromElement), getEntityPersister/730545235=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.persister.entity.EntityPersister), getClassAlias/-1384515022=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getTableAlias/-89139576=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), getFromClause/128187641=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromClause), fromClause/1032928764=([org.hibernate.hql.internal.ast.tree.FromElementFactory], org.hibernate.hql.internal.ast.tree.FromClause), var2310_debugf/1063386898=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object, java.lang.Object], void), cast-from-var1692-to-var1226=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.Object)}
; {var3389=org.hibernate.hql.internal.ast.tree.FromElementFactory, var183=r2, var2828=r0, var1509=null_type, var3156=r5, var1692=org.hibernate.hql.internal.ast.tree.FromElement, var413=r6, var2551=r3, var2310=org.hibernate.internal.CoreMessageLogger, var1352=$r1, var1226=java.lang.Object, var3526="createFromElementInSubselect() : path = %s", var1065=r15, var3811=org.hibernate.persister.entity.EntityPersister, var3181=r4, var1252=$r7, var3742=z0, var2875=r16, var2458=org.hibernate.hql.internal.ast.tree.FromClause, var926=$r9, var3326=$r8, var1701=$r10, var1780="createFromElementInSubselect() : %s -> %s"}
; {org.hibernate.hql.internal.ast.tree.FromElementFactory=var3389, r2=var183, r0=var2828, null_type=var1509, r5=var3156, org.hibernate.hql.internal.ast.tree.FromElement=var1692, r6=var413, r3=var2551, org.hibernate.internal.CoreMessageLogger=var2310, $r1=var1352, java.lang.Object=var1226, "createFromElementInSubselect() : path = %s"=var3526, r15=var1065, org.hibernate.persister.entity.EntityPersister=var3811, r4=var3181, $r7=var1252, z0=var3742, r16=var2875, org.hibernate.hql.internal.ast.tree.FromClause=var2458, $r9=var926, $r8=var3326, $r10=var1701, "createFromElementInSubselect() : %s -> %s"=var1780}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r6 := @parameter2: org.hibernate.hql.internal.ast.tree.FromElement;	r3 := @parameter3: java.lang.String;	$r1 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r1.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("createFromElementInSubselect() : path = %s", r0);	r15 = specialinvoke r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement evaluateFromElementPath(java.lang.String,java.lang.String)>(r0, r3);	r4 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r7 = virtualinvoke r6.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassAlias()>();	z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if z0 == 0 goto r16 = null;	r16 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getTableAlias()>();	goto [?= $r9 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromClause getFromClause()>()];	$r9 = virtualinvoke r15.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromClause getFromClause()>();	$r8 = r2.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromClause fromClause>;	if $r9 == $r8 goto $r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG>;	$r10 = <org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r10.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object,java.lang.Object)>("createFromElementInSubselect() : %s -> %s", r0, r15);	return r15
;block_num 4