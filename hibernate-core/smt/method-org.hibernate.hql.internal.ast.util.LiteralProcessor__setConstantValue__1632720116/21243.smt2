(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2210 0)
(declare-sort var3191 0)
(declare-sort var1576 0)
(declare-sort var1656 0)
(declare-sort var3918 0)
(declare-sort var1345 0)
(declare-sort var851 0)
(declare-sort var641 0)
(declare-sort var2895 0)
(declare-sort var2167 0)
(declare-sort var1448 0)
(declare-sort var3176 0)
(declare-sort var1194 0)
(declare-sort var1509 0)
(declare-sort var1029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3918_isDebugEnabled/1662963326 (var3918) Bool)
(declare-fun setFirstChild/2048023415 (var1345 var851) void)
(declare-fun cast-from-var3191-to-var1345 (var3191) var1345)
(declare-fun setType/460752076 (var1345 Int) void)
(declare-fun walker/-1287622909 (var2210) var641)
(declare-fun getSessionFactoryHelper/1539398380 (var641) var2895)
(declare-fun getFactory/592013559 (var2895) var2167)
(declare-fun var2167_getTypeResolver/-73977883 (var2167) var1448)
(declare-fun getClass/1258963082 (var1656) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun heuristicType/653904078 (var1448 String) var3176)
(declare-fun var1509-init () var1509)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getText/-2049517291 (var1345) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1292940450 (var1509 String var1194) void)
(declare-fun cast-from-var1509-to-var1029 (var1509) var1029)
(declare-const null-var2210 var2210)
(declare-const null-var3191 var3191)
(declare-const null-String String)
(declare-const null-var1656 var1656)
(declare-const var2210-LOG var3918)
(declare-const null-NullType var1576)
(declare-const null-var851 var851)
(declare-const null-var3176 var3176)
(declare-const null-var1194 var1194)
(declare-const var2524 var2210) ; Statement: r3 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var2524 null-var2210)))
(declare-const var953 var3191) ; Statement: r1 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var953 null-var3191)))
(declare-const var2501 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var2501 null-String)))
(declare-const var3757 var1656) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var3757 null-var1656)))
(define-const var3425 var3918 var2210-LOG) ; Statement: $r0 = <org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var36 Bool (var3918_isDebugEnabled/1662963326 var3425)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null) 
(assert (= (ite var36 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (setFirstChild/2048023415 (cast-from-var3191-to-var1345 var953) null-var851)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null) 

(declare-const var953!1 var3191)
(declare-const var3060 var1576)
(define-const var2074 Bool false) ; Statement: $z1 = r2 instanceof java.lang.String 
 ; Statement: if $z1 == 0 goto $z2 = r2 instanceof java.lang.Character 
(assert (not (= (ite var2074 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (setType/460752076 (cast-from-var3191-to-var1345 var953!1) 130)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setType(int)>(130) 

(declare-const var953!2 var3191)
(declare-const var2009 Int)
 ; Statement: goto [?= $r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>] 
(assert true) ; Non Conditional
(define-const var1936 var641 (walker/-1287622909 var2524)) ; Statement: $r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert true)
(define-const var3574 var2895 (getSessionFactoryHelper/1539398380 var1936)) ; Statement: $r27 = virtualinvoke $r26.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var579 var2167 (getFactory/592013559 var3574)) ; Statement: $r28 = virtualinvoke $r27.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var735 var1448 (var2167_getTypeResolver/-73977883 var579)) ; Statement: $r29 = interfaceinvoke $r28.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>() 
(assert true)
(define-const var3581 ClassObject (getClass/1258963082 var3757)) ; Statement: $r30 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var593 String (getName/-1958580599 var3581)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3946 var3176 (heuristicType/653904078 var735 var593)) ; Statement: $r32 = virtualinvoke $r29.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r31) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r32 != null goto r33 = (org.hibernate.type.LiteralType) $r32 
(assert (not (not (= var3946 null-var3176)))) ; Negate: Cond: $r32 != null  
(declare-const var101 var1194) ; Statement: $r19 := @caughtexception 
(assert (not (= var101 null-var1194)))
(define-const var864 var1509 var1509-init) ; Statement: $r37 = new org.hibernate.QueryException 
(define-const var2673 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2673)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2673!1 String)
(assert (= var2673!1 ""))
(assert true)
(define-const var3880 String (append/672562846 var2673!1 "Could not format constant value to SQL literal: ")) ; Statement: $r23 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not format constant value to SQL literal: ") 
(declare-const var2673!2 String)
(assert (= var2673!2 (str.++ var2673!1 "Could not format constant value to SQL literal: ")))
(assert true)
(define-const var378 String (getText/-2049517291 (cast-from-var3191-to-var1345 var953!2))) ; Statement: $r22 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>() 
(assert true)
(define-const var3667 String (append/672562846 var3880 var378)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3880!1 String)
(assert (= var3880!1 (str.++ var3880 var378)))
(assert true)
(define-const var1789 String (toString/-2075883882 var3667)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1292940450 var864 var1789 var101)) ; Statement: specialinvoke $r37.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r25, $r19) 

(declare-const var864!1 var1509)
(declare-const var1789!1 String)
(declare-const var101!1 var1194)
(define-const var370 var1029 (cast-from-var1509-to-var1029 var864!1)) ; Statement: $r39 = (java.lang.Throwable) $r37 
 ; Statement: throw $r39 
(check-sat)
(get-model)
(get-unsat-core)
; {var3918_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), setFirstChild/2048023415=([antlr.CommonAST, antlr.collections.AST], void), cast-from-var3191-to-var1345=([org.hibernate.hql.internal.ast.tree.DotNode], antlr.CommonAST), setType/460752076=([antlr.CommonAST, int], void), walker/-1287622909=([org.hibernate.hql.internal.ast.util.LiteralProcessor], org.hibernate.hql.internal.ast.HqlSqlWalker), getSessionFactoryHelper/1539398380=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), getFactory/592013559=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper], org.hibernate.engine.spi.SessionFactoryImplementor), var2167_getTypeResolver/-73977883=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.type.TypeResolver), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), heuristicType/653904078=([org.hibernate.type.TypeResolver, java.lang.String], org.hibernate.type.Type), var1509-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getText/-2049517291=([antlr.CommonAST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1292940450=([org.hibernate.QueryException, java.lang.String, java.lang.Exception], void), cast-from-var1509-to-var1029=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2210=org.hibernate.hql.internal.ast.util.LiteralProcessor, var2524=r3, var3191=org.hibernate.hql.internal.ast.tree.DotNode, var953=r1, var2501=r9, var1576=null_type, var1656=java.lang.Object, var3757=r2, var3918=org.hibernate.internal.CoreMessageLogger, var3425=$r0, var36=$z0, var1345=antlr.CommonAST, var851=antlr.collections.AST, var3060=null, var2074=$z1, var2009=130, var641=org.hibernate.hql.internal.ast.HqlSqlWalker, var1936=$r26, var2895=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var3574=$r27, var2167=org.hibernate.engine.spi.SessionFactoryImplementor, var579=$r28, var1448=org.hibernate.type.TypeResolver, var735=$r29, var3581=$r30, var593=$r31, var3176=org.hibernate.type.Type, var3946=$r32, var1194=java.lang.Exception, var101=$r19, var1509=org.hibernate.QueryException, var864=$r37, var2673=$r36, var3880=$r23, var378=$r22, var3667=$r24, var1789=$r25, var1029=java.lang.Throwable, var370=$r39}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var2210, r3=var2524, org.hibernate.hql.internal.ast.tree.DotNode=var3191, r1=var953, r9=var2501, null_type=var1576, java.lang.Object=var1656, r2=var3757, org.hibernate.internal.CoreMessageLogger=var3918, $r0=var3425, $z0=var36, antlr.CommonAST=var1345, antlr.collections.AST=var851, null=var3060, $z1=var2074, 130=var2009, org.hibernate.hql.internal.ast.HqlSqlWalker=var641, $r26=var1936, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var2895, $r27=var3574, org.hibernate.engine.spi.SessionFactoryImplementor=var2167, $r28=var579, org.hibernate.type.TypeResolver=var1448, $r29=var735, $r30=var3581, $r31=var593, org.hibernate.type.Type=var3176, $r32=var3946, java.lang.Exception=var1194, $r19=var101, org.hibernate.QueryException=var1509, $r37=var864, $r36=var2673, $r23=var3880, $r22=var378, $r24=var3667, $r25=var1789, java.lang.Throwable=var1029, $r39=var370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r1 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode;	r9 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object;	$r0 = <org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null);	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null);	$z1 = r2 instanceof java.lang.String;	if $z1 == 0 goto $z2 = r2 instanceof java.lang.Character;	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setType(int)>(130);	goto [?= $r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>];	$r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	$r27 = virtualinvoke $r26.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r28 = virtualinvoke $r27.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r29 = interfaceinvoke $r28.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>();	$r30 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>();	$r32 = virtualinvoke $r29.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r31);	goto [?= (branch)];	if $r32 != null goto r33 = (org.hibernate.type.LiteralType) $r32;	$r19 := @caughtexception;	$r37 = new org.hibernate.QueryException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not format constant value to SQL literal: ");	$r22 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r25, $r19);	$r39 = (java.lang.Throwable) $r37;	throw $r39
;block_num 6