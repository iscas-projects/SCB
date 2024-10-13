(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1772 0)
(declare-sort var604 0)
(declare-sort var3271 0)
(declare-sort var1387 0)
(declare-sort var1453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findEntityPersisterByName/111747825 (var1772 String) var3271)
(declare-fun var1387-init () var1387)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1980921278 (var1387 String) void)
(declare-fun cast-from-var1387-to-var1453 (var1387) var1453)
(declare-const null-var1772 var1772)
(declare-const null-String String)
(declare-const null-var3271 var3271)
(declare-const var3720 var1772) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper 
(assert (not (= var3720 null-var1772)))
(declare-const var3973 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3973 null-String)))
(assert true)
(define-const var3040 var3271 (findEntityPersisterByName/111747825 var3720 var3973)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.persister.entity.EntityPersister findEntityPersisterByName(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto (branch) 
(assert (not (not (= var3040 null-var3271)))) ; Negate: Cond: r2 != null  
(define-const var3818 var1387 var1387-init) ; Statement: $r9 = new org.hibernate.hql.internal.ast.QuerySyntaxException 
(define-const var506 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var506)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var506!1 String)
(assert (= var506!1 ""))
(assert true)
(define-const var2900 String (append/672562846 var506!1 var3973)) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var506!2 String)
(assert (= var506!2 (str.++ var506!1 var3973)))
(assert true)
(define-const var2260 String (append/672562846 var2900 " is not mapped")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not mapped") 
(declare-const var2900!1 String)
(assert (= var2900!1 (str.++ var2900 " is not mapped")))
(assert true)
(define-const var1024 String (toString/-2075883882 var2260)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1980921278 var3818 var1024)) ; Statement: specialinvoke $r9.<org.hibernate.hql.internal.ast.QuerySyntaxException: void <init>(java.lang.String)>($r7) 

(declare-const var3818!1 var1387)
(declare-const var1024!1 String)
(define-const var3279 var1453 (cast-from-var1387-to-var1453 var3818!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {findEntityPersisterByName/111747825=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], org.hibernate.persister.entity.EntityPersister), var1387-init=([], org.hibernate.hql.internal.ast.QuerySyntaxException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1980921278=([org.hibernate.hql.internal.ast.QuerySyntaxException, java.lang.String], void), cast-from-var1387-to-var1453=([org.hibernate.hql.internal.ast.QuerySyntaxException], java.lang.Throwable)}
; {var1772=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var3720=r0, var3973=r1, var604=null_type, var3271=org.hibernate.persister.entity.EntityPersister, var3040=r2, var1387=org.hibernate.hql.internal.ast.QuerySyntaxException, var3818=$r9, var506=$r8, var2900=$r5, var2260=$r6, var1024=$r7, var1453=java.lang.Throwable, var3279=$r10}
; {org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var1772, r0=var3720, r1=var3973, null_type=var604, org.hibernate.persister.entity.EntityPersister=var3271, r2=var3040, org.hibernate.hql.internal.ast.QuerySyntaxException=var1387, $r9=var3818, $r8=var506, $r5=var2900, $r6=var2260, $r7=var1024, java.lang.Throwable=var1453, $r10=var3279}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.util.SessionFactoryHelper;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.persister.entity.EntityPersister findEntityPersisterByName(java.lang.String)>(r1);	if r2 != null goto (branch);	$r9 = new org.hibernate.hql.internal.ast.QuerySyntaxException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not mapped");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.hql.internal.ast.QuerySyntaxException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2