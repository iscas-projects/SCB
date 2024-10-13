(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var438 0)
(declare-sort var1341 0)
(declare-sort var2773 0)
(declare-sort var944 0)
(declare-sort var1221 0)
(declare-sort var1283 0)
(declare-sort var3904 0)
(declare-sort var3231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1341_getUid/-1971155046 (var1341) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var944 var1221) void)
(declare-fun cast-from-String-to-var1221 (String) var1221)
(declare-fun factory/-2064555449 (var438) var1283)
(declare-fun var1283_getDialect/549556505 (var1283) var3904)
(declare-fun createOuterJoinFragment/-1258830270 (var3904) var3231)
(declare-fun processQuerySpaceJoins/825648936 (var438 var1341 var3231) void)
(declare-fun toFromFragmentString/701527262 (var3231) String)
(declare-fun toWhereFragmentString/-1276368279 (var3231) String)
(declare-fun setOuterJoins/-276049179 (var2773 String String) void)
(declare-const null-var438 var438)
(declare-const null-var1341 var1341)
(declare-const null-var2773 var2773)
(declare-const var438-LOG var944)
(declare-const var471 var438) ; Statement: r7 := @this: org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor 
(assert (not (= var471 null-var438)))
(declare-const var3500 var1341) ; Statement: r2 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace 
(assert (not (= var3500 null-var1341)))
(declare-const var413 var2773) ; Statement: r11 := @parameter1: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var413 null-var2773)))
(define-const var1431 var944 var438-LOG) ; Statement: $r1 = <org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: org.jboss.logging.Logger LOG> 
(define-const var3731 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3731)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3731!1 String)
(assert (= var3731!1 ""))
(assert true)
(define-const var1512 String (append/672562846 var3731!1 "processing queryspace ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("processing queryspace ") 
(declare-const var3731!2 String)
(assert (= var3731!2 (str.++ var3731!1 "processing queryspace ")))
(define-const var272 String (var1341_getUid/-1971155046 var3500)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>() 
(assert true)
(define-const var506 String (append/672562846 var1512 var272)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1512!1 String)
(assert (= var1512!1 (str.++ var1512 var272)))
(assert true)
(define-const var545 String (toString/-2075883882 var506)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var1431 (cast-from-String-to-var1221 var545))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r6) 

(declare-const var1431!1 var944)
(declare-const var545!1 String)
(define-const var3850 var1283 (factory/-2064555449 var471)) ; Statement: $r8 = r7.<org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var298 var3904 (var1283_getDialect/549556505 var3850)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var1149 var3231 (createOuterJoinFragment/-1258830270 var298)) ; Statement: r10 = virtualinvoke $r9.<org.hibernate.dialect.Dialect: org.hibernate.sql.JoinFragment createOuterJoinFragment()>() 
(assert true)
;(assert (processQuerySpaceJoins/825648936 var471 var3500 var1149)) ; Statement: specialinvoke r7.<org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: void processQuerySpaceJoins(org.hibernate.loader.plan.spi.QuerySpace,org.hibernate.sql.JoinFragment)>(r2, r10) 

(declare-const var471!1 var438)
(declare-const var3500!1 var1341)
(declare-const var1149!1 var3231)
(assert true)
(define-const var2231 String (toFromFragmentString/701527262 var1149!1)) ; Statement: $r13 = virtualinvoke r10.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(assert true)
(define-const var165 String (toWhereFragmentString/-1276368279 var1149!1)) ; Statement: $r12 = virtualinvoke r10.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
;(assert (setOuterJoins/-276049179 var413 var2231 var165)) ; Statement: virtualinvoke r11.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void setOuterJoins(java.lang.String,java.lang.String)>($r13, $r12) 

(declare-const var413!1 var2773)
(declare-const var2231!1 String)
(declare-const var165!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1341_getUid/-1971155046=([org.hibernate.loader.plan.spi.QuerySpace], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1221=([java.lang.String], java.lang.Object), factory/-2064555449=([org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor], org.hibernate.engine.spi.SessionFactoryImplementor), var1283_getDialect/549556505=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.dialect.Dialect), createOuterJoinFragment/-1258830270=([org.hibernate.dialect.Dialect], org.hibernate.sql.JoinFragment), processQuerySpaceJoins/825648936=([org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor, org.hibernate.loader.plan.spi.QuerySpace, org.hibernate.sql.JoinFragment], void), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), setOuterJoins/-276049179=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, java.lang.String, java.lang.String], void)}
; {var438=org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor, var471=r7, var1341=org.hibernate.loader.plan.spi.QuerySpace, var3500=r2, var2773=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var413=r11, var944=org.jboss.logging.Logger, var1431=$r1, var3731=$r0, var1512=$r4, var272=$r3, var506=$r5, var545=$r6, var1221=java.lang.Object, var1283=org.hibernate.engine.spi.SessionFactoryImplementor, var3850=$r8, var3904=org.hibernate.dialect.Dialect, var298=$r9, var3231=org.hibernate.sql.JoinFragment, var1149=r10, var2231=$r13, var165=$r12}
; {org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor=var438, r7=var471, org.hibernate.loader.plan.spi.QuerySpace=var1341, r2=var3500, org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var2773, r11=var413, org.jboss.logging.Logger=var944, $r1=var1431, $r0=var3731, $r4=var1512, $r3=var272, $r5=var506, $r6=var545, java.lang.Object=var1221, org.hibernate.engine.spi.SessionFactoryImplementor=var1283, $r8=var3850, org.hibernate.dialect.Dialect=var3904, $r9=var298, org.hibernate.sql.JoinFragment=var3231, r10=var1149, $r13=var2231, $r12=var165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor;	r2 := @parameter0: org.hibernate.loader.plan.spi.QuerySpace;	r11 := @parameter1: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	$r1 = <org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: org.jboss.logging.Logger LOG>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("processing queryspace ");	$r3 = interfaceinvoke r2.<org.hibernate.loader.plan.spi.QuerySpace: java.lang.String getUid()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r6);	$r8 = r7.<org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r9 = interfaceinvoke $r8.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.dialect.Dialect getDialect()>();	r10 = virtualinvoke $r9.<org.hibernate.dialect.Dialect: org.hibernate.sql.JoinFragment createOuterJoinFragment()>();	specialinvoke r7.<org.hibernate.loader.plan.exec.internal.LoadQueryJoinAndFetchProcessor: void processQuerySpaceJoins(org.hibernate.loader.plan.spi.QuerySpace,org.hibernate.sql.JoinFragment)>(r2, r10);	$r13 = virtualinvoke r10.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r12 = virtualinvoke r10.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	virtualinvoke r11.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void setOuterJoins(java.lang.String,java.lang.String)>($r13, $r12);	return
;block_num 1