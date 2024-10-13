(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var935 0)
(declare-sort var69 0)
(declare-sort var2489 0)
(declare-sort var3640 0)
(declare-sort var1831 0)
(declare-sort var799 0)
(declare-sort var3555 0)
(declare-sort var632 0)
(declare-sort var1601 0)
(declare-sort var905 0)
(declare-sort var3010 0)
(declare-sort var1520 0)
(declare-sort var3188 0)
(declare-sort var51 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun associations/-1715654603 (var1831) var3640)
(declare-fun cast-from-var935-to-var1831 (var935) var1831)
(declare-fun var1831_countEntityPersisters/59687463 (var3640) Int)
(declare-fun var799_generateSuffixes/-780092581 (Int) (Array Int String))
(declare-fun suffixes/-1715654603 (var1831) (Array Int String))
(declare-fun mergeOuterJoins/519578486 (var1831 var3640) var3555)
(declare-fun var632-init () var632)
(declare-fun getDialect/1142344870 (var1831) var1601)
(declare-fun <init>/-604569825 (var632 var1601) void)
(declare-fun setLockOptions/1535095909 (var632 var2489) var632)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun persister/-1764368390 (var935) var905)
(declare-fun alias/-1764368390 (var935) String)
(declare-fun var905_selectFragment/-822025103 (var905 String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun selectString/-146280878 (var1831 var3640) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setSelectClause/398150799 (var632 String) var632)
(declare-fun var905_fromTableFragment/-838615174 (var905 String) String)
(declare-fun appendLockHint/-359167972 (var1601 var2489 String) String)
(declare-fun var3010_fromJoinFragment/-2074841343 (var3010 String Bool Bool) String)
(declare-fun cast-from-var905-to-var3010 (var905) var3010)
(declare-fun setFromClause/1818208161 (var632 String) var632)
(declare-fun setWhereClause/1091603732 (var632 String) var632)
(declare-fun toFromFragmentString/701527262 (var3555) String)
(declare-fun toWhereFragmentString/-1276368279 (var3555) String)
(declare-fun getWhereFragment/-793714747 (var935) String)
(declare-fun setOuterJoins/840368943 (var632 String String) var632)
(declare-fun orderBy/1493930030 (var935 var3640 String) String)
(declare-fun setOrderByClause/-713655946 (var632 String) var632)
(declare-fun setGroupByClause/1320948645 (var632 String) var632)
(declare-fun getFactory/1655160242 (var1831) var1520)
(declare-fun var51_getSessionFactoryOptions/-1909602825 (var51) var3188)
(declare-fun cast-from-var1520-to-var51 (var1520) var51)
(declare-fun var3188_isCommentsEnabled/348952998 (var3188) Bool)
(declare-fun toStatementString/-1084413137 (var632) String)
(declare-fun sql/-1715654603 (var1831) String)
(declare-const null-var935 var935)
(declare-const null-String String)
(declare-const null-var2489 var2489)
(declare-const var431 var935) ; Statement: r0 := @this: org.hibernate.loader.AbstractEntityJoinWalker 
(assert (not (= var431 null-var935)))
(declare-const var2005 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2005 null-String)))
(declare-const var2473 String) ; Statement: r23 := @parameter1: java.lang.String 
(assert (not (= var2473 null-String)))
(declare-const var1408 String) ; Statement: r33 := @parameter2: java.lang.String 
(assert (not (= var1408 null-String)))
(declare-const var3799 String) ; Statement: r37 := @parameter3: java.lang.String 
(assert (not (= var3799 null-String)))
(declare-const var2383 var2489) ; Statement: r7 := @parameter4: org.hibernate.LockOptions 
(assert (not (= var2383 null-var2489)))
(define-const var2836 var3640 (associations/-1715654603 (cast-from-var935-to-var1831 var431))) ; Statement: $r1 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations> 
(define-const var3210 Int (var1831_countEntityPersisters/59687463 var2836)) ; Statement: i0 = staticinvoke <org.hibernate.loader.AbstractEntityJoinWalker: int countEntityPersisters(java.util.List)>($r1) 
(define-const var2017 Int (+ var3210 1)) ; Statement: $i1 = i0 + 1 
(define-const var706 (Array Int String) (var799_generateSuffixes/-780092581 var2017)) ; Statement: $r2 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>($i1) 
(declare-const var431!1 var935)
(assert (not (= var431!1 null-var935)))
(assert (= (suffixes/-1715654603 (cast-from-var935-to-var1831 var431!1)) var706)) ; Statement: r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String[] suffixes> = $r2 
(define-const var3879 var3640 (associations/-1715654603 (cast-from-var935-to-var1831 var431!1))) ; Statement: $r3 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations> 
(assert true)
(define-const var2716 var3555 (mergeOuterJoins/519578486 (cast-from-var935-to-var1831 var431!1) var3879)) ; Statement: r4 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r3) 
(define-const var2427 var632 var632-init) ; Statement: $r5 = new org.hibernate.sql.Select 
(assert true)
(define-const var3480 var1601 (getDialect/1142344870 (cast-from-var935-to-var1831 var431!1))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
;(assert (<init>/-604569825 var2427 var3480)) ; Statement: specialinvoke $r5.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r6) 

(declare-const var2427!1 var632)
(declare-const var3480!1 var1601)
(assert true)
(define-const var2983 var632 (setLockOptions/1535095909 var2427!1 var2383)) ; Statement: $r9 = virtualinvoke $r5.<org.hibernate.sql.Select: org.hibernate.sql.Select setLockOptions(org.hibernate.LockOptions)>(r7) 
 ; Statement: if r8 != null goto $r54 = r8 
(assert (not (not (= var2005 null-String)))) ; Negate: Cond: r8 != null  
(define-const var1672 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1672)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1672!1 String)
(assert (= var1672!1 ""))
(define-const var3347 var905 (persister/-1764368390 var431!1)) ; Statement: $r47 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister> 
(define-const var631 String (alias/-1764368390 var431!1)) ; Statement: $r46 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias> 
(define-const var2948 (Array Int String) (suffixes/-1715654603 (cast-from-var935-to-var1831 var431!1))) ; Statement: $r44 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String[] suffixes> 
(define-const var1481 String (select var2948 var3210)) ; Statement: $r45 = $r44[i0] 
(define-const var3658 String (var905_selectFragment/-822025103 var3347 var631 var1481)) ; Statement: $r48 = interfaceinvoke $r47.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String selectFragment(java.lang.String,java.lang.String)>($r46, $r45) 
(assert true)
(define-const var3072 String (append/672562846 var1672!1 var3658)) ; Statement: $r51 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r48) 
(declare-const var1672!2 String)
(assert (= var1672!2 (str.++ var1672!1 var3658)))
(define-const var3533 var3640 (associations/-1715654603 (cast-from-var935-to-var1831 var431!1))) ; Statement: $r49 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations> 
(assert true)
(define-const var3954 String (selectString/-146280878 (cast-from-var935-to-var1831 var431!1) var3533)) ; Statement: $r50 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String selectString(java.util.List)>($r49) 
(assert true)
(define-const var1374 String (append/672562846 var3072 var3954)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50) 
(declare-const var3072!1 String)
(assert (= var3072!1 (str.++ var3072 var3954)))
(assert true)
(define-const var3476 String (toString/-2075883882 var1374)) ; Statement: $r54 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r22 = virtualinvoke $r9.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r54)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2222 var632 (setSelectClause/398150799 var2983 var3476)) ; Statement: $r22 = virtualinvoke $r9.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r54) 
(define-const var978 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var978)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var978!1 String)
(assert (= var978!1 ""))
(assert true)
(define-const var203 var1601 (getDialect/1142344870 (cast-from-var935-to-var1831 var431!1))) ; Statement: $r14 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var3117 var905 (persister/-1764368390 var431!1)) ; Statement: $r12 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister> 
(define-const var260 String (alias/-1764368390 var431!1)) ; Statement: $r11 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias> 
(define-const var274 String (var905_fromTableFragment/-838615174 var3117 var260)) ; Statement: $r13 = interfaceinvoke $r12.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromTableFragment(java.lang.String)>($r11) 
(assert true)
(define-const var548 String (appendLockHint/-359167972 var203 var2383 var274)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: java.lang.String appendLockHint(org.hibernate.LockOptions,java.lang.String)>(r7, $r13) 
(assert true)
(define-const var1869 String (append/672562846 var978!1 var548)) ; Statement: $r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var978!2 String)
(assert (= var978!2 (str.++ var978!1 var548)))
(define-const var1016 var905 (persister/-1764368390 var431!1)) ; Statement: $r17 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister> 
(define-const var2047 String (alias/-1764368390 var431!1)) ; Statement: $r16 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias> 
(define-const var1703 String (var3010_fromJoinFragment/-2074841343 (cast-from-var905-to-var3010 var1016) var2047 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r16, 1, 1) 
(assert true)
(define-const var516 String (append/672562846 var1869 var1703)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1869!1 String)
(assert (= var1869!1 (str.++ var1869 var1703)))
(assert true)
(define-const var90 String (toString/-2075883882 var516)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var753 var632 (setFromClause/1818208161 var2222 var90)) ; Statement: $r24 = virtualinvoke $r22.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r21) 
(assert true)
(define-const var3747 var632 (setWhereClause/1091603732 var753 var2473)) ; Statement: $r32 = virtualinvoke $r24.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>(r23) 
(assert true)
(define-const var2535 String (toFromFragmentString/701527262 var2716)) ; Statement: $r31 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var1554 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1554)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1554!1 String)
(assert (= var1554!1 ""))
(assert true)
(define-const var2566 String (toWhereFragmentString/-1276368279 var2716)) ; Statement: $r26 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var3574 String (append/672562846 var1554!1 var2566)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1554!2 String)
(assert (= var1554!2 (str.++ var1554!1 var2566)))
(assert true)
(define-const var75 String (getWhereFragment/-793714747 var431!1)) ; Statement: $r27 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String getWhereFragment()>() 
(assert true)
(define-const var825 String (append/672562846 var3574 var75)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3574!1 String)
(assert (= var3574!1 (str.++ var3574 var75)))
(assert true)
(define-const var1696 String (toString/-2075883882 var825)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3315 var632 (setOuterJoins/840368943 var3747 var2535 var1696)) ; Statement: $r36 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r31, $r30) 
(define-const var2116 var3640 (associations/-1715654603 (cast-from-var935-to-var1831 var431!1))) ; Statement: $r34 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations> 
(assert true)
(define-const var1289 String (orderBy/1493930030 var431!1 var2116 var1408)) ; Statement: $r35 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r34, r33) 
(assert true)
(define-const var1156 var632 (setOrderByClause/-713655946 var3315 var1289)) ; Statement: $r38 = virtualinvoke $r36.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r35) 
(assert true)
(define-const var298 var632 (setGroupByClause/1320948645 var1156 var3799)) ; Statement: $r53 = virtualinvoke $r38.<org.hibernate.sql.Select: org.hibernate.sql.Select setGroupByClause(java.lang.String)>(r37) 
(assert true)
(define-const var3581 var1520 (getFactory/1655160242 (cast-from-var935-to-var1831 var431!1))) ; Statement: $r39 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var206 var3188 (var51_getSessionFactoryOptions/-1909602825 (cast-from-var1520-to-var51 var3581))) ; Statement: $r40 = interfaceinvoke $r39.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var2183 Bool (var3188_isCommentsEnabled/348952998 var206)) ; Statement: $z0 = interfaceinvoke $r40.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(assert (= (ite var2183 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var445 String (toStatementString/-1084413137 var298)) ; Statement: $r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(declare-const var431!2 var935)
(assert (not (= var431!2 null-var935)))
(assert (= (sql/-1715654603 (cast-from-var935-to-var1831 var431!2)) var445)) ; Statement: r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String sql> = $r41 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {associations/-1715654603=([org.hibernate.loader.JoinWalker], java.util.List), cast-from-var935-to-var1831=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.loader.JoinWalker), var1831_countEntityPersisters/59687463=([java.util.List], int), var799_generateSuffixes/-780092581=([int], java.lang.String[]), suffixes/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String[]), mergeOuterJoins/519578486=([org.hibernate.loader.JoinWalker, java.util.List], org.hibernate.sql.JoinFragment), var632-init=([], org.hibernate.sql.Select), getDialect/1142344870=([org.hibernate.loader.JoinWalker], org.hibernate.dialect.Dialect), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), setLockOptions/1535095909=([org.hibernate.sql.Select, org.hibernate.LockOptions], org.hibernate.sql.Select), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), persister/-1764368390=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.persister.entity.OuterJoinLoadable), alias/-1764368390=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), var905_selectFragment/-822025103=([org.hibernate.persister.entity.OuterJoinLoadable, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), selectString/-146280878=([org.hibernate.loader.JoinWalker, java.util.List], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), var905_fromTableFragment/-838615174=([org.hibernate.persister.entity.OuterJoinLoadable, java.lang.String], java.lang.String), appendLockHint/-359167972=([org.hibernate.dialect.Dialect, org.hibernate.LockOptions, java.lang.String], java.lang.String), var3010_fromJoinFragment/-2074841343=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), cast-from-var905-to-var3010=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable), setFromClause/1818208161=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), getWhereFragment/-793714747=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), setOuterJoins/840368943=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), orderBy/1493930030=([org.hibernate.loader.AbstractEntityJoinWalker, java.util.List, java.lang.String], java.lang.String), setOrderByClause/-713655946=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setGroupByClause/1320948645=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), getFactory/1655160242=([org.hibernate.loader.JoinWalker], org.hibernate.engine.spi.SessionFactoryImplementor), var51_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var1520-to-var51=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var3188_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), toStatementString/-1084413137=([org.hibernate.sql.Select], java.lang.String), sql/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String)}
; {var935=org.hibernate.loader.AbstractEntityJoinWalker, var431=r0, var2005=r8, var69=null_type, var2473=r23, var1408=r33, var3799=r37, var2489=org.hibernate.LockOptions, var2383=r7, var3640=java.util.List, var1831=org.hibernate.loader.JoinWalker, var2836=$r1, var3210=i0, var2017=$i1, var799=org.hibernate.loader.BasicLoader, var706=$r2, var3879=$r3, var3555=org.hibernate.sql.JoinFragment, var2716=r4, var632=org.hibernate.sql.Select, var2427=$r5, var1601=org.hibernate.dialect.Dialect, var3480=$r6, var2983=$r9, var1672=$r43, var905=org.hibernate.persister.entity.OuterJoinLoadable, var3347=$r47, var631=$r46, var2948=$r44, var1481=$r45, var3658=$r48, var3072=$r51, var3533=$r49, var3954=$r50, var1374=$r52, var3476=$r54, var2222=$r22, var978=$r10, var203=$r14, var3117=$r12, var260=$r11, var274=$r13, var548=$r15, var1869=$r19, var1016=$r17, var2047=$r16, var3010=org.hibernate.persister.entity.Joinable, var1703=$r18, var516=$r20, var90=$r21, var753=$r24, var3747=$r32, var2535=$r31, var1554=$r25, var2566=$r26, var3574=$r28, var75=$r27, var825=$r29, var1696=$r30, var3315=$r36, var2116=$r34, var1289=$r35, var1156=$r38, var298=$r53, var1520=org.hibernate.engine.spi.SessionFactoryImplementor, var3581=$r39, var3188=org.hibernate.boot.spi.SessionFactoryOptions, var51=org.hibernate.SessionFactory, var206=$r40, var2183=$z0, var445=$r41}
; {org.hibernate.loader.AbstractEntityJoinWalker=var935, r0=var431, r8=var2005, null_type=var69, r23=var2473, r33=var1408, r37=var3799, org.hibernate.LockOptions=var2489, r7=var2383, java.util.List=var3640, org.hibernate.loader.JoinWalker=var1831, $r1=var2836, i0=var3210, $i1=var2017, org.hibernate.loader.BasicLoader=var799, $r2=var706, $r3=var3879, org.hibernate.sql.JoinFragment=var3555, r4=var2716, org.hibernate.sql.Select=var632, $r5=var2427, org.hibernate.dialect.Dialect=var1601, $r6=var3480, $r9=var2983, $r43=var1672, org.hibernate.persister.entity.OuterJoinLoadable=var905, $r47=var3347, $r46=var631, $r44=var2948, $r45=var1481, $r48=var3658, $r51=var3072, $r49=var3533, $r50=var3954, $r52=var1374, $r54=var3476, $r22=var2222, $r10=var978, $r14=var203, $r12=var3117, $r11=var260, $r13=var274, $r15=var548, $r19=var1869, $r17=var1016, $r16=var2047, org.hibernate.persister.entity.Joinable=var3010, $r18=var1703, $r20=var516, $r21=var90, $r24=var753, $r32=var3747, $r31=var2535, $r25=var1554, $r26=var2566, $r28=var3574, $r27=var75, $r29=var825, $r30=var1696, $r36=var3315, $r34=var2116, $r35=var1289, $r38=var1156, $r53=var298, org.hibernate.engine.spi.SessionFactoryImplementor=var1520, $r39=var3581, org.hibernate.boot.spi.SessionFactoryOptions=var3188, org.hibernate.SessionFactory=var51, $r40=var206, $z0=var2183, $r41=var445}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.hibernate.loader.AbstractEntityJoinWalker;	r8 := @parameter0: java.lang.String;	r23 := @parameter1: java.lang.String;	r33 := @parameter2: java.lang.String;	r37 := @parameter3: java.lang.String;	r7 := @parameter4: org.hibernate.LockOptions;	$r1 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations>;	i0 = staticinvoke <org.hibernate.loader.AbstractEntityJoinWalker: int countEntityPersisters(java.util.List)>($r1);	$i1 = i0 + 1;	$r2 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>($i1);	r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String[] suffixes> = $r2;	$r3 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations>;	r4 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r3);	$r5 = new org.hibernate.sql.Select;	$r6 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>();	specialinvoke $r5.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r6);	$r9 = virtualinvoke $r5.<org.hibernate.sql.Select: org.hibernate.sql.Select setLockOptions(org.hibernate.LockOptions)>(r7);	if r8 != null goto $r54 = r8;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r47 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister>;	$r46 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias>;	$r44 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String[] suffixes>;	$r45 = $r44[i0];	$r48 = interfaceinvoke $r47.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String selectFragment(java.lang.String,java.lang.String)>($r46, $r45);	$r51 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r48);	$r49 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations>;	$r50 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String selectString(java.util.List)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r50);	$r54 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r22 = virtualinvoke $r9.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r54)];	$r22 = virtualinvoke $r9.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r54);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>();	$r12 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister>;	$r11 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias>;	$r13 = interfaceinvoke $r12.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromTableFragment(java.lang.String)>($r11);	$r15 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: java.lang.String appendLockHint(org.hibernate.LockOptions,java.lang.String)>(r7, $r13);	$r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister>;	$r16 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias>;	$r18 = interfaceinvoke $r17.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r16, 1, 1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = virtualinvoke $r22.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r21);	$r32 = virtualinvoke $r24.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>(r23);	$r31 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r27 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String getWhereFragment()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r36 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r31, $r30);	$r34 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations>;	$r35 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r34, r33);	$r38 = virtualinvoke $r36.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r35);	$r53 = virtualinvoke $r38.<org.hibernate.sql.Select: org.hibernate.sql.Select setGroupByClause(java.lang.String)>(r37);	$r39 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r40 = interfaceinvoke $r39.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r40.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto $r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	$r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String sql> = $r41;	return
;block_num 4