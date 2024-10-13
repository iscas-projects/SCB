(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3516 0)
(declare-sort var827 0)
(declare-sort var2095 0)
(declare-sort var2209 0)
(declare-sort var1106 0)
(declare-sort var1447 0)
(declare-sort var3853 0)
(declare-sort var3637 0)
(declare-sort var1705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2095-init () var2095)
(declare-fun getFactory/36801881 (var3516) var2209)
(declare-fun var2209_getDialect/549556505 (var2209) var1106)
(declare-fun <init>/-604569825 (var2095 var1106) void)
(declare-fun var3853_getSessionFactoryOptions/-1909602825 (var3853) var1447)
(declare-fun cast-from-var2209-to-var3853 (var2209) var3853)
(declare-fun var1447_isCommentsEnabled/348952998 (var1447) Bool)
(declare-fun getRootAlias/-884767280 (var3516) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun fromTableFragment/-838615174 (var3637 String) String)
(declare-fun cast-from-var3516-to-var3637 (var3516) var3637)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fromJoinFragment/-1778024351 (var3516 String Bool Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setFromClause/1818208161 (var2095 String) var2095)
(declare-fun var1705-init () var1705)
(declare-fun <init>/1475962515 (var1705) void)
(declare-fun getIdentifierColumnNames/-1043261065 (var3516) (Array Int String))
(declare-fun getIdentifierAliases/467718795 (var3516) (Array Int String))
(declare-fun addColumns/-614458548 (var1705 String (Array Int String) (Array Int String)) var1705)
(declare-fun setSelectClause/-2097585540 (var2095 var1705) var2095)
(declare-fun getSubclassPropertyIndex/1026729404 (var3516 String) Int)
(declare-fun getSubclassPropertyTableNumber/509732839 (var3516 Int) Int)
(declare-fun var3516_generateTableAlias/-1730583879 (String Int) String)
(declare-fun getSubclassPropertyColumnReaderTemplateClosure/1776215751 (var3516) (Array Int (Array Int String)))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun getSubclassPropertyFormulaTemplateClosure/-1397910448 (var3516) (Array Int (Array Int String)))
(declare-fun whereJoinFragment/-433422514 (var3516 String Bool Bool) String)
(declare-fun setWhereClause/1091603732 (var2095 String) var2095)
(declare-fun setOuterJoins/840368943 (var2095 String String) var2095)
(declare-fun toStatementString/-1084413137 (var2095) String)
(declare-const null-var3516 var3516)
(declare-const null-String String)
(declare-const var2810 var3516) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2810 null-var3516)))
(declare-const var2523 String) ; Statement: r16 := @parameter0: java.lang.String 
(assert (not (= var2523 null-String)))
(define-const var1592 var2095 var2095-init) ; Statement: $r0 = new org.hibernate.sql.Select 
(assert true)
(define-const var2621 var2209 (getFactory/36801881 var2810)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1523 var1106 (var2209_getDialect/549556505 var2621)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
;(assert (<init>/-604569825 var1592 var1523)) ; Statement: specialinvoke $r0.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r3) 

(declare-const var1592!1 var2095)
(declare-const var1523!1 var1106)
(assert true)
(define-const var400 var2209 (getFactory/36801881 var2810)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3934 var1447 (var3853_getSessionFactoryOptions/-1909602825 (cast-from-var2209-to-var3853 var400))) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var1526 Bool (var1447_isCommentsEnabled/348952998 var3934)) ; Statement: $z0 = interfaceinvoke $r5.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r35 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>() 
(assert (= (ite var1526 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var11 String (getRootAlias/-884767280 var2810)) ; Statement: $r35 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>() 
(define-const var3990 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3990)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3990!1 String)
(assert (= var3990!1 ""))
(assert true)
(define-const var3822 String (fromTableFragment/-838615174 (cast-from-var3516-to-var3637 var2810) var11)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String fromTableFragment(java.lang.String)>($r35) 
(assert true)
(define-const var3073 String (append/672562846 var3990!1 var3822)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3990!2 String)
(assert (= var3990!2 (str.++ var3990!1 var3822)))
(assert true)
(define-const var1160 String (fromJoinFragment/-1778024351 var2810 var11 (ite (= 1 1) true false) (ite (= 1 0) true false))) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r35, 1, 0) 
(assert true)
(define-const var3171 String (append/672562846 var3073 var1160)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3073!1 String)
(assert (= var3073!1 (str.++ var3073 var1160)))
(assert true)
(define-const var1029 String (toString/-2075883882 var3171)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setFromClause/1818208161 var1592!1 var1029)) ; Statement: virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r11) 

(declare-const var1592!2 var2095)
(declare-const var1029!1 String)
(define-const var1969 var1705 var1705-init) ; Statement: $r12 = new org.hibernate.sql.SelectFragment 
(assert true)
;(assert (<init>/1475962515 var1969)) ; Statement: specialinvoke $r12.<org.hibernate.sql.SelectFragment: void <init>()>() 

(declare-const var1969!1 var1705)
(assert true)
(define-const var626 (Array Int String) (getIdentifierColumnNames/-1043261065 var2810)) ; Statement: $r14 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierColumnNames()>() 
(assert true)
(define-const var675 (Array Int String) (getIdentifierAliases/467718795 var2810)) ; Statement: $r13 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierAliases()>() 
(assert true)
;(assert (addColumns/-614458548 var1969!1 var11 var626 var675)) ; Statement: virtualinvoke $r12.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment addColumns(java.lang.String,java.lang.String[],java.lang.String[])>($r35, $r14, $r13) 

(declare-const var1969!2 var1705)
(declare-const var11!1 String)
(declare-const var626!1 (Array Int String))
(declare-const var675!1 (Array Int String))
(assert true)
;(assert (setSelectClause/-2097585540 var1592!2 var1969!2)) ; Statement: virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(org.hibernate.sql.SelectFragment)>($r12) 

(declare-const var1592!3 var2095)
(declare-const var1969!3 var1705)
(define-const var2495 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2495)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2495!1 String)
(assert (= var2495!1 ""))
(assert true)
(define-const var3594 Int (getSubclassPropertyIndex/1026729404 var2810 var2523)) ; Statement: $i1 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyIndex(java.lang.String)>(r16) 
(assert true)
(define-const var1212 Int (getSubclassPropertyTableNumber/509732839 var2810 var3594)) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyTableNumber(int)>($i1) 
(define-const var244 String (var3516_generateTableAlias/-1730583879 var11!1 var1212)) ; Statement: $r36 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String generateTableAlias(java.lang.String,int)>($r35, $i0) 
(define-const var1739 String "") ; Statement: r38 = "" 
(define-const var323 String "") ; Statement: r45 = "" 
(define-const var811 String "") ; Statement: r44 = "" 
(assert true)
(define-const var16 (Array Int (Array Int String)) (getSubclassPropertyColumnReaderTemplateClosure/1776215751 var2810)) ; Statement: $r17 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[][] getSubclassPropertyColumnReaderTemplateClosure()>() 
(define-const var3882 (Array Int String) (select var16 var3594)) ; Statement: $r37 = $r17[$i1] 
(define-const var2395 Int (getLength-Arr-String-1 var3882)) ; Statement: $i2 = lengthof $r37 
(define-const var3062 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= $i2 goto $r18 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[][] getSubclassPropertyFormulaTemplateClosure()>() 
(assert (>= var3062 var2395)) ; Cond: i3 >= $i2 
(assert true)
(define-const var1096 (Array Int (Array Int String)) (getSubclassPropertyFormulaTemplateClosure/-1397910448 var2810)) ; Statement: $r18 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[][] getSubclassPropertyFormulaTemplateClosure()>() 
(define-const var3783 (Array Int String) (select var1096 var3594)) ; Statement: r41 = $r18[$i1] 
(define-const var3762 Int (getLength-Arr-String-1 var3783)) ; Statement: i4 = lengthof r41 
(define-const var3851 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i4 goto $r19 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r35, 1, 0) 
(assert (>= var3851 var3762)) ; Cond: i5 >= i4 
(assert true)
(define-const var2858 String (whereJoinFragment/-433422514 var2810 var11!1 (ite (= 1 1) true false) (ite (= 1 0) true false))) ; Statement: $r19 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r35, 1, 0) 
(assert true)
;(assert (append/672562846 var2495!1 var2858)) ; Statement: virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2495!2 String)
(assert (= var2495!2 (str.++ var2495!1 var2858)))
(assert true)
(define-const var1807 String (toString/-2075883882 var2495!2)) ; Statement: $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setWhereClause/1091603732 var1592!3 var1807)) ; Statement: virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r20) 

(declare-const var1592!4 var2095)
(declare-const var1807!1 String)
(assert true)
(define-const var713 var2095 (setOuterJoins/840368943 var1592!4 "" "")) ; Statement: $r21 = virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>("", "") 
(assert true)
(define-const var628 String (toStatementString/-1084413137 var713)) ; Statement: $r22 = virtualinvoke $r21.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var2095-init=([], org.hibernate.sql.Select), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var2209_getDialect/549556505=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.Dialect), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), var3853_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var2209-to-var3853=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var1447_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), getRootAlias/-884767280=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), fromTableFragment/-838615174=([org.hibernate.persister.entity.OuterJoinLoadable, java.lang.String], java.lang.String), cast-from-var3516-to-var3637=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.OuterJoinLoadable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fromJoinFragment/-1778024351=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, boolean, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setFromClause/1818208161=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), var1705-init=([], org.hibernate.sql.SelectFragment), <init>/1475962515=([org.hibernate.sql.SelectFragment], void), getIdentifierColumnNames/-1043261065=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[]), getIdentifierAliases/467718795=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[]), addColumns/-614458548=([org.hibernate.sql.SelectFragment, java.lang.String, java.lang.String[], java.lang.String[]], org.hibernate.sql.SelectFragment), setSelectClause/-2097585540=([org.hibernate.sql.Select, org.hibernate.sql.SelectFragment], org.hibernate.sql.Select), getSubclassPropertyIndex/1026729404=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String], int), getSubclassPropertyTableNumber/509732839=([org.hibernate.persister.entity.AbstractEntityPersister, int], int), var3516_generateTableAlias/-1730583879=([java.lang.String, int], java.lang.String), getSubclassPropertyColumnReaderTemplateClosure/1776215751=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[][]), getLength-Arr-String-1=([java.lang.String[]], int), getSubclassPropertyFormulaTemplateClosure/-1397910448=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[][]), whereJoinFragment/-433422514=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String, boolean, boolean], java.lang.String), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setOuterJoins/840368943=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), toStatementString/-1084413137=([org.hibernate.sql.Select], java.lang.String)}
; {var3516=org.hibernate.persister.entity.AbstractEntityPersister, var2810=r1, var2523=r16, var827=null_type, var2095=org.hibernate.sql.Select, var1592=$r0, var2209=org.hibernate.engine.spi.SessionFactoryImplementor, var2621=$r2, var1106=org.hibernate.dialect.Dialect, var1523=$r3, var400=$r4, var1447=org.hibernate.boot.spi.SessionFactoryOptions, var3853=org.hibernate.SessionFactory, var3934=$r5, var1526=$z0, var11=$r35, var3990=$r6, var3637=org.hibernate.persister.entity.OuterJoinLoadable, var3822=$r7, var3073=$r9, var1160=$r8, var3171=$r10, var1029=$r11, var1705=org.hibernate.sql.SelectFragment, var1969=$r12, var626=$r14, var675=$r13, var2495=$r15, var3594=$i1, var1212=$i0, var244=$r36, var1739=r38, var323=r45, var811=r44, var16=$r17, var3882=$r37, var2395=$i2, var3062=i3, var1096=$r18, var3783=r41, var3762=i4, var3851=i5, var2858=$r19, var1807=$r20, var713=$r21, var628=$r22}
; {org.hibernate.persister.entity.AbstractEntityPersister=var3516, r1=var2810, r16=var2523, null_type=var827, org.hibernate.sql.Select=var2095, $r0=var1592, org.hibernate.engine.spi.SessionFactoryImplementor=var2209, $r2=var2621, org.hibernate.dialect.Dialect=var1106, $r3=var1523, $r4=var400, org.hibernate.boot.spi.SessionFactoryOptions=var1447, org.hibernate.SessionFactory=var3853, $r5=var3934, $z0=var1526, $r35=var11, $r6=var3990, org.hibernate.persister.entity.OuterJoinLoadable=var3637, $r7=var3822, $r9=var3073, $r8=var1160, $r10=var3171, $r11=var1029, org.hibernate.sql.SelectFragment=var1705, $r12=var1969, $r14=var626, $r13=var675, $r15=var2495, $i1=var3594, $i0=var1212, $r36=var244, r38=var1739, r45=var323, r44=var811, $r17=var16, $r37=var3882, $i2=var2395, i3=var3062, $r18=var1096, r41=var3783, i4=var3762, i5=var3851, $r19=var2858, $r20=var1807, $r21=var713, $r22=var628}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r16 := @parameter0: java.lang.String;	$r0 = new org.hibernate.sql.Select;	$r2 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>();	specialinvoke $r0.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r3);	$r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r5.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto $r35 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r35 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String fromTableFragment(java.lang.String)>($r35);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r8 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r35, 1, 0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r11);	$r12 = new org.hibernate.sql.SelectFragment;	specialinvoke $r12.<org.hibernate.sql.SelectFragment: void <init>()>();	$r14 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierColumnNames()>();	$r13 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierAliases()>();	virtualinvoke $r12.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment addColumns(java.lang.String,java.lang.String[],java.lang.String[])>($r35, $r14, $r13);	virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(org.hibernate.sql.SelectFragment)>($r12);	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$i1 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyIndex(java.lang.String)>(r16);	$i0 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyTableNumber(int)>($i1);	$r36 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String generateTableAlias(java.lang.String,int)>($r35, $i0);	r38 = "";	r45 = "";	r44 = "";	$r17 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[][] getSubclassPropertyColumnReaderTemplateClosure()>();	$r37 = $r17[$i1];	$i2 = lengthof $r37;	i3 = 0;	if i3 >= $i2 goto $r18 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[][] getSubclassPropertyFormulaTemplateClosure()>();	$r18 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[][] getSubclassPropertyFormulaTemplateClosure()>();	r41 = $r18[$i1];	i4 = lengthof r41;	i5 = 0;	if i5 >= i4 goto $r19 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r35, 1, 0);	$r19 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String whereJoinFragment(java.lang.String,boolean,boolean)>($r35, 1, 0);	virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r20);	$r21 = virtualinvoke $r0.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>("", "");	$r22 = virtualinvoke $r21.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	return $r22
;block_num 6