(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var804 0)
(declare-sort var3287 0)
(declare-sort var3711 0)
(declare-sort var514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun persister/1732383027 (var804) var3287)
(declare-fun var3711_getVersionProperty/866317805 (var3711) Int)
(declare-fun cast-from-var3287-to-var3711 (var3287) var3711)
(declare-fun var514_getPropertyColumnNames/-1525455718 (var514 Int) (Array Int String))
(declare-fun cast-from-var3287-to-var514 (var3287) var514)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnSpec/1732383027 (var804) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun resetText/-628006248 (var804) void)
(declare-const null-var804 var804)
(declare-const var953 var804) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause 
(assert (not (= var953 null-var804)))
(define-const var1471 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1471)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1471!1 String)
(assert (= var1471!1 ""))
(define-const var3429 var3287 (persister/1732383027 var953)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.persister.entity.Queryable persister> 
(define-const var1475 var3287 (persister/1732383027 var953)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.persister.entity.Queryable persister> 
(define-const var3541 Int (var3711_getVersionProperty/866317805 (cast-from-var3287-to-var3711 var1475))) ; Statement: $i0 = interfaceinvoke $r2.<org.hibernate.persister.entity.Queryable: int getVersionProperty()>() 
(define-const var210 (Array Int String) (var514_getPropertyColumnNames/-1525455718 (cast-from-var3287-to-var514 var3429) var3541)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.Queryable: java.lang.String[] getPropertyColumnNames(int)>($i0) 
(define-const var401 String (select var210 0)) ; Statement: $r5 = $r4[0] 
(assert true)
(define-const var2673 String (append/672562846 var1471!1 var401)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1471!2 String)
(assert (= var1471!2 (str.++ var1471!1 var401)))
(assert true)
(define-const var2543 String (append/672562846 var2673 ", ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2673!1 String)
(assert (= var2673!1 (str.++ var2673 ", ")))
(define-const var903 String (columnSpec/1732383027 var953)) ; Statement: $r7 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> 
(assert true)
(define-const var3642 String (append/672562846 var2543 var903)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2543!1 String)
(assert (= var2543!1 (str.++ var2543 var903)))
(assert true)
(define-const var3156 String (toString/-2075883882 var3642)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var953!1 var804)
(assert (not (= var953!1 null-var804)))
(assert (= (columnSpec/1732383027 var953!1) var3156)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> = $r10 
(assert true)
;(assert (resetText/-628006248 var953!1)) ; Statement: specialinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void resetText()>() 

(declare-const var953!2 var804)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), persister/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], org.hibernate.persister.entity.Queryable), var3711_getVersionProperty/866317805=([org.hibernate.persister.entity.EntityPersister], int), cast-from-var3287-to-var3711=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.EntityPersister), var514_getPropertyColumnNames/-1525455718=([org.hibernate.persister.entity.Loadable, int], java.lang.String[]), cast-from-var3287-to-var514=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.Loadable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnSpec/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), resetText/-628006248=([org.hibernate.hql.internal.ast.tree.IntoClause], void)}
; {var804=org.hibernate.hql.internal.ast.tree.IntoClause, var953=r0, var1471=$r1, var3287=org.hibernate.persister.entity.Queryable, var3429=$r3, var1475=$r2, var3711=org.hibernate.persister.entity.EntityPersister, var3541=$i0, var514=org.hibernate.persister.entity.Loadable, var210=$r4, var401=$r5, var2673=$r6, var2543=$r8, var903=$r7, var3642=$r9, var3156=$r10}
; {org.hibernate.hql.internal.ast.tree.IntoClause=var804, r0=var953, $r1=var1471, org.hibernate.persister.entity.Queryable=var3287, $r3=var3429, $r2=var1475, org.hibernate.persister.entity.EntityPersister=var3711, $i0=var3541, org.hibernate.persister.entity.Loadable=var514, $r4=var210, $r5=var401, $r6=var2673, $r8=var2543, $r7=var903, $r9=var3642, $r10=var3156}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.IntoClause;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.persister.entity.Queryable persister>;	$r2 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: org.hibernate.persister.entity.Queryable persister>;	$i0 = interfaceinvoke $r2.<org.hibernate.persister.entity.Queryable: int getVersionProperty()>();	$r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.Queryable: java.lang.String[] getPropertyColumnNames(int)>($i0);	$r5 = $r4[0];	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r7 = r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> = $r10;	specialinvoke r0.<org.hibernate.hql.internal.ast.tree.IntoClause: void resetText()>();	return
;block_num 1