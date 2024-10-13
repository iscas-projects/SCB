(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var69 0)
(declare-sort var2894 0)
(declare-sort var1262 0)
(declare-sort var1432 0)
(declare-sort var1649 0)
(declare-sort var2091 0)
(declare-sort var286 0)
(declare-sort var1850 0)
(declare-sort var274 0)
(declare-sort var2670 0)
(declare-sort var2205 0)
(declare-sort var2488 0)
(declare-sort var1535 0)
(declare-sort var2571 0)
(declare-sort var3002 0)
(declare-sort var1867 0)
(declare-sort var2445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun associations/-1715654603 (var1432) var1262)
(declare-fun cast-from-var69-to-var1432 (var69) var1432)
(declare-fun var1432_countEntityPersisters/59687463 (var1262) Int)
(declare-fun var1432_countCollectionPersisters/2040521228 (var1262) Int)
(declare-fun var1649_generateSuffixes/-780092581 (Int) (Array Int String))
(declare-fun suffixes/-1715654603 (var1432) (Array Int String))
(declare-fun var1649_generateSuffixes/1767754718 (Int Int) (Array Int String))
(declare-fun collectionSuffixes/-1715654603 (var1432) (Array Int String))
(declare-fun collectionPersister/-900363535 (var69) var2091)
(declare-fun var286_getKeyColumnNames/-374017113 (var286) (Array Int String))
(declare-fun cast-from-var2091-to-var286 (var2091) var286)
(declare-fun whereString/-1964064400 (var1850 String (Array Int String) String Int) String)
(declare-fun cast-from-var69-to-var1850 (var69) var1850)
(declare-fun getLoadQueryInfluencers/-1412699050 (var1432) var274)
(declare-fun getEnabledFilters/-185187305 (var274) var2670)
(declare-fun var286_filterFragment/1785996213 (var286 String var2670) String)
(declare-fun var2205_isManyToMany/-2108787302 (var2205) Bool)
(declare-fun cast-from-var2091-to-var2205 (var2091) var2205)
(declare-fun var2488_moveAndToBeginning/940279949 (String) String)
(declare-fun insert/1196171004 (String Int String) String)
(declare-fun mergeOuterJoins/519578486 (var1432 var1262) var1535)
(declare-fun var2571-init () var2571)
(declare-fun getDialect/1142344870 (var1432) var3002)
(declare-fun <init>/-604569825 (var2571 var3002) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2091_selectFragment/232488891 (var2091 String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun selectString/-146280878 (var1432 var1262) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setSelectClause/398150799 (var2571 String) var2571)
(declare-fun var286_getTableName/48490405 (var286) String)
(declare-fun setFromClause/100075162 (var2571 String String) var2571)
(declare-fun setWhereClause/1091603732 (var2571 String) var2571)
(declare-fun toFromFragmentString/701527262 (var1535) String)
(declare-fun toWhereFragmentString/-1276368279 (var1535) String)
(declare-fun setOuterJoins/840368943 (var2571 String String) var2571)
(declare-fun var2091_getSQLOrderByString/1167643194 (var2091 String) String)
(declare-fun var1432_mergeOrderings/-1776360452 (String String) String)
(declare-fun orderBy/306455785 (var1432 var1262 String) String)
(declare-fun setOrderByClause/-713655946 (var2571 String) var2571)
(declare-fun getFactory/1655160242 (var1432) var1867)
(declare-fun var1867_getSettings/1243174053 (var1867) var2445)
(declare-fun isCommentsEnabled/-1137246873 (var2445) Bool)
(declare-fun toStatementString/-1084413137 (var2571) String)
(declare-fun sql/-1715654603 (var1432) String)
(declare-const null-var69 var69)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2020 var69) ; Statement: r0 := @this: org.hibernate.loader.collection.BasicCollectionJoinWalker 
(assert (not (= var2020 null-var69)))
(declare-const var20 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var20 null-String)))
(declare-const var3456 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3456 null-Int)))
(declare-const var2027 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var2027 null-String)))
(define-const var1345 var1262 (associations/-1715654603 (cast-from-var69-to-var1432 var2020))) ; Statement: $r1 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(define-const var206 Int (var1432_countEntityPersisters/59687463 var1345)) ; Statement: i0 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countEntityPersisters(java.util.List)>($r1) 
(define-const var3292 var1262 (associations/-1715654603 (cast-from-var69-to-var1432 var2020))) ; Statement: $r2 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(define-const var2459 Int (var1432_countCollectionPersisters/2040521228 var3292)) ; Statement: $i1 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countCollectionPersisters(java.util.List)>($r2) 
(define-const var556 Int (+ var2459 1)) ; Statement: i2 = $i1 + 1 
(define-const var231 (Array Int String) (var1649_generateSuffixes/-780092581 var206)) ; Statement: $r3 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>(i0) 
(declare-const var2020!1 var69)
(assert (not (= var2020!1 null-var69)))
(assert (= (suffixes/-1715654603 (cast-from-var69-to-var1432 var2020!1)) var231)) ; Statement: r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] suffixes> = $r3 
(define-const var977 (Array Int String) (var1649_generateSuffixes/1767754718 var206 var556)) ; Statement: $r4 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int,int)>(i0, i2) 
(declare-const var2020!2 var69)
(assert (not (= var2020!2 null-var69)))
(assert (= (collectionSuffixes/-1715654603 (cast-from-var69-to-var1432 var2020!2)) var977)) ; Statement: r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes> = $r4 
(define-const var3887 var2091 (collectionPersister/-900363535 var2020!2)) ; Statement: $r6 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var848 (Array Int String) (var286_getKeyColumnNames/-374017113 (cast-from-var2091-to-var286 var3887))) ; Statement: $r8 = interfaceinvoke $r6.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>() 
(assert true)
(define-const var2505 String (whereString/-1964064400 (cast-from-var69-to-var1850 var2020!2) var20 var848 var2027 var3456)) ; Statement: r9 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],java.lang.String,int)>(r5, $r8, r7, i3) 
(define-const var1577 String null-String) ; Statement: r68 = null 
(assert true)
(define-const var1886 var274 (getLoadQueryInfluencers/-1412699050 (cast-from-var69-to-var1432 var2020!2))) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>() 
(assert true)
(define-const var755 var2670 (getEnabledFilters/-185187305 var1886)) ; Statement: r11 = virtualinvoke $r10.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.Map getEnabledFilters()>() 
(define-const var3490 var2091 (collectionPersister/-900363535 var2020!2)) ; Statement: $r12 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var1831 String (var286_filterFragment/1785996213 (cast-from-var2091-to-var286 var3490) var20 var755)) ; Statement: r69 = interfaceinvoke $r12.<org.hibernate.persister.collection.QueryableCollection: java.lang.String filterFragment(java.lang.String,java.util.Map)>(r5, r11) 
(define-const var2748 var2091 (collectionPersister/-900363535 var2020!2)) ; Statement: $r13 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var489 Bool (var2205_isManyToMany/-2108787302 (cast-from-var2091-to-var2205 var2748))) ; Statement: $z0 = interfaceinvoke $r13.<org.hibernate.persister.collection.QueryableCollection: boolean isManyToMany()>() 
 ; Statement: if $z0 == 0 goto $r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69) 
(assert (= (ite var489 1 0) 0)) ; Cond: $z0 == 0 
(define-const var695 String (var2488_moveAndToBeginning/940279949 var1831)) ; Statement: $r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69) 
(assert true)
;(assert (insert/1196171004 var2505 0 var695)) ; Statement: virtualinvoke r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, $r14) 

(declare-const var2505!1 String)
(declare-const var2532 Int)
(declare-const var695!1 String)
(define-const var112 var1262 (associations/-1715654603 (cast-from-var69-to-var1432 var2020!2))) ; Statement: $r15 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(assert true)
(define-const var77 var1535 (mergeOuterJoins/519578486 (cast-from-var69-to-var1432 var2020!2) var112)) ; Statement: $r54 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r15) 
(define-const var3827 var2571 var2571-init) ; Statement: $r16 = new org.hibernate.sql.Select 
(assert true)
(define-const var2361 var3002 (getDialect/1142344870 (cast-from-var69-to-var1432 var2020!2))) ; Statement: $r17 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
;(assert (<init>/-604569825 var3827 var2361)) ; Statement: specialinvoke $r16.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r17) 

(declare-const var3827!1 var2571)
(declare-const var2361!1 var3002)
(define-const var3263 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3263)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3263!1 String)
(assert (= var3263!1 ""))
(define-const var3855 var2091 (collectionPersister/-900363535 var2020!2)) ; Statement: $r21 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var2272 (Array Int String) (collectionSuffixes/-1715654603 (cast-from-var69-to-var1432 var2020!2))) ; Statement: $r19 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes> 
(define-const var3646 String (select var2272 0)) ; Statement: $r20 = $r19[0] 
(define-const var2684 String (var2091_selectFragment/232488891 var3855 var20 var3646)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.persister.collection.QueryableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r5, $r20) 
(assert true)
(define-const var3988 String (append/672562846 var3263!1 var2684)) ; Statement: $r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3263!2 String)
(assert (= var3263!2 (str.++ var3263!1 var2684)))
(define-const var3759 var1262 (associations/-1715654603 (cast-from-var69-to-var1432 var2020!2))) ; Statement: $r23 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(assert true)
(define-const var199 String (selectString/-146280878 (cast-from-var69-to-var1432 var2020!2) var3759)) ; Statement: $r24 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String selectString(java.util.List)>($r23) 
(assert true)
(define-const var1319 String (append/672562846 var3988 var199)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var3988!1 String)
(assert (= var3988!1 (str.++ var3988 var199)))
(assert true)
(define-const var3096 String (toString/-2075883882 var1319)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var38 var2571 (setSelectClause/398150799 var3827!1 var3096)) ; Statement: $r30 = virtualinvoke $r16.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r27) 
(define-const var2405 var2091 (collectionPersister/-900363535 var2020!2)) ; Statement: $r28 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var3573 String (var286_getTableName/48490405 (cast-from-var2091-to-var286 var2405))) ; Statement: $r29 = interfaceinvoke $r28.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>() 
(assert true)
(define-const var464 var2571 (setFromClause/100075162 var38 var3573 var20)) ; Statement: $r32 = virtualinvoke $r30.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String,java.lang.String)>($r29, r5) 
(assert true)
(define-const var1232 String (toString/-2075883882 var2505!1)) ; Statement: $r31 = virtualinvoke r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2506 var2571 (setWhereClause/1091603732 var464 var1232)) ; Statement: $r35 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r31) 
(assert true)
(define-const var1120 String (toFromFragmentString/701527262 var77)) ; Statement: $r34 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(assert true)
(define-const var3493 String (toWhereFragmentString/-1276368279 var77)) ; Statement: $r33 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var2580 var2571 (setOuterJoins/840368943 var2506 var1120 var3493)) ; Statement: $r55 = virtualinvoke $r35.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r34, $r33) 
(define-const var553 var1262 (associations/-1715654603 (cast-from-var69-to-var1432 var2020!2))) ; Statement: $r37 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(define-const var1503 var2091 (collectionPersister/-900363535 var2020!2)) ; Statement: $r36 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var3047 String (var2091_getSQLOrderByString/1167643194 var1503 var20)) ; Statement: $r38 = interfaceinvoke $r36.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getSQLOrderByString(java.lang.String)>(r5) 
 ; Statement: if r68 != null goto $r72 = virtualinvoke r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var1577 null-String))) ; Cond: r68 != null 
(assert true)
(define-const var803 String (toString/-2075883882 var1577)) ; Statement: $r72 = virtualinvoke r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var709 String (var1432_mergeOrderings/-1776360452 var3047 var803)) ; Statement: $r39 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String mergeOrderings(java.lang.String,java.lang.String)>($r38, $r72) 
(assert true)
(define-const var2836 String (orderBy/306455785 (cast-from-var69-to-var1432 var2020!2) var553 var709)) ; Statement: $r40 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r37, $r39) 
(assert true)
;(assert (setOrderByClause/-713655946 var2580 var2836)) ; Statement: virtualinvoke $r55.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r40) 

(declare-const var2580!1 var2571)
(declare-const var2836!1 String)
(assert true)
(define-const var2279 var1867 (getFactory/1655160242 (cast-from-var69-to-var1432 var2020!2))) ; Statement: $r41 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3180 var2445 (var1867_getSettings/1243174053 var2279)) ; Statement: $r42 = interfaceinvoke $r41.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.cfg.Settings getSettings()>() 
(assert true)
(define-const var505 Bool (isCommentsEnabled/-1137246873 var3180)) ; Statement: $z1 = virtualinvoke $r42.<org.hibernate.cfg.Settings: boolean isCommentsEnabled()>() 
 ; Statement: if $z1 == 0 goto $r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(assert (= (ite var505 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1984 String (toStatementString/-1084413137 var2580!1)) ; Statement: $r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(declare-const var2020!3 var69)
(assert (not (= var2020!3 null-var69)))
(assert (= (sql/-1715654603 (cast-from-var69-to-var1432 var2020!3)) var1984)) ; Statement: r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String sql> = $r43 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {associations/-1715654603=([org.hibernate.loader.JoinWalker], java.util.List), cast-from-var69-to-var1432=([org.hibernate.loader.collection.BasicCollectionJoinWalker], org.hibernate.loader.JoinWalker), var1432_countEntityPersisters/59687463=([java.util.List], int), var1432_countCollectionPersisters/2040521228=([java.util.List], int), var1649_generateSuffixes/-780092581=([int], java.lang.String[]), suffixes/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String[]), var1649_generateSuffixes/1767754718=([int, int], java.lang.String[]), collectionSuffixes/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String[]), collectionPersister/-900363535=([org.hibernate.loader.collection.BasicCollectionJoinWalker], org.hibernate.persister.collection.QueryableCollection), var286_getKeyColumnNames/-374017113=([org.hibernate.persister.entity.Joinable], java.lang.String[]), cast-from-var2091-to-var286=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.entity.Joinable), whereString/-1964064400=([org.hibernate.loader.collection.CollectionJoinWalker, java.lang.String, java.lang.String[], java.lang.String, int], java.lang.StringBuilder), cast-from-var69-to-var1850=([org.hibernate.loader.collection.BasicCollectionJoinWalker], org.hibernate.loader.collection.CollectionJoinWalker), getLoadQueryInfluencers/-1412699050=([org.hibernate.loader.JoinWalker], org.hibernate.engine.spi.LoadQueryInfluencers), getEnabledFilters/-185187305=([org.hibernate.engine.spi.LoadQueryInfluencers], java.util.Map), var286_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), var2205_isManyToMany/-2108787302=([org.hibernate.persister.collection.CollectionPersister], boolean), cast-from-var2091-to-var2205=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), var2488_moveAndToBeginning/940279949=([java.lang.String], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), mergeOuterJoins/519578486=([org.hibernate.loader.JoinWalker, java.util.List], org.hibernate.sql.JoinFragment), var2571-init=([], org.hibernate.sql.Select), getDialect/1142344870=([org.hibernate.loader.JoinWalker], org.hibernate.dialect.Dialect), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2091_selectFragment/232488891=([org.hibernate.persister.collection.QueryableCollection, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), selectString/-146280878=([org.hibernate.loader.JoinWalker, java.util.List], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), var286_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), setFromClause/100075162=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), setOuterJoins/840368943=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), var2091_getSQLOrderByString/1167643194=([org.hibernate.persister.collection.QueryableCollection, java.lang.String], java.lang.String), var1432_mergeOrderings/-1776360452=([java.lang.String, java.lang.String], java.lang.String), orderBy/306455785=([org.hibernate.loader.JoinWalker, java.util.List, java.lang.String], java.lang.String), setOrderByClause/-713655946=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), getFactory/1655160242=([org.hibernate.loader.JoinWalker], org.hibernate.engine.spi.SessionFactoryImplementor), var1867_getSettings/1243174053=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.cfg.Settings), isCommentsEnabled/-1137246873=([org.hibernate.cfg.Settings], boolean), toStatementString/-1084413137=([org.hibernate.sql.Select], java.lang.String), sql/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String)}
; {var69=org.hibernate.loader.collection.BasicCollectionJoinWalker, var2020=r0, var20=r5, var2894=null_type, var3456=i3, var2027=r7, var1262=java.util.List, var1432=org.hibernate.loader.JoinWalker, var1345=$r1, var206=i0, var3292=$r2, var2459=$i1, var556=i2, var1649=org.hibernate.loader.BasicLoader, var231=$r3, var977=$r4, var2091=org.hibernate.persister.collection.QueryableCollection, var3887=$r6, var286=org.hibernate.persister.entity.Joinable, var848=$r8, var1850=org.hibernate.loader.collection.CollectionJoinWalker, var2505=r9, var1577=r68, var274=org.hibernate.engine.spi.LoadQueryInfluencers, var1886=$r10, var2670=java.util.Map, var755=r11, var3490=$r12, var1831=r69, var2748=$r13, var2205=org.hibernate.persister.collection.CollectionPersister, var489=$z0, var2488=org.hibernate.internal.util.StringHelper, var695=$r14, var2532=0, var112=$r15, var1535=org.hibernate.sql.JoinFragment, var77=$r54, var2571=org.hibernate.sql.Select, var3827=$r16, var3002=org.hibernate.dialect.Dialect, var2361=$r17, var3263=$r18, var3855=$r21, var2272=$r19, var3646=$r20, var2684=$r22, var3988=$r25, var3759=$r23, var199=$r24, var1319=$r26, var3096=$r27, var38=$r30, var2405=$r28, var3573=$r29, var464=$r32, var1232=$r31, var2506=$r35, var1120=$r34, var3493=$r33, var2580=$r55, var553=$r37, var1503=$r36, var3047=$r38, var803=$r72, var709=$r39, var2836=$r40, var1867=org.hibernate.engine.spi.SessionFactoryImplementor, var2279=$r41, var2445=org.hibernate.cfg.Settings, var3180=$r42, var505=$z1, var1984=$r43}
; {org.hibernate.loader.collection.BasicCollectionJoinWalker=var69, r0=var2020, r5=var20, null_type=var2894, i3=var3456, r7=var2027, java.util.List=var1262, org.hibernate.loader.JoinWalker=var1432, $r1=var1345, i0=var206, $r2=var3292, $i1=var2459, i2=var556, org.hibernate.loader.BasicLoader=var1649, $r3=var231, $r4=var977, org.hibernate.persister.collection.QueryableCollection=var2091, $r6=var3887, org.hibernate.persister.entity.Joinable=var286, $r8=var848, org.hibernate.loader.collection.CollectionJoinWalker=var1850, r9=var2505, r68=var1577, org.hibernate.engine.spi.LoadQueryInfluencers=var274, $r10=var1886, java.util.Map=var2670, r11=var755, $r12=var3490, r69=var1831, $r13=var2748, org.hibernate.persister.collection.CollectionPersister=var2205, $z0=var489, org.hibernate.internal.util.StringHelper=var2488, $r14=var695, 0=var2532, $r15=var112, org.hibernate.sql.JoinFragment=var1535, $r54=var77, org.hibernate.sql.Select=var2571, $r16=var3827, org.hibernate.dialect.Dialect=var3002, $r17=var2361, $r18=var3263, $r21=var3855, $r19=var2272, $r20=var3646, $r22=var2684, $r25=var3988, $r23=var3759, $r24=var199, $r26=var1319, $r27=var3096, $r30=var38, $r28=var2405, $r29=var3573, $r32=var464, $r31=var1232, $r35=var2506, $r34=var1120, $r33=var3493, $r55=var2580, $r37=var553, $r36=var1503, $r38=var3047, $r72=var803, $r39=var709, $r40=var2836, org.hibernate.engine.spi.SessionFactoryImplementor=var1867, $r41=var2279, org.hibernate.cfg.Settings=var2445, $r42=var3180, $z1=var505, $r43=var1984}
;seq <java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.hibernate.loader.collection.BasicCollectionJoinWalker;	r5 := @parameter0: java.lang.String;	i3 := @parameter1: int;	r7 := @parameter2: java.lang.String;	$r1 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	i0 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countEntityPersisters(java.util.List)>($r1);	$r2 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$i1 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countCollectionPersisters(java.util.List)>($r2);	i2 = $i1 + 1;	$r3 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>(i0);	r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] suffixes> = $r3;	$r4 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int,int)>(i0, i2);	r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes> = $r4;	$r6 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r8 = interfaceinvoke $r6.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>();	r9 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],java.lang.String,int)>(r5, $r8, r7, i3);	r68 = null;	$r10 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>();	r11 = virtualinvoke $r10.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.Map getEnabledFilters()>();	$r12 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	r69 = interfaceinvoke $r12.<org.hibernate.persister.collection.QueryableCollection: java.lang.String filterFragment(java.lang.String,java.util.Map)>(r5, r11);	$r13 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$z0 = interfaceinvoke $r13.<org.hibernate.persister.collection.QueryableCollection: boolean isManyToMany()>();	if $z0 == 0 goto $r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69);	$r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69);	virtualinvoke r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, $r14);	$r15 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$r54 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r15);	$r16 = new org.hibernate.sql.Select;	$r17 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.dialect.Dialect getDialect()>();	specialinvoke $r16.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r17);	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r19 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes>;	$r20 = $r19[0];	$r22 = interfaceinvoke $r21.<org.hibernate.persister.collection.QueryableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r5, $r20);	$r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r23 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$r24 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String selectString(java.util.List)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r30 = virtualinvoke $r16.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r27);	$r28 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r29 = interfaceinvoke $r28.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>();	$r32 = virtualinvoke $r30.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String,java.lang.String)>($r29, r5);	$r31 = virtualinvoke r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r31);	$r34 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r33 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r55 = virtualinvoke $r35.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r34, $r33);	$r37 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$r36 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r38 = interfaceinvoke $r36.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getSQLOrderByString(java.lang.String)>(r5);	if r68 != null goto $r72 = virtualinvoke r68.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = virtualinvoke r68.<java.lang.StringBuilder: java.lang.String toString()>();	$r39 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String mergeOrderings(java.lang.String,java.lang.String)>($r38, $r72);	$r40 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r37, $r39);	virtualinvoke $r55.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r40);	$r41 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r42 = interfaceinvoke $r41.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.cfg.Settings getSettings()>();	$z1 = virtualinvoke $r42.<org.hibernate.cfg.Settings: boolean isCommentsEnabled()>();	if $z1 == 0 goto $r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	$r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String sql> = $r43;	return
;block_num 5