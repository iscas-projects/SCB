(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2212 0)
(declare-sort var3489 0)
(declare-sort var7 0)
(declare-sort var2630 0)
(declare-sort var2584 0)
(declare-sort var1093 0)
(declare-sort var1722 0)
(declare-sort var402 0)
(declare-sort var3961 0)
(declare-sort var2473 0)
(declare-sort var2923 0)
(declare-sort var1918 0)
(declare-sort var2188 0)
(declare-sort var3941 0)
(declare-sort var2133 0)
(declare-sort var736 0)
(declare-sort var3304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun associations/-1715654603 (var2630) var7)
(declare-fun cast-from-var2212-to-var2630 (var2212) var2630)
(declare-fun var2630_countEntityPersisters/59687463 (var7) Int)
(declare-fun var2630_countCollectionPersisters/2040521228 (var7) Int)
(declare-fun var2584_generateSuffixes/-780092581 (Int) (Array Int String))
(declare-fun suffixes/-1715654603 (var2630) (Array Int String))
(declare-fun var2584_generateSuffixes/1767754718 (Int Int) (Array Int String))
(declare-fun collectionSuffixes/-1715654603 (var2630) (Array Int String))
(declare-fun collectionPersister/-900363535 (var2212) var1093)
(declare-fun var1722_getKeyColumnNames/-374017113 (var1722) (Array Int String))
(declare-fun cast-from-var1093-to-var1722 (var1093) var1722)
(declare-fun whereString/-1964064400 (var402 String (Array Int String) String Int) String)
(declare-fun cast-from-var2212-to-var402 (var2212) var402)
(declare-fun getLoadQueryInfluencers/-1412699050 (var2630) var3961)
(declare-fun getEnabledFilters/-185187305 (var3961) var2473)
(declare-fun var1722_filterFragment/1785996213 (var1722 String var2473) String)
(declare-fun var2923_isManyToMany/-2108787302 (var2923) Bool)
(declare-fun cast-from-var1093-to-var2923 (var1093) var2923)
(declare-fun var1918_moveAndToBeginning/940279949 (String) String)
(declare-fun insert/1196171004 (String Int String) String)
(declare-fun mergeOuterJoins/519578486 (var2630 var7) var2188)
(declare-fun var3941-init () var3941)
(declare-fun getDialect/1142344870 (var2630) var2133)
(declare-fun <init>/-604569825 (var3941 var2133) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1093_selectFragment/232488891 (var1093 String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun selectString/-146280878 (var2630 var7) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setSelectClause/398150799 (var3941 String) var3941)
(declare-fun var1722_getTableName/48490405 (var1722) String)
(declare-fun setFromClause/100075162 (var3941 String String) var3941)
(declare-fun setWhereClause/1091603732 (var3941 String) var3941)
(declare-fun toFromFragmentString/701527262 (var2188) String)
(declare-fun toWhereFragmentString/-1276368279 (var2188) String)
(declare-fun setOuterJoins/840368943 (var3941 String String) var3941)
(declare-fun var1093_getSQLOrderByString/1167643194 (var1093 String) String)
(declare-fun var2630_mergeOrderings/-1776360452 (String String) String)
(declare-fun orderBy/306455785 (var2630 var7 String) String)
(declare-fun setOrderByClause/-713655946 (var3941 String) var3941)
(declare-fun getFactory/1655160242 (var2630) var736)
(declare-fun var736_getSettings/1243174053 (var736) var3304)
(declare-fun isCommentsEnabled/-1137246873 (var3304) Bool)
(declare-fun toStatementString/-1084413137 (var3941) String)
(declare-fun sql/-1715654603 (var2630) String)
(declare-const null-var2212 var2212)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var549 var2212) ; Statement: r0 := @this: org.hibernate.loader.collection.BasicCollectionJoinWalker 
(assert (not (= var549 null-var2212)))
(declare-const var609 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var609 null-String)))
(declare-const var2365 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2365 null-Int)))
(declare-const var3225 String) ; Statement: r7 := @parameter2: java.lang.String 
(assert (not (= var3225 null-String)))
(define-const var937 var7 (associations/-1715654603 (cast-from-var2212-to-var2630 var549))) ; Statement: $r1 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(define-const var3282 Int (var2630_countEntityPersisters/59687463 var937)) ; Statement: i0 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countEntityPersisters(java.util.List)>($r1) 
(define-const var312 var7 (associations/-1715654603 (cast-from-var2212-to-var2630 var549))) ; Statement: $r2 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(define-const var3430 Int (var2630_countCollectionPersisters/2040521228 var312)) ; Statement: $i1 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countCollectionPersisters(java.util.List)>($r2) 
(define-const var1390 Int (+ var3430 1)) ; Statement: i2 = $i1 + 1 
(define-const var968 (Array Int String) (var2584_generateSuffixes/-780092581 var3282)) ; Statement: $r3 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>(i0) 
(declare-const var549!1 var2212)
(assert (not (= var549!1 null-var2212)))
(assert (= (suffixes/-1715654603 (cast-from-var2212-to-var2630 var549!1)) var968)) ; Statement: r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] suffixes> = $r3 
(define-const var3512 (Array Int String) (var2584_generateSuffixes/1767754718 var3282 var1390)) ; Statement: $r4 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int,int)>(i0, i2) 
(declare-const var549!2 var2212)
(assert (not (= var549!2 null-var2212)))
(assert (= (collectionSuffixes/-1715654603 (cast-from-var2212-to-var2630 var549!2)) var3512)) ; Statement: r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes> = $r4 
(define-const var1768 var1093 (collectionPersister/-900363535 var549!2)) ; Statement: $r6 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var2738 (Array Int String) (var1722_getKeyColumnNames/-374017113 (cast-from-var1093-to-var1722 var1768))) ; Statement: $r8 = interfaceinvoke $r6.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>() 
(assert true)
(define-const var940 String (whereString/-1964064400 (cast-from-var2212-to-var402 var549!2) var609 var2738 var3225 var2365)) ; Statement: r9 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],java.lang.String,int)>(r5, $r8, r7, i3) 
(define-const var1527 String null-String) ; Statement: r68 = null 
(assert true)
(define-const var2282 var3961 (getLoadQueryInfluencers/-1412699050 (cast-from-var2212-to-var2630 var549!2))) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>() 
(assert true)
(define-const var3316 var2473 (getEnabledFilters/-185187305 var2282)) ; Statement: r11 = virtualinvoke $r10.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.Map getEnabledFilters()>() 
(define-const var336 var1093 (collectionPersister/-900363535 var549!2)) ; Statement: $r12 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var3670 String (var1722_filterFragment/1785996213 (cast-from-var1093-to-var1722 var336) var609 var3316)) ; Statement: r69 = interfaceinvoke $r12.<org.hibernate.persister.collection.QueryableCollection: java.lang.String filterFragment(java.lang.String,java.util.Map)>(r5, r11) 
(define-const var3552 var1093 (collectionPersister/-900363535 var549!2)) ; Statement: $r13 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var2162 Bool (var2923_isManyToMany/-2108787302 (cast-from-var1093-to-var2923 var3552))) ; Statement: $z0 = interfaceinvoke $r13.<org.hibernate.persister.collection.QueryableCollection: boolean isManyToMany()>() 
 ; Statement: if $z0 == 0 goto $r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69) 
(assert (= (ite var2162 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3831 String (var1918_moveAndToBeginning/940279949 var3670)) ; Statement: $r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69) 
(assert true)
;(assert (insert/1196171004 var940 0 var3831)) ; Statement: virtualinvoke r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, $r14) 

(declare-const var940!1 String)
(declare-const var2007 Int)
(declare-const var3831!1 String)
(define-const var3124 var7 (associations/-1715654603 (cast-from-var2212-to-var2630 var549!2))) ; Statement: $r15 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(assert true)
(define-const var24 var2188 (mergeOuterJoins/519578486 (cast-from-var2212-to-var2630 var549!2) var3124)) ; Statement: $r54 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r15) 
(define-const var948 var3941 var3941-init) ; Statement: $r16 = new org.hibernate.sql.Select 
(assert true)
(define-const var2901 var2133 (getDialect/1142344870 (cast-from-var2212-to-var2630 var549!2))) ; Statement: $r17 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
;(assert (<init>/-604569825 var948 var2901)) ; Statement: specialinvoke $r16.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r17) 

(declare-const var948!1 var3941)
(declare-const var2901!1 var2133)
(define-const var3061 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3061)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3061!1 String)
(assert (= var3061!1 ""))
(define-const var3914 var1093 (collectionPersister/-900363535 var549!2)) ; Statement: $r21 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var2472 (Array Int String) (collectionSuffixes/-1715654603 (cast-from-var2212-to-var2630 var549!2))) ; Statement: $r19 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes> 
(define-const var3004 String (select var2472 0)) ; Statement: $r20 = $r19[0] 
(define-const var1262 String (var1093_selectFragment/232488891 var3914 var609 var3004)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.persister.collection.QueryableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r5, $r20) 
(assert true)
(define-const var3024 String (append/672562846 var3061!1 var1262)) ; Statement: $r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3061!2 String)
(assert (= var3061!2 (str.++ var3061!1 var1262)))
(define-const var31 var7 (associations/-1715654603 (cast-from-var2212-to-var2630 var549!2))) ; Statement: $r23 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(assert true)
(define-const var1308 String (selectString/-146280878 (cast-from-var2212-to-var2630 var549!2) var31)) ; Statement: $r24 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String selectString(java.util.List)>($r23) 
(assert true)
(define-const var1835 String (append/672562846 var3024 var1308)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var3024!1 String)
(assert (= var3024!1 (str.++ var3024 var1308)))
(assert true)
(define-const var3157 String (toString/-2075883882 var1835)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var516 var3941 (setSelectClause/398150799 var948!1 var3157)) ; Statement: $r30 = virtualinvoke $r16.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r27) 
(define-const var1817 var1093 (collectionPersister/-900363535 var549!2)) ; Statement: $r28 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var1031 String (var1722_getTableName/48490405 (cast-from-var1093-to-var1722 var1817))) ; Statement: $r29 = interfaceinvoke $r28.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>() 
(assert true)
(define-const var33 var3941 (setFromClause/100075162 var516 var1031 var609)) ; Statement: $r32 = virtualinvoke $r30.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String,java.lang.String)>($r29, r5) 
(assert true)
(define-const var3684 String (toString/-2075883882 var940!1)) ; Statement: $r31 = virtualinvoke r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3467 var3941 (setWhereClause/1091603732 var33 var3684)) ; Statement: $r35 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r31) 
(assert true)
(define-const var2728 String (toFromFragmentString/701527262 var24)) ; Statement: $r34 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(assert true)
(define-const var2362 String (toWhereFragmentString/-1276368279 var24)) ; Statement: $r33 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var607 var3941 (setOuterJoins/840368943 var3467 var2728 var2362)) ; Statement: $r55 = virtualinvoke $r35.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r34, $r33) 
(define-const var2997 var7 (associations/-1715654603 (cast-from-var2212-to-var2630 var549!2))) ; Statement: $r37 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations> 
(define-const var850 var1093 (collectionPersister/-900363535 var549!2)) ; Statement: $r36 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var1549 String (var1093_getSQLOrderByString/1167643194 var850 var609)) ; Statement: $r38 = interfaceinvoke $r36.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getSQLOrderByString(java.lang.String)>(r5) 
 ; Statement: if r68 != null goto $r72 = virtualinvoke r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var1527 null-String)))) ; Negate: Cond: r68 != null  
(define-const var1795 String "") ; Statement: $r72 = "" 
 ; Statement: goto [?= $r39 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String mergeOrderings(java.lang.String,java.lang.String)>($r38, $r72)] 
(assert true) ; Non Conditional
(define-const var787 String (var2630_mergeOrderings/-1776360452 var1549 var1795)) ; Statement: $r39 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String mergeOrderings(java.lang.String,java.lang.String)>($r38, $r72) 
(assert true)
(define-const var2009 String (orderBy/306455785 (cast-from-var2212-to-var2630 var549!2) var2997 var787)) ; Statement: $r40 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r37, $r39) 
(assert true)
;(assert (setOrderByClause/-713655946 var607 var2009)) ; Statement: virtualinvoke $r55.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r40) 

(declare-const var607!1 var3941)
(declare-const var2009!1 String)
(assert true)
(define-const var2201 var736 (getFactory/1655160242 (cast-from-var2212-to-var2630 var549!2))) ; Statement: $r41 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2825 var3304 (var736_getSettings/1243174053 var2201)) ; Statement: $r42 = interfaceinvoke $r41.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.cfg.Settings getSettings()>() 
(assert true)
(define-const var3636 Bool (isCommentsEnabled/-1137246873 var2825)) ; Statement: $z1 = virtualinvoke $r42.<org.hibernate.cfg.Settings: boolean isCommentsEnabled()>() 
 ; Statement: if $z1 == 0 goto $r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(assert (= (ite var3636 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3609 String (toStatementString/-1084413137 var607!1)) ; Statement: $r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(declare-const var549!3 var2212)
(assert (not (= var549!3 null-var2212)))
(assert (= (sql/-1715654603 (cast-from-var2212-to-var2630 var549!3)) var3609)) ; Statement: r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String sql> = $r43 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {associations/-1715654603=([org.hibernate.loader.JoinWalker], java.util.List), cast-from-var2212-to-var2630=([org.hibernate.loader.collection.BasicCollectionJoinWalker], org.hibernate.loader.JoinWalker), var2630_countEntityPersisters/59687463=([java.util.List], int), var2630_countCollectionPersisters/2040521228=([java.util.List], int), var2584_generateSuffixes/-780092581=([int], java.lang.String[]), suffixes/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String[]), var2584_generateSuffixes/1767754718=([int, int], java.lang.String[]), collectionSuffixes/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String[]), collectionPersister/-900363535=([org.hibernate.loader.collection.BasicCollectionJoinWalker], org.hibernate.persister.collection.QueryableCollection), var1722_getKeyColumnNames/-374017113=([org.hibernate.persister.entity.Joinable], java.lang.String[]), cast-from-var1093-to-var1722=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.entity.Joinable), whereString/-1964064400=([org.hibernate.loader.collection.CollectionJoinWalker, java.lang.String, java.lang.String[], java.lang.String, int], java.lang.StringBuilder), cast-from-var2212-to-var402=([org.hibernate.loader.collection.BasicCollectionJoinWalker], org.hibernate.loader.collection.CollectionJoinWalker), getLoadQueryInfluencers/-1412699050=([org.hibernate.loader.JoinWalker], org.hibernate.engine.spi.LoadQueryInfluencers), getEnabledFilters/-185187305=([org.hibernate.engine.spi.LoadQueryInfluencers], java.util.Map), var1722_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), var2923_isManyToMany/-2108787302=([org.hibernate.persister.collection.CollectionPersister], boolean), cast-from-var1093-to-var2923=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), var1918_moveAndToBeginning/940279949=([java.lang.String], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), mergeOuterJoins/519578486=([org.hibernate.loader.JoinWalker, java.util.List], org.hibernate.sql.JoinFragment), var3941-init=([], org.hibernate.sql.Select), getDialect/1142344870=([org.hibernate.loader.JoinWalker], org.hibernate.dialect.Dialect), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1093_selectFragment/232488891=([org.hibernate.persister.collection.QueryableCollection, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), selectString/-146280878=([org.hibernate.loader.JoinWalker, java.util.List], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), var1722_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), setFromClause/100075162=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), setOuterJoins/840368943=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), var1093_getSQLOrderByString/1167643194=([org.hibernate.persister.collection.QueryableCollection, java.lang.String], java.lang.String), var2630_mergeOrderings/-1776360452=([java.lang.String, java.lang.String], java.lang.String), orderBy/306455785=([org.hibernate.loader.JoinWalker, java.util.List, java.lang.String], java.lang.String), setOrderByClause/-713655946=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), getFactory/1655160242=([org.hibernate.loader.JoinWalker], org.hibernate.engine.spi.SessionFactoryImplementor), var736_getSettings/1243174053=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.cfg.Settings), isCommentsEnabled/-1137246873=([org.hibernate.cfg.Settings], boolean), toStatementString/-1084413137=([org.hibernate.sql.Select], java.lang.String), sql/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String)}
; {var2212=org.hibernate.loader.collection.BasicCollectionJoinWalker, var549=r0, var609=r5, var3489=null_type, var2365=i3, var3225=r7, var7=java.util.List, var2630=org.hibernate.loader.JoinWalker, var937=$r1, var3282=i0, var312=$r2, var3430=$i1, var1390=i2, var2584=org.hibernate.loader.BasicLoader, var968=$r3, var3512=$r4, var1093=org.hibernate.persister.collection.QueryableCollection, var1768=$r6, var1722=org.hibernate.persister.entity.Joinable, var2738=$r8, var402=org.hibernate.loader.collection.CollectionJoinWalker, var940=r9, var1527=r68, var3961=org.hibernate.engine.spi.LoadQueryInfluencers, var2282=$r10, var2473=java.util.Map, var3316=r11, var336=$r12, var3670=r69, var3552=$r13, var2923=org.hibernate.persister.collection.CollectionPersister, var2162=$z0, var1918=org.hibernate.internal.util.StringHelper, var3831=$r14, var2007=0, var3124=$r15, var2188=org.hibernate.sql.JoinFragment, var24=$r54, var3941=org.hibernate.sql.Select, var948=$r16, var2133=org.hibernate.dialect.Dialect, var2901=$r17, var3061=$r18, var3914=$r21, var2472=$r19, var3004=$r20, var1262=$r22, var3024=$r25, var31=$r23, var1308=$r24, var1835=$r26, var3157=$r27, var516=$r30, var1817=$r28, var1031=$r29, var33=$r32, var3684=$r31, var3467=$r35, var2728=$r34, var2362=$r33, var607=$r55, var2997=$r37, var850=$r36, var1549=$r38, var1795=$r72, var787=$r39, var2009=$r40, var736=org.hibernate.engine.spi.SessionFactoryImplementor, var2201=$r41, var3304=org.hibernate.cfg.Settings, var2825=$r42, var3636=$z1, var3609=$r43}
; {org.hibernate.loader.collection.BasicCollectionJoinWalker=var2212, r0=var549, r5=var609, null_type=var3489, i3=var2365, r7=var3225, java.util.List=var7, org.hibernate.loader.JoinWalker=var2630, $r1=var937, i0=var3282, $r2=var312, $i1=var3430, i2=var1390, org.hibernate.loader.BasicLoader=var2584, $r3=var968, $r4=var3512, org.hibernate.persister.collection.QueryableCollection=var1093, $r6=var1768, org.hibernate.persister.entity.Joinable=var1722, $r8=var2738, org.hibernate.loader.collection.CollectionJoinWalker=var402, r9=var940, r68=var1527, org.hibernate.engine.spi.LoadQueryInfluencers=var3961, $r10=var2282, java.util.Map=var2473, r11=var3316, $r12=var336, r69=var3670, $r13=var3552, org.hibernate.persister.collection.CollectionPersister=var2923, $z0=var2162, org.hibernate.internal.util.StringHelper=var1918, $r14=var3831, 0=var2007, $r15=var3124, org.hibernate.sql.JoinFragment=var2188, $r54=var24, org.hibernate.sql.Select=var3941, $r16=var948, org.hibernate.dialect.Dialect=var2133, $r17=var2901, $r18=var3061, $r21=var3914, $r19=var2472, $r20=var3004, $r22=var1262, $r25=var3024, $r23=var31, $r24=var1308, $r26=var1835, $r27=var3157, $r30=var516, $r28=var1817, $r29=var1031, $r32=var33, $r31=var3684, $r35=var3467, $r34=var2728, $r33=var2362, $r55=var607, $r37=var2997, $r36=var850, $r38=var1549, $r72=var1795, $r39=var787, $r40=var2009, org.hibernate.engine.spi.SessionFactoryImplementor=var736, $r41=var2201, org.hibernate.cfg.Settings=var3304, $r42=var2825, $z1=var3636, $r43=var3609}
;seq <java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.loader.collection.BasicCollectionJoinWalker;	r5 := @parameter0: java.lang.String;	i3 := @parameter1: int;	r7 := @parameter2: java.lang.String;	$r1 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	i0 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countEntityPersisters(java.util.List)>($r1);	$r2 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$i1 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: int countCollectionPersisters(java.util.List)>($r2);	i2 = $i1 + 1;	$r3 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>(i0);	r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] suffixes> = $r3;	$r4 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int,int)>(i0, i2);	r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes> = $r4;	$r6 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r8 = interfaceinvoke $r6.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>();	r9 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],java.lang.String,int)>(r5, $r8, r7, i3);	r68 = null;	$r10 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.LoadQueryInfluencers getLoadQueryInfluencers()>();	r11 = virtualinvoke $r10.<org.hibernate.engine.spi.LoadQueryInfluencers: java.util.Map getEnabledFilters()>();	$r12 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	r69 = interfaceinvoke $r12.<org.hibernate.persister.collection.QueryableCollection: java.lang.String filterFragment(java.lang.String,java.util.Map)>(r5, r11);	$r13 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$z0 = interfaceinvoke $r13.<org.hibernate.persister.collection.QueryableCollection: boolean isManyToMany()>();	if $z0 == 0 goto $r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69);	$r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String moveAndToBeginning(java.lang.String)>(r69);	virtualinvoke r9.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(0, $r14);	$r15 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$r54 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r15);	$r16 = new org.hibernate.sql.Select;	$r17 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.dialect.Dialect getDialect()>();	specialinvoke $r16.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r17);	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r19 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String[] collectionSuffixes>;	$r20 = $r19[0];	$r22 = interfaceinvoke $r21.<org.hibernate.persister.collection.QueryableCollection: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r5, $r20);	$r25 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r23 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$r24 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String selectString(java.util.List)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r30 = virtualinvoke $r16.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r27);	$r28 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r29 = interfaceinvoke $r28.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>();	$r32 = virtualinvoke $r30.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String,java.lang.String)>($r29, r5);	$r31 = virtualinvoke r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>($r31);	$r34 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r33 = virtualinvoke $r54.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r55 = virtualinvoke $r35.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r34, $r33);	$r37 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.util.List associations>;	$r36 = r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r38 = interfaceinvoke $r36.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getSQLOrderByString(java.lang.String)>(r5);	if r68 != null goto $r72 = virtualinvoke r68.<java.lang.StringBuilder: java.lang.String toString()>();	$r72 = "";	goto [?= $r39 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String mergeOrderings(java.lang.String,java.lang.String)>($r38, $r72)];	$r39 = staticinvoke <org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String mergeOrderings(java.lang.String,java.lang.String)>($r38, $r72);	$r40 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r37, $r39);	virtualinvoke $r55.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r40);	$r41 = virtualinvoke r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r42 = interfaceinvoke $r41.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.cfg.Settings getSettings()>();	$z1 = virtualinvoke $r42.<org.hibernate.cfg.Settings: boolean isCommentsEnabled()>();	if $z1 == 0 goto $r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	$r43 = virtualinvoke $r55.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	r0.<org.hibernate.loader.collection.BasicCollectionJoinWalker: java.lang.String sql> = $r43;	return
;block_num 5