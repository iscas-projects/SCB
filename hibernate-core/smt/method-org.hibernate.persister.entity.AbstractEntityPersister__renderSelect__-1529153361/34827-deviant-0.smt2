(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2118 0)
(declare-sort var3890 0)
(declare-sort var1881 0)
(declare-sort var2455 0)
(declare-sort var3127 0)
(declare-sort var2532 0)
(declare-sort var1529 0)
(declare-sort var3545 0)
(declare-sort var2940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3890_sort/837327020 ((Array Int Int)) void)
(declare-fun getRootAlias/-884767280 (var2118) String)
(declare-fun var2118_generateTableAlias/-1730583879 (String Int) String)
(declare-fun createWhereByKey/-1803547379 (var2118 Int String) String)
(declare-fun createFrom/1993761892 (var2118 Int String) String)
(declare-fun createJoin/-1031388259 (var2118 (Array Int Int) String) var1881)
(declare-fun createSelect/1906865123 (var2118 (Array Int Int) (Array Int Int)) var2455)
(declare-fun var3127-init () var3127)
(declare-fun getFactory/36801881 (var2118) var2532)
(declare-fun var2532_getDialect/549556505 (var2532) var1529)
(declare-fun <init>/-604569825 (var3127 var1529) void)
(declare-fun toFragmentString/-232922822 (var2455) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun setSelectClause/398150799 (var3127 String) var3127)
(declare-fun setFromClause/1818208161 (var3127 String) var3127)
(declare-fun setWhereClause/1091603732 (var3127 String) var3127)
(declare-fun toFromFragmentString/701527262 (var1881) String)
(declare-fun toWhereFragmentString/-1276368279 (var1881) String)
(declare-fun setOuterJoins/840368943 (var3127 String String) var3127)
(declare-fun var2940_getSessionFactoryOptions/-1909602825 (var2940) var3545)
(declare-fun cast-from-var2532-to-var2940 (var2532) var2940)
(declare-fun var3545_isCommentsEnabled/348952998 (var3545) Bool)
(declare-fun toStatementString/-1084413137 (var3127) String)
(declare-const null-var2118 var2118)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1110 var2118) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var1110 null-var2118)))
(declare-const var1356 (Array Int Int)) ; Statement: r0 := @parameter0: int[] 
(assert (not (= var1356 null-__Array__Int__Int__)))
(declare-const var1846 (Array Int Int)) ; Statement: r7 := @parameter1: int[] 
(assert (not (= var1846 null-__Array__Int__Int__)))
(declare-const var1790 (Array Int Int)) ; Statement: r8 := @parameter2: int[] 
(assert (not (= var1790 null-__Array__Int__Int__)))
;(assert (var3890_sort/837327020 var1356)) ; Statement: staticinvoke <java.util.Arrays: void sort(int[])>(r0) 

(declare-const var1356!1 (Array Int Int))
(define-const var2522 Int (select var1356!1 0)) ; Statement: i0 = r0[0] 
(assert true)
(define-const var2775 String (getRootAlias/-884767280 var1110)) ; Statement: $r2 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>() 
(define-const var2483 String (var2118_generateTableAlias/-1730583879 var2775 var2522)) ; Statement: r3 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String generateTableAlias(java.lang.String,int)>($r2, i0) 
(assert true)
(define-const var411 String (createWhereByKey/-1803547379 var1110 var2522 var2483)) ; Statement: r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String createWhereByKey(int,java.lang.String)>(i0, r3) 
(assert true)
(define-const var2781 String (createFrom/1993761892 var1110 var2522 var2483)) ; Statement: r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String createFrom(int,java.lang.String)>(i0, r3) 
(assert true)
(define-const var3637 var1881 (createJoin/-1031388259 var1110 var1356!1 var2483)) ; Statement: r6 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.sql.JoinFragment createJoin(int[],java.lang.String)>(r0, r3) 
(assert true)
(define-const var947 var2455 (createSelect/1906865123 var1110 var1846 var1790)) ; Statement: r9 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.sql.SelectFragment createSelect(int[],int[])>(r7, r8) 
(define-const var2376 var3127 var3127-init) ; Statement: $r10 = new org.hibernate.sql.Select 
(assert true)
(define-const var1825 var2532 (getFactory/36801881 var1110)) ; Statement: $r11 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2997 var1529 (var2532_getDialect/549556505 var1825)) ; Statement: $r12 = interfaceinvoke $r11.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
;(assert (<init>/-604569825 var2376 var2997)) ; Statement: specialinvoke $r10.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r12) 

(declare-const var2376!1 var3127)
(declare-const var2997!1 var1529)
(assert true)
(define-const var3015 String (toFragmentString/-232922822 var947)) ; Statement: $r13 = virtualinvoke r9.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>() 
(assert (not (and true (and (>= 2 0) (>= (str.len var3015) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3890_sort/837327020=([int[]], void), getRootAlias/-884767280=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), var2118_generateTableAlias/-1730583879=([java.lang.String, int], java.lang.String), createWhereByKey/-1803547379=([org.hibernate.persister.entity.AbstractEntityPersister, int, java.lang.String], java.lang.String), createFrom/1993761892=([org.hibernate.persister.entity.AbstractEntityPersister, int, java.lang.String], java.lang.String), createJoin/-1031388259=([org.hibernate.persister.entity.AbstractEntityPersister, int[], java.lang.String], org.hibernate.sql.JoinFragment), createSelect/1906865123=([org.hibernate.persister.entity.AbstractEntityPersister, int[], int[]], org.hibernate.sql.SelectFragment), var3127-init=([], org.hibernate.sql.Select), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var2532_getDialect/549556505=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.Dialect), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), toFragmentString/-232922822=([org.hibernate.sql.SelectFragment], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setFromClause/1818208161=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), setOuterJoins/840368943=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), var2940_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var2532-to-var2940=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var3545_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), toStatementString/-1084413137=([org.hibernate.sql.Select], java.lang.String)}
; {var2118=org.hibernate.persister.entity.AbstractEntityPersister, var1110=r1, var1356=r0, var1846=r7, var1790=r8, var3890=java.util.Arrays, var2522=i0, var2775=$r2, var2483=r3, var411=r4, var2781=r5, var1881=org.hibernate.sql.JoinFragment, var3637=r6, var2455=org.hibernate.sql.SelectFragment, var947=r9, var3127=org.hibernate.sql.Select, var2376=$r10, var2532=org.hibernate.engine.spi.SessionFactoryImplementor, var1825=$r11, var1529=org.hibernate.dialect.Dialect, var2997=$r12, var3015=$r13, var1014=$r14, var3816=$r16, var2574=$r15, var3792=$r17, var3545=org.hibernate.boot.spi.SessionFactoryOptions, var2940=org.hibernate.SessionFactory, var1230=$r18, var2506=$z0, var3909=$r19}
; {org.hibernate.persister.entity.AbstractEntityPersister=var2118, r1=var1110, r0=var1356, r7=var1846, r8=var1790, java.util.Arrays=var3890, i0=var2522, $r2=var2775, r3=var2483, r4=var411, r5=var2781, org.hibernate.sql.JoinFragment=var1881, r6=var3637, org.hibernate.sql.SelectFragment=var2455, r9=var947, org.hibernate.sql.Select=var3127, $r10=var2376, org.hibernate.engine.spi.SessionFactoryImplementor=var2532, $r11=var1825, org.hibernate.dialect.Dialect=var1529, $r12=var2997, $r13=var3015, $r14=var1014, $r16=var3816, $r15=var2574, $r17=var3792, org.hibernate.boot.spi.SessionFactoryOptions=var3545, org.hibernate.SessionFactory=var2940, $r18=var1230, $z0=var2506, $r19=var3909}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r0 := @parameter0: int[];	r7 := @parameter1: int[];	r8 := @parameter2: int[];	staticinvoke <java.util.Arrays: void sort(int[])>(r0);	i0 = r0[0];	$r2 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getRootAlias()>();	r3 = staticinvoke <org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String generateTableAlias(java.lang.String,int)>($r2, i0);	r4 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String createWhereByKey(int,java.lang.String)>(i0, r3);	r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String createFrom(int,java.lang.String)>(i0, r3);	r6 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.sql.JoinFragment createJoin(int[],java.lang.String)>(r0, r3);	r9 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.sql.SelectFragment createSelect(int[],int[])>(r7, r8);	$r10 = new org.hibernate.sql.Select;	$r11 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r12 = interfaceinvoke $r11.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>();	specialinvoke $r10.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r12);	$r13 = virtualinvoke r9.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>();	$r14 = virtualinvoke $r13.<java.lang.String: java.lang.String substring(int)>(2);	virtualinvoke $r10.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r14);	virtualinvoke $r10.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>(r5);	virtualinvoke $r10.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>(r4);	$r16 = virtualinvoke r6.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r15 = virtualinvoke r6.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	virtualinvoke $r10.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r16, $r15);	$r17 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r18 = interfaceinvoke $r17.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r18.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto $r19 = virtualinvoke $r10.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	$r19 = virtualinvoke $r10.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	return $r19
;block_num 2