(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/-1511142657 (var3374) String)
(declare-fun getTableName/761225172 (var3374) String)
(declare-fun columnSpec/1732383027 (var3374) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3374 var3374)
(declare-const var1098 var3374) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.IntoClause 
(assert (not (= var1098 null-var3374)))
(define-const var1608 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1608)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1608!1 String)
(assert (= var1608!1 ""))
(assert true)
(define-const var3336 String (append/672562846 var1608!1 "IntoClause{entityName=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IntoClause{entityName=") 
(declare-const var1608!2 String)
(assert (= var1608!2 (str.++ var1608!1 "IntoClause{entityName=")))
(assert true)
(define-const var1876 String (getEntityName/-1511142657 var1098)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String getEntityName()>() 
(assert true)
(define-const var1217 String (append/672562846 var3336 var1876)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3336!1 String)
(assert (= var3336!1 (str.++ var3336 var1876)))
(assert true)
(define-const var2112 String (append/672562846 var1217 ",tableName=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=") 
(declare-const var1217!1 String)
(assert (= var1217!1 (str.++ var1217 ",tableName=")))
(assert true)
(define-const var3566 String (getTableName/761225172 var1098)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String getTableName()>() 
(assert true)
(define-const var2834 String (append/672562846 var2112 var3566)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2112!1 String)
(assert (= var2112!1 (str.++ var2112 var3566)))
(assert true)
(define-const var1780 String (append/672562846 var2834 ",columns={")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={") 
(declare-const var2834!1 String)
(assert (= var2834!1 (str.++ var2834 ",columns={")))
(define-const var3231 String (columnSpec/1732383027 var1098)) ; Statement: $r8 = r1.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec> 
(assert true)
(define-const var748 String (append/672562846 var1780 var3231)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1780!1 String)
(assert (= var1780!1 (str.++ var1780 var3231)))
(assert true)
(define-const var1470 String (append/672562846 var748 "}}")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}}") 
(declare-const var748!1 String)
(assert (= var748!1 (str.++ var748 "}}")))
(assert true)
(define-const var375 String (toString/-2075883882 var1470)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/-1511142657=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), getTableName/761225172=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), columnSpec/1732383027=([org.hibernate.hql.internal.ast.tree.IntoClause], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3374=org.hibernate.hql.internal.ast.tree.IntoClause, var1098=r1, var1608=$r0, var3336=$r3, var1876=$r2, var1217=$r4, var2112=$r6, var3566=$r5, var2834=$r7, var1780=$r9, var3231=$r8, var748=$r10, var1470=$r11, var375=$r12}
; {org.hibernate.hql.internal.ast.tree.IntoClause=var3374, r1=var1098, $r0=var1608, $r3=var3336, $r2=var1876, $r4=var1217, $r6=var2112, $r5=var3566, $r7=var2834, $r9=var1780, $r8=var3231, $r10=var748, $r11=var1470, $r12=var375}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.IntoClause;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IntoClause{entityName=");	$r2 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String getEntityName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",tableName=");	$r5 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String getTableName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",columns={");	$r8 = r1.<org.hibernate.hql.internal.ast.tree.IntoClause: java.lang.String columnSpec>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}}");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1