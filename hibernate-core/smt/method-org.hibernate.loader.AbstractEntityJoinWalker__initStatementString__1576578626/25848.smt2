(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2244 0)
(declare-sort var1997 0)
(declare-sort var1580 0)
(declare-sort var1474 0)
(declare-sort var3777 0)
(declare-sort var2262 0)
(declare-sort var1497 0)
(declare-sort var2352 0)
(declare-sort var2638 0)
(declare-sort var2402 0)
(declare-sort var113 0)
(declare-sort var2142 0)
(declare-sort var2356 0)
(declare-sort var3940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun associations/-1715654603 (var3777) var1474)
(declare-fun cast-from-var2244-to-var3777 (var2244) var3777)
(declare-fun var3777_countEntityPersisters/59687463 (var1474) Int)
(declare-fun var2262_generateSuffixes/-780092581 (Int) (Array Int String))
(declare-fun suffixes/-1715654603 (var3777) (Array Int String))
(declare-fun mergeOuterJoins/519578486 (var3777 var1474) var1497)
(declare-fun var2352-init () var2352)
(declare-fun getDialect/1142344870 (var3777) var2638)
(declare-fun <init>/-604569825 (var2352 var2638) void)
(declare-fun setLockOptions/1535095909 (var2352 var1580) var2352)
(declare-fun setSelectClause/398150799 (var2352 String) var2352)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun persister/-1764368390 (var2244) var2402)
(declare-fun alias/-1764368390 (var2244) String)
(declare-fun var2402_fromTableFragment/-838615174 (var2402 String) String)
(declare-fun appendLockHint/-359167972 (var2638 var1580 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var113_fromJoinFragment/-2074841343 (var113 String Bool Bool) String)
(declare-fun cast-from-var2402-to-var113 (var2402) var113)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setFromClause/1818208161 (var2352 String) var2352)
(declare-fun setWhereClause/1091603732 (var2352 String) var2352)
(declare-fun toFromFragmentString/701527262 (var1497) String)
(declare-fun toWhereFragmentString/-1276368279 (var1497) String)
(declare-fun getWhereFragment/-793714747 (var2244) String)
(declare-fun setOuterJoins/840368943 (var2352 String String) var2352)
(declare-fun orderBy/1493930030 (var2244 var1474 String) String)
(declare-fun setOrderByClause/-713655946 (var2352 String) var2352)
(declare-fun setGroupByClause/1320948645 (var2352 String) var2352)
(declare-fun getFactory/1655160242 (var3777) var2142)
(declare-fun var3940_getSessionFactoryOptions/-1909602825 (var3940) var2356)
(declare-fun cast-from-var2142-to-var3940 (var2142) var3940)
(declare-fun var2356_isCommentsEnabled/348952998 (var2356) Bool)
(declare-fun toStatementString/-1084413137 (var2352) String)
(declare-fun sql/-1715654603 (var3777) String)
(declare-const null-var2244 var2244)
(declare-const null-String String)
(declare-const null-var1580 var1580)
(declare-const var1957 var2244) ; Statement: r0 := @this: org.hibernate.loader.AbstractEntityJoinWalker 
(assert (not (= var1957 null-var2244)))
(declare-const var1312 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var1312 null-String)))
(declare-const var1409 String) ; Statement: r23 := @parameter1: java.lang.String 
(assert (not (= var1409 null-String)))
(declare-const var1996 String) ; Statement: r33 := @parameter2: java.lang.String 
(assert (not (= var1996 null-String)))
(declare-const var3022 String) ; Statement: r37 := @parameter3: java.lang.String 
(assert (not (= var3022 null-String)))
(declare-const var1158 var1580) ; Statement: r7 := @parameter4: org.hibernate.LockOptions 
(assert (not (= var1158 null-var1580)))
(define-const var2937 var1474 (associations/-1715654603 (cast-from-var2244-to-var3777 var1957))) ; Statement: $r1 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations> 
(define-const var3927 Int (var3777_countEntityPersisters/59687463 var2937)) ; Statement: i0 = staticinvoke <org.hibernate.loader.AbstractEntityJoinWalker: int countEntityPersisters(java.util.List)>($r1) 
(define-const var3508 Int (+ var3927 1)) ; Statement: $i1 = i0 + 1 
(define-const var454 (Array Int String) (var2262_generateSuffixes/-780092581 var3508)) ; Statement: $r2 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>($i1) 
(declare-const var1957!1 var2244)
(assert (not (= var1957!1 null-var2244)))
(assert (= (suffixes/-1715654603 (cast-from-var2244-to-var3777 var1957!1)) var454)) ; Statement: r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String[] suffixes> = $r2 
(define-const var2448 var1474 (associations/-1715654603 (cast-from-var2244-to-var3777 var1957!1))) ; Statement: $r3 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations> 
(assert true)
(define-const var3016 var1497 (mergeOuterJoins/519578486 (cast-from-var2244-to-var3777 var1957!1) var2448)) ; Statement: r4 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r3) 
(define-const var3160 var2352 var2352-init) ; Statement: $r5 = new org.hibernate.sql.Select 
(assert true)
(define-const var1931 var2638 (getDialect/1142344870 (cast-from-var2244-to-var3777 var1957!1))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
;(assert (<init>/-604569825 var3160 var1931)) ; Statement: specialinvoke $r5.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r6) 

(declare-const var3160!1 var2352)
(declare-const var1931!1 var2638)
(assert true)
(define-const var242 var2352 (setLockOptions/1535095909 var3160!1 var1158)) ; Statement: $r9 = virtualinvoke $r5.<org.hibernate.sql.Select: org.hibernate.sql.Select setLockOptions(org.hibernate.LockOptions)>(r7) 
 ; Statement: if r8 != null goto $r54 = r8 
(assert (not (= var1312 null-String))) ; Cond: r8 != null 
(define-const var1780 String var1312) ; Statement: $r54 = r8 
(assert true) ; Non Conditional
(assert true)
(define-const var750 var2352 (setSelectClause/398150799 var242 var1780)) ; Statement: $r22 = virtualinvoke $r9.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r54) 
(define-const var2892 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2892)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2892!1 String)
(assert (= var2892!1 ""))
(assert true)
(define-const var3698 var2638 (getDialect/1142344870 (cast-from-var2244-to-var3777 var1957!1))) ; Statement: $r14 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var1476 var2402 (persister/-1764368390 var1957!1)) ; Statement: $r12 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister> 
(define-const var1449 String (alias/-1764368390 var1957!1)) ; Statement: $r11 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias> 
(define-const var3652 String (var2402_fromTableFragment/-838615174 var1476 var1449)) ; Statement: $r13 = interfaceinvoke $r12.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromTableFragment(java.lang.String)>($r11) 
(assert true)
(define-const var1099 String (appendLockHint/-359167972 var3698 var1158 var3652)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: java.lang.String appendLockHint(org.hibernate.LockOptions,java.lang.String)>(r7, $r13) 
(assert true)
(define-const var2593 String (append/672562846 var2892!1 var1099)) ; Statement: $r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2892!2 String)
(assert (= var2892!2 (str.++ var2892!1 var1099)))
(define-const var2737 var2402 (persister/-1764368390 var1957!1)) ; Statement: $r17 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister> 
(define-const var3090 String (alias/-1764368390 var1957!1)) ; Statement: $r16 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias> 
(define-const var1749 String (var113_fromJoinFragment/-2074841343 (cast-from-var2402-to-var113 var2737) var3090 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r16, 1, 1) 
(assert true)
(define-const var861 String (append/672562846 var2593 var1749)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2593!1 String)
(assert (= var2593!1 (str.++ var2593 var1749)))
(assert true)
(define-const var830 String (toString/-2075883882 var861)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var780 var2352 (setFromClause/1818208161 var750 var830)) ; Statement: $r24 = virtualinvoke $r22.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r21) 
(assert true)
(define-const var1913 var2352 (setWhereClause/1091603732 var780 var1409)) ; Statement: $r32 = virtualinvoke $r24.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>(r23) 
(assert true)
(define-const var3547 String (toFromFragmentString/701527262 var3016)) ; Statement: $r31 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>() 
(define-const var3954 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3954)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3954!1 String)
(assert (= var3954!1 ""))
(assert true)
(define-const var2677 String (toWhereFragmentString/-1276368279 var3016)) ; Statement: $r26 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>() 
(assert true)
(define-const var2325 String (append/672562846 var3954!1 var2677)) ; Statement: $r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3954!2 String)
(assert (= var3954!2 (str.++ var3954!1 var2677)))
(assert true)
(define-const var1852 String (getWhereFragment/-793714747 var1957!1)) ; Statement: $r27 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String getWhereFragment()>() 
(assert true)
(define-const var2686 String (append/672562846 var2325 var1852)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2325!1 String)
(assert (= var2325!1 (str.++ var2325 var1852)))
(assert true)
(define-const var372 String (toString/-2075883882 var2686)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2920 var2352 (setOuterJoins/840368943 var1913 var3547 var372)) ; Statement: $r36 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r31, $r30) 
(define-const var2308 var1474 (associations/-1715654603 (cast-from-var2244-to-var3777 var1957!1))) ; Statement: $r34 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations> 
(assert true)
(define-const var4 String (orderBy/1493930030 var1957!1 var2308 var1996)) ; Statement: $r35 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r34, r33) 
(assert true)
(define-const var3542 var2352 (setOrderByClause/-713655946 var2920 var4)) ; Statement: $r38 = virtualinvoke $r36.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r35) 
(assert true)
(define-const var2930 var2352 (setGroupByClause/1320948645 var3542 var3022)) ; Statement: $r53 = virtualinvoke $r38.<org.hibernate.sql.Select: org.hibernate.sql.Select setGroupByClause(java.lang.String)>(r37) 
(assert true)
(define-const var2745 var2142 (getFactory/1655160242 (cast-from-var2244-to-var3777 var1957!1))) ; Statement: $r39 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3552 var2356 (var3940_getSessionFactoryOptions/-1909602825 (cast-from-var2142-to-var3940 var2745))) ; Statement: $r40 = interfaceinvoke $r39.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var2894 Bool (var2356_isCommentsEnabled/348952998 var3552)) ; Statement: $z0 = interfaceinvoke $r40.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(assert (= (ite var2894 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2275 String (toStatementString/-1084413137 var2930)) ; Statement: $r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>() 
(declare-const var1957!2 var2244)
(assert (not (= var1957!2 null-var2244)))
(assert (= (sql/-1715654603 (cast-from-var2244-to-var3777 var1957!2)) var2275)) ; Statement: r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String sql> = $r41 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {associations/-1715654603=([org.hibernate.loader.JoinWalker], java.util.List), cast-from-var2244-to-var3777=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.loader.JoinWalker), var3777_countEntityPersisters/59687463=([java.util.List], int), var2262_generateSuffixes/-780092581=([int], java.lang.String[]), suffixes/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String[]), mergeOuterJoins/519578486=([org.hibernate.loader.JoinWalker, java.util.List], org.hibernate.sql.JoinFragment), var2352-init=([], org.hibernate.sql.Select), getDialect/1142344870=([org.hibernate.loader.JoinWalker], org.hibernate.dialect.Dialect), <init>/-604569825=([org.hibernate.sql.Select, org.hibernate.dialect.Dialect], void), setLockOptions/1535095909=([org.hibernate.sql.Select, org.hibernate.LockOptions], org.hibernate.sql.Select), setSelectClause/398150799=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), persister/-1764368390=([org.hibernate.loader.AbstractEntityJoinWalker], org.hibernate.persister.entity.OuterJoinLoadable), alias/-1764368390=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), var2402_fromTableFragment/-838615174=([org.hibernate.persister.entity.OuterJoinLoadable, java.lang.String], java.lang.String), appendLockHint/-359167972=([org.hibernate.dialect.Dialect, org.hibernate.LockOptions, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var113_fromJoinFragment/-2074841343=([org.hibernate.persister.entity.Joinable, java.lang.String, boolean, boolean], java.lang.String), cast-from-var2402-to-var113=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setFromClause/1818208161=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setWhereClause/1091603732=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), toFromFragmentString/701527262=([org.hibernate.sql.JoinFragment], java.lang.String), toWhereFragmentString/-1276368279=([org.hibernate.sql.JoinFragment], java.lang.String), getWhereFragment/-793714747=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), setOuterJoins/840368943=([org.hibernate.sql.Select, java.lang.String, java.lang.String], org.hibernate.sql.Select), orderBy/1493930030=([org.hibernate.loader.AbstractEntityJoinWalker, java.util.List, java.lang.String], java.lang.String), setOrderByClause/-713655946=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), setGroupByClause/1320948645=([org.hibernate.sql.Select, java.lang.String], org.hibernate.sql.Select), getFactory/1655160242=([org.hibernate.loader.JoinWalker], org.hibernate.engine.spi.SessionFactoryImplementor), var3940_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var2142-to-var3940=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var2356_isCommentsEnabled/348952998=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), toStatementString/-1084413137=([org.hibernate.sql.Select], java.lang.String), sql/-1715654603=([org.hibernate.loader.JoinWalker], java.lang.String)}
; {var2244=org.hibernate.loader.AbstractEntityJoinWalker, var1957=r0, var1312=r8, var1997=null_type, var1409=r23, var1996=r33, var3022=r37, var1580=org.hibernate.LockOptions, var1158=r7, var1474=java.util.List, var3777=org.hibernate.loader.JoinWalker, var2937=$r1, var3927=i0, var3508=$i1, var2262=org.hibernate.loader.BasicLoader, var454=$r2, var2448=$r3, var1497=org.hibernate.sql.JoinFragment, var3016=r4, var2352=org.hibernate.sql.Select, var3160=$r5, var2638=org.hibernate.dialect.Dialect, var1931=$r6, var242=$r9, var1780=$r54, var750=$r22, var2892=$r10, var3698=$r14, var2402=org.hibernate.persister.entity.OuterJoinLoadable, var1476=$r12, var1449=$r11, var3652=$r13, var1099=$r15, var2593=$r19, var2737=$r17, var3090=$r16, var113=org.hibernate.persister.entity.Joinable, var1749=$r18, var861=$r20, var830=$r21, var780=$r24, var1913=$r32, var3547=$r31, var3954=$r25, var2677=$r26, var2325=$r28, var1852=$r27, var2686=$r29, var372=$r30, var2920=$r36, var2308=$r34, var4=$r35, var3542=$r38, var2930=$r53, var2142=org.hibernate.engine.spi.SessionFactoryImplementor, var2745=$r39, var2356=org.hibernate.boot.spi.SessionFactoryOptions, var3940=org.hibernate.SessionFactory, var3552=$r40, var2894=$z0, var2275=$r41}
; {org.hibernate.loader.AbstractEntityJoinWalker=var2244, r0=var1957, r8=var1312, null_type=var1997, r23=var1409, r33=var1996, r37=var3022, org.hibernate.LockOptions=var1580, r7=var1158, java.util.List=var1474, org.hibernate.loader.JoinWalker=var3777, $r1=var2937, i0=var3927, $i1=var3508, org.hibernate.loader.BasicLoader=var2262, $r2=var454, $r3=var2448, org.hibernate.sql.JoinFragment=var1497, r4=var3016, org.hibernate.sql.Select=var2352, $r5=var3160, org.hibernate.dialect.Dialect=var2638, $r6=var1931, $r9=var242, $r54=var1780, $r22=var750, $r10=var2892, $r14=var3698, org.hibernate.persister.entity.OuterJoinLoadable=var2402, $r12=var1476, $r11=var1449, $r13=var3652, $r15=var1099, $r19=var2593, $r17=var2737, $r16=var3090, org.hibernate.persister.entity.Joinable=var113, $r18=var1749, $r20=var861, $r21=var830, $r24=var780, $r32=var1913, $r31=var3547, $r25=var3954, $r26=var2677, $r28=var2325, $r27=var1852, $r29=var2686, $r30=var372, $r36=var2920, $r34=var2308, $r35=var4, $r38=var3542, $r53=var2930, org.hibernate.engine.spi.SessionFactoryImplementor=var2142, $r39=var2745, org.hibernate.boot.spi.SessionFactoryOptions=var2356, org.hibernate.SessionFactory=var3940, $r40=var3552, $z0=var2894, $r41=var2275}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.hibernate.loader.AbstractEntityJoinWalker;	r8 := @parameter0: java.lang.String;	r23 := @parameter1: java.lang.String;	r33 := @parameter2: java.lang.String;	r37 := @parameter3: java.lang.String;	r7 := @parameter4: org.hibernate.LockOptions;	$r1 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations>;	i0 = staticinvoke <org.hibernate.loader.AbstractEntityJoinWalker: int countEntityPersisters(java.util.List)>($r1);	$i1 = i0 + 1;	$r2 = staticinvoke <org.hibernate.loader.BasicLoader: java.lang.String[] generateSuffixes(int)>($i1);	r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String[] suffixes> = $r2;	$r3 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations>;	r4 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.sql.JoinFragment mergeOuterJoins(java.util.List)>($r3);	$r5 = new org.hibernate.sql.Select;	$r6 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>();	specialinvoke $r5.<org.hibernate.sql.Select: void <init>(org.hibernate.dialect.Dialect)>($r6);	$r9 = virtualinvoke $r5.<org.hibernate.sql.Select: org.hibernate.sql.Select setLockOptions(org.hibernate.LockOptions)>(r7);	if r8 != null goto $r54 = r8;	$r54 = r8;	$r22 = virtualinvoke $r9.<org.hibernate.sql.Select: org.hibernate.sql.Select setSelectClause(java.lang.String)>($r54);	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.dialect.Dialect getDialect()>();	$r12 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister>;	$r11 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias>;	$r13 = interfaceinvoke $r12.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromTableFragment(java.lang.String)>($r11);	$r15 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: java.lang.String appendLockHint(org.hibernate.LockOptions,java.lang.String)>(r7, $r13);	$r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.persister.entity.OuterJoinLoadable persister>;	$r16 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String alias>;	$r18 = interfaceinvoke $r17.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String fromJoinFragment(java.lang.String,boolean,boolean)>($r16, 1, 1);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = virtualinvoke $r22.<org.hibernate.sql.Select: org.hibernate.sql.Select setFromClause(java.lang.String)>($r21);	$r32 = virtualinvoke $r24.<org.hibernate.sql.Select: org.hibernate.sql.Select setWhereClause(java.lang.String)>(r23);	$r31 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toFromFragmentString()>();	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke r4.<org.hibernate.sql.JoinFragment: java.lang.String toWhereFragmentString()>();	$r28 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r27 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String getWhereFragment()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r36 = virtualinvoke $r32.<org.hibernate.sql.Select: org.hibernate.sql.Select setOuterJoins(java.lang.String,java.lang.String)>($r31, $r30);	$r34 = r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.util.List associations>;	$r35 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String orderBy(java.util.List,java.lang.String)>($r34, r33);	$r38 = virtualinvoke $r36.<org.hibernate.sql.Select: org.hibernate.sql.Select setOrderByClause(java.lang.String)>($r35);	$r53 = virtualinvoke $r38.<org.hibernate.sql.Select: org.hibernate.sql.Select setGroupByClause(java.lang.String)>(r37);	$r39 = virtualinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r40 = interfaceinvoke $r39.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r40.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCommentsEnabled()>();	if $z0 == 0 goto $r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	$r41 = virtualinvoke $r53.<org.hibernate.sql.Select: java.lang.String toStatementString()>();	r0.<org.hibernate.loader.AbstractEntityJoinWalker: java.lang.String sql> = $r41;	return
;block_num 4