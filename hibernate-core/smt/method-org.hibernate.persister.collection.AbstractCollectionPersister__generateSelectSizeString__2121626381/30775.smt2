(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var410 0)
(declare-sort var1843 0)
(declare-sort var3549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getIndexColumnNames/1822169306 (var410) (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1843-init () var1843)
(declare-fun dialect/835828228 (var410) var3549)
(declare-fun <init>/-799429235 (var1843 var3549) void)
(declare-fun getTableName/1534696549 (var410) String)
(declare-fun setTableName/1976316821 (var1843 String) var1843)
(declare-fun getKeyColumnNames/-336697625 (var410) (Array Int String))
(declare-fun addCondition/1370081415 (var1843 (Array Int String) String) var1843)
(declare-fun sqlWhereString/835828228 (var410) String)
(declare-fun addWhereToken/-1951002523 (var1843 String) var1843)
(declare-fun addColumn/1634098785 (var1843 String) var1843)
(declare-fun toStatementString/-1522088931 (var1843) String)
(declare-const null-var410 var410)
(declare-const null-Bool Bool)
(declare-const var2124 var410) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var2124 null-var410)))
(declare-const var2143 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2143 null-Bool)))
 ; Statement: if z0 == 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var2143 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var351 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var351)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var351!1 String)
(assert (= var351!1 ""))
(assert true)
(define-const var2576 String (append/672562846 var351!1 "max(")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max(") 
(declare-const var351!2 String)
(assert (= var351!2 (str.++ var351!1 "max(")))
(assert true)
(define-const var1204 (Array Int String) (getIndexColumnNames/1822169306 var2124)) ; Statement: $r18 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getIndexColumnNames()>() 
(define-const var374 String (select var1204 0)) ; Statement: $r19 = $r18[0] 
(assert true)
(define-const var1578 String (append/672562846 var2576 var374)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2576!1 String)
(assert (= var2576!1 (str.++ var2576 var374)))
(assert true)
(define-const var1118 String (append/672562846 var1578 ") + 1")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") + 1") 
(declare-const var1578!1 String)
(assert (= var1578!1 (str.++ var1578 ") + 1")))
(assert true)
(define-const var3709 String (toString/-2075883882 var1118)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r7 = new org.hibernate.sql.SimpleSelect] 
(assert true) ; Non Conditional
(define-const var3982 var1843 var1843-init) ; Statement: $r7 = new org.hibernate.sql.SimpleSelect 
(define-const var2769 var3549 (dialect/835828228 var2124)) ; Statement: $r8 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.dialect.Dialect dialect> 
(assert true)
;(assert (<init>/-799429235 var3982 var2769)) ; Statement: specialinvoke $r7.<org.hibernate.sql.SimpleSelect: void <init>(org.hibernate.dialect.Dialect)>($r8) 

(declare-const var3982!1 var1843)
(declare-const var2769!1 var3549)
(assert true)
(define-const var3236 String (getTableName/1534696549 var2124)) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getTableName()>() 
(assert true)
(define-const var897 var1843 (setTableName/1976316821 var3982!1 var3236)) ; Statement: $r11 = virtualinvoke $r7.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect setTableName(java.lang.String)>($r9) 
(assert true)
(define-const var3840 (Array Int String) (getKeyColumnNames/-336697625 var2124)) ; Statement: $r10 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getKeyColumnNames()>() 
(assert true)
(define-const var1622 var1843 (addCondition/1370081415 var897 var3840 "=?")) ; Statement: $r13 = virtualinvoke $r11.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addCondition(java.lang.String[],java.lang.String)>($r10, "=?") 
(define-const var1531 String (sqlWhereString/835828228 var2124)) ; Statement: $r12 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlWhereString> 
(assert true)
(define-const var1421 var1843 (addWhereToken/-1951002523 var1622 var1531)) ; Statement: $r14 = virtualinvoke $r13.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addWhereToken(java.lang.String)>($r12) 
(assert true)
(define-const var2794 var1843 (addColumn/1634098785 var1421 var3709)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addColumn(java.lang.String)>($r23) 
(assert true)
(define-const var3530 String (toStatementString/-1522088931 var2794)) ; Statement: $r16 = virtualinvoke $r15.<org.hibernate.sql.SimpleSelect: java.lang.String toStatementString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getIndexColumnNames/1822169306=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1843-init=([], org.hibernate.sql.SimpleSelect), dialect/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.dialect.Dialect), <init>/-799429235=([org.hibernate.sql.SimpleSelect, org.hibernate.dialect.Dialect], void), getTableName/1534696549=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), setTableName/1976316821=([org.hibernate.sql.SimpleSelect, java.lang.String], org.hibernate.sql.SimpleSelect), getKeyColumnNames/-336697625=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), addCondition/1370081415=([org.hibernate.sql.SimpleSelect, java.lang.String[], java.lang.String], org.hibernate.sql.SimpleSelect), sqlWhereString/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), addWhereToken/-1951002523=([org.hibernate.sql.SimpleSelect, java.lang.String], org.hibernate.sql.SimpleSelect), addColumn/1634098785=([org.hibernate.sql.SimpleSelect, java.lang.String], org.hibernate.sql.SimpleSelect), toStatementString/-1522088931=([org.hibernate.sql.SimpleSelect], java.lang.String)}
; {var410=org.hibernate.persister.collection.AbstractCollectionPersister, var2124=r1, var2143=z0, var351=$r17, var2576=$r20, var1204=$r18, var374=$r19, var1578=$r21, var1118=$r22, var3709=$r23, var1843=org.hibernate.sql.SimpleSelect, var3982=$r7, var3549=org.hibernate.dialect.Dialect, var2769=$r8, var3236=$r9, var897=$r11, var3840=$r10, var1622=$r13, var1531=$r12, var1421=$r14, var2794=$r15, var3530=$r16}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var410, r1=var2124, z0=var2143, $r17=var351, $r20=var2576, $r18=var1204, $r19=var374, $r21=var1578, $r22=var1118, $r23=var3709, org.hibernate.sql.SimpleSelect=var1843, $r7=var3982, org.hibernate.dialect.Dialect=var3549, $r8=var2769, $r9=var3236, $r11=var897, $r10=var3840, $r13=var1622, $r12=var1531, $r14=var1421, $r15=var2794, $r16=var3530}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	z0 := @parameter0: boolean;	if z0 == 0 goto $r0 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("max(");	$r18 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getIndexColumnNames()>();	$r19 = $r18[0];	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") + 1");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r7 = new org.hibernate.sql.SimpleSelect];	$r7 = new org.hibernate.sql.SimpleSelect;	$r8 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.dialect.Dialect dialect>;	specialinvoke $r7.<org.hibernate.sql.SimpleSelect: void <init>(org.hibernate.dialect.Dialect)>($r8);	$r9 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String getTableName()>();	$r11 = virtualinvoke $r7.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect setTableName(java.lang.String)>($r9);	$r10 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] getKeyColumnNames()>();	$r13 = virtualinvoke $r11.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addCondition(java.lang.String[],java.lang.String)>($r10, "=?");	$r12 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlWhereString>;	$r14 = virtualinvoke $r13.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addWhereToken(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<org.hibernate.sql.SimpleSelect: org.hibernate.sql.SimpleSelect addColumn(java.lang.String)>($r23);	$r16 = virtualinvoke $r15.<org.hibernate.sql.SimpleSelect: java.lang.String toStatementString()>();	return $r16
;block_num 3