(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var540 0)
(declare-sort var23 0)
(declare-sort var3251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getElementColumnNames/1131526724 (var540) (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var23-init () var23)
(declare-fun dialect/835828228 (var540) var3251)
(declare-fun <init>/-799429235 (var23 var3251) void)
(declare-fun getTableName/1534696549 (var540) String)
(declare-fun setTableName/1976316821 (var23 String) var23)
(declare-fun getKeyColumnNames/-336697625 (var540) (Array Int String))
(declare-fun addCondition/1370081415 (var23 (Array Int String) String) var23)
(declare-fun sqlWhereString/835828228 (var540) String)
(declare-fun addWhereToken/-1951002523 (var23 String) var23)
(declare-fun addColumn/1634098785 (var23 String) var23)
(declare-fun toStatementString/-1522088931 (var23) String)
(declare-const null-var540 var540)
(declare-const null-Bool Bool)
(declare-const var2698 var540) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var2698 null-var540)))
(declare-const var1365 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1365 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (= (ite var1365 1 0) 0)) ; Cond: z0 == 0 
(define-const var563 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var563)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var563!1 String)
(assert (= var563!1 ""))
(assert true)
(define-const var1247 String (append/672562846 var563!1 "count(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("count(") 
(declare-const var563!2 String)
(assert (= var563!2 (str.++ var563!1 "count(")))
(assert true)
(define-const var2055 (Array Int String) (getElementColumnNames/1131526724 var2698)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getElementColumnNames()>() 
(define-const var218 String (select var2055 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var1762 String (append/672562846 var1247 var218)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1247!1 String)
(assert (= var1247!1 (str.++ var1247 var218)))
(assert true)
(define-const var2434 String (append/672562846 var1762 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1762!1 String)
(assert (= var1762!1 (str.++ var1762 ")")))
(assert true)
(define-const var1655 String (toString/-2075883882 var2434)) ; Statement: $r23 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2743 var23 var23-init) ; Statement: $r7 = new org.hibernate.sql.SimpleSelect 
(define-const var1776 var3251 (dialect/835828228 var2698)) ; Statement: $r8 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.dialect.Dialect dialect> 
(assert true)
;(assert (<init>/-799429235 var2743 var1776)) ; Statement: specialinvoke $r7.<org.hibernate.sql.SimpleSelect: void <init>(org.hibernate.dialect.Dialect)>($r8) 

(declare-const var2743!1 var23)
(declare-const var1776!1 var3251)
(assert true)
(define-const var3942 String (getTableName/1534696549 var2698)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getTableName()>() 
(assert true)
(define-const var2830 var23 (setTableName/1976316821 var2743!1 var3942)) ; Statement: $r11 = virtualinvoke $r7.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect setTableName(java.lang.String)>($r9) 
(assert true)
(define-const var1085 (Array Int String) (getKeyColumnNames/-336697625 var2698)) ; Statement: $r10 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getKeyColumnNames()>() 
(assert true)
(define-const var748 var23 (addCondition/1370081415 var2830 var1085 "=?")) ; Statement: $r13 = virtualinvoke $r11.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addCondition(java.lang.String[],java.lang.String)>($r10, "=?") 
(define-const var2112 String (sqlWhereString/835828228 var2698)) ; Statement: $r12 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlWhereString> 
(assert true)
(define-const var2850 var23 (addWhereToken/-1951002523 var748 var2112)) ; Statement: $r14 = virtualinvoke $r13.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addWhereToken(java.lang.String)>($r12) 
(assert true)
(define-const var3510 var23 (addColumn/1634098785 var2850 var1655)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addColumn(java.lang.String)>($r23) 
(assert true)
(define-const var1760 String (toStatementString/-1522088931 var3510)) ; Statement: $r16 = virtualinvoke $r15.<org.hibernate.sql.SimpleSelect: java.lang.String toStatementString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getElementColumnNames/1131526724=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var23-init=([], org.hibernate.sql.SimpleSelect), dialect/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.dialect.Dialect), <init>/-799429235=([org.hibernate.sql.SimpleSelect, org.hibernate.dialect.Dialect], void), getTableName/1534696549=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), setTableName/1976316821=([org.hibernate.sql.SimpleSelect, java.lang.String], org.hibernate.sql.SimpleSelect), getKeyColumnNames/-336697625=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), addCondition/1370081415=([org.hibernate.sql.SimpleSelect, java.lang.String[], java.lang.String], org.hibernate.sql.SimpleSelect), sqlWhereString/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), addWhereToken/-1951002523=([org.hibernate.sql.SimpleSelect, java.lang.String], org.hibernate.sql.SimpleSelect), addColumn/1634098785=([org.hibernate.sql.SimpleSelect, java.lang.String], org.hibernate.sql.SimpleSelect), toStatementString/-1522088931=([org.hibernate.sql.SimpleSelect], java.lang.String)}
; {var540=org.hibernate.persister.collection.AbstractCollectionPersister, var2698=r1, var1365=z0, var563=$r0, var1247=$r4, var2055=$r2, var218=$r3, var1762=$r5, var2434=$r6, var1655=$r23, var23=org.hibernate.sql.SimpleSelect, var2743=$r7, var3251=org.hibernate.dialect.Dialect, var1776=$r8, var3942=$r9, var2830=$r11, var1085=$r10, var748=$r13, var2112=$r12, var2850=$r14, var3510=$r15, var1760=$r16}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var540, r1=var2698, z0=var1365, $r0=var563, $r4=var1247, $r2=var2055, $r3=var218, $r5=var1762, $r6=var2434, $r23=var1655, org.hibernate.sql.SimpleSelect=var23, $r7=var2743, org.hibernate.dialect.Dialect=var3251, $r8=var1776, $r9=var3942, $r11=var2830, $r10=var1085, $r13=var748, $r12=var2112, $r14=var2850, $r15=var3510, $r16=var1760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	z0 := @parameter0: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("count(");	$r2 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getElementColumnNames()>();	$r3 = $r2[0];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r23 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new org.hibernate.sql.SimpleSelect;	$r8 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.dialect.Dialect dialect>;	specialinvoke $r7.<org.hibernate.sql.SimpleSelect: void <init>(org.hibernate.dialect.Dialect)>($r8);	$r9 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getTableName()>();	$r11 = virtualinvoke $r7.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect setTableName(java.lang.String)>($r9);	$r10 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getKeyColumnNames()>();	$r13 = virtualinvoke $r11.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addCondition(java.lang.String[],java.lang.String)>($r10, "=?");	$r12 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlWhereString>;	$r14 = virtualinvoke $r13.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addWhereToken(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addColumn(java.lang.String)>($r23);	$r16 = virtualinvoke $r15.<org.hibernate.sql.SimpleSelect: java.lang.String toStatementString()>();	return $r16
;block_num 3