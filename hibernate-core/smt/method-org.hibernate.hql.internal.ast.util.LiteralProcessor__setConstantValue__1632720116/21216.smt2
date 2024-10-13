(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2491 0)
(declare-sort var1020 0)
(declare-sort var2131 0)
(declare-sort var3220 0)
(declare-sort var1879 0)
(declare-sort var2221 0)
(declare-sort var3089 0)
(declare-sort var1394 0)
(declare-sort var3996 0)
(declare-sort var288 0)
(declare-sort var276 0)
(declare-sort var1384 0)
(declare-sort var2642 0)
(declare-sort var223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1879_isDebugEnabled/1662963326 (var1879) Bool)
(declare-fun setFirstChild/2048023415 (var2221 var3089) void)
(declare-fun cast-from-var1020-to-var2221 (var1020) var2221)
(declare-fun setType/460752076 (var2221 Int) void)
(declare-fun walker/-1287622909 (var2491) var1394)
(declare-fun getSessionFactoryHelper/1539398380 (var1394) var3996)
(declare-fun getFactory/592013559 (var3996) var288)
(declare-fun var288_getTypeResolver/-73977883 (var288) var276)
(declare-fun getClass/1258963082 (var3220) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun heuristicType/653904078 (var276 String) var1384)
(declare-fun var2642-init () var2642)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getText/-2049517291 (var2221) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2642 String) void)
(declare-fun cast-from-var2642-to-var223 (var2642) var223)
(declare-const null-var2491 var2491)
(declare-const null-var1020 var1020)
(declare-const null-String String)
(declare-const null-var3220 var3220)
(declare-const var2491-LOG var1879)
(declare-const null-NullType var2131)
(declare-const null-var3089 var3089)
(declare-const null-var1384 var1384)
(declare-const var1366 var2491) ; Statement: r3 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var1366 null-var2491)))
(declare-const var979 var1020) ; Statement: r1 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var979 null-var1020)))
(declare-const var3646 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3646 null-String)))
(declare-const var3091 var3220) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var3091 null-var3220)))
(define-const var958 var1879 var2491-LOG) ; Statement: $r0 = <org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var2124 Bool (var1879_isDebugEnabled/1662963326 var958)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null) 
(assert (= (ite var2124 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (setFirstChild/2048023415 (cast-from-var1020-to-var2221 var979) null-var3089)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null) 

(declare-const var979!1 var1020)
(declare-const var2636 var2131)
(define-const var591 Bool false) ; Statement: $z1 = r2 instanceof java.lang.String 
 ; Statement: if $z1 == 0 goto $z2 = r2 instanceof java.lang.Character 
(assert (not (= (ite var591 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (setType/460752076 (cast-from-var1020-to-var2221 var979!1) 130)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setType(int)>(130) 

(declare-const var979!2 var1020)
(declare-const var3557 Int)
 ; Statement: goto [?= $r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>] 
(assert true) ; Non Conditional
(define-const var2776 var1394 (walker/-1287622909 var1366)) ; Statement: $r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert true)
(define-const var2985 var3996 (getSessionFactoryHelper/1539398380 var2776)) ; Statement: $r27 = virtualinvoke $r26.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var293 var288 (getFactory/592013559 var2985)) ; Statement: $r28 = virtualinvoke $r27.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2214 var276 (var288_getTypeResolver/-73977883 var293)) ; Statement: $r29 = interfaceinvoke $r28.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>() 
(assert true)
(define-const var2349 ClassObject (getClass/1258963082 var3091)) ; Statement: $r30 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2578 String (getName/-1958580599 var2349)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3946 var1384 (heuristicType/653904078 var2214 var2578)) ; Statement: $r32 = virtualinvoke $r29.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r31) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r32 != null goto r33 = (org.hibernate.type.LiteralType) $r32 
(assert (not (not (= var3946 null-var1384)))) ; Negate: Cond: $r32 != null  
(define-const var3090 var2642 var2642-init) ; Statement: $r35 = new org.hibernate.QueryException 
(define-const var2384 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2384)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2384!1 String)
(assert (= var2384!1 ""))
(assert true)
(define-const var3533 String (append/672562846 var2384!1 "Could not determine type of: ")) ; Statement: $r13 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine type of: ") 
(declare-const var2384!2 String)
(assert (= var2384!2 (str.++ var2384!1 "Could not determine type of: ")))
(assert true)
(define-const var3895 String (getText/-2049517291 (cast-from-var1020-to-var2221 var979!2))) ; Statement: $r12 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>() 
(assert true)
(define-const var3227 String (append/672562846 var3533 var3895)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3533!1 String)
(assert (= var3533!1 (str.++ var3533 var3895)))
(assert true)
(define-const var373 String (toString/-2075883882 var3227)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var3090 var373)) ; Statement: specialinvoke $r35.<org.hibernate.QueryException: void <init>(java.lang.String)>($r15) 

(declare-const var3090!1 var2642)
(declare-const var373!1 String)
(define-const var457 var223 (cast-from-var2642-to-var223 var3090!1)) ; Statement: $r38 = (java.lang.Throwable) $r35 
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {var1879_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), setFirstChild/2048023415=([antlr.CommonAST, antlr.collections.AST], void), cast-from-var1020-to-var2221=([org.hibernate.hql.internal.ast.tree.DotNode], antlr.CommonAST), setType/460752076=([antlr.CommonAST, int], void), walker/-1287622909=([org.hibernate.hql.internal.ast.util.LiteralProcessor], org.hibernate.hql.internal.ast.HqlSqlWalker), getSessionFactoryHelper/1539398380=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), getFactory/592013559=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper], org.hibernate.engine.spi.SessionFactoryImplementor), var288_getTypeResolver/-73977883=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.type.TypeResolver), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), heuristicType/653904078=([org.hibernate.type.TypeResolver, java.lang.String], org.hibernate.type.Type), var2642-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getText/-2049517291=([antlr.CommonAST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2642-to-var223=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2491=org.hibernate.hql.internal.ast.util.LiteralProcessor, var1366=r3, var1020=org.hibernate.hql.internal.ast.tree.DotNode, var979=r1, var3646=r9, var2131=null_type, var3220=java.lang.Object, var3091=r2, var1879=org.hibernate.internal.CoreMessageLogger, var958=$r0, var2124=$z0, var2221=antlr.CommonAST, var3089=antlr.collections.AST, var2636=null, var591=$z1, var3557=130, var1394=org.hibernate.hql.internal.ast.HqlSqlWalker, var2776=$r26, var3996=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var2985=$r27, var288=org.hibernate.engine.spi.SessionFactoryImplementor, var293=$r28, var276=org.hibernate.type.TypeResolver, var2214=$r29, var2349=$r30, var2578=$r31, var1384=org.hibernate.type.Type, var3946=$r32, var2642=org.hibernate.QueryException, var3090=$r35, var2384=$r34, var3533=$r13, var3895=$r12, var3227=$r14, var373=$r15, var223=java.lang.Throwable, var457=$r38}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var2491, r3=var1366, org.hibernate.hql.internal.ast.tree.DotNode=var1020, r1=var979, r9=var3646, null_type=var2131, java.lang.Object=var3220, r2=var3091, org.hibernate.internal.CoreMessageLogger=var1879, $r0=var958, $z0=var2124, antlr.CommonAST=var2221, antlr.collections.AST=var3089, null=var2636, $z1=var591, 130=var3557, org.hibernate.hql.internal.ast.HqlSqlWalker=var1394, $r26=var2776, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var3996, $r27=var2985, org.hibernate.engine.spi.SessionFactoryImplementor=var288, $r28=var293, org.hibernate.type.TypeResolver=var276, $r29=var2214, $r30=var2349, $r31=var2578, org.hibernate.type.Type=var1384, $r32=var3946, org.hibernate.QueryException=var2642, $r35=var3090, $r34=var2384, $r13=var3533, $r12=var3895, $r14=var3227, $r15=var373, java.lang.Throwable=var223, $r38=var457}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r1 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode;	r9 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.Object;	$r0 = <org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null);	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setFirstChild(antlr.collections.AST)>(null);	$z1 = r2 instanceof java.lang.String;	if $z1 == 0 goto $z2 = r2 instanceof java.lang.Character;	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: void setType(int)>(130);	goto [?= $r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>];	$r26 = r3.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	$r27 = virtualinvoke $r26.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r28 = virtualinvoke $r27.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r29 = interfaceinvoke $r28.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>();	$r30 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r31 = virtualinvoke $r30.<java.lang.Class: java.lang.String getName()>();	$r32 = virtualinvoke $r29.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r31);	goto [?= (branch)];	if $r32 != null goto r33 = (org.hibernate.type.LiteralType) $r32;	$r35 = new org.hibernate.QueryException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine type of: ");	$r12 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String getText()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r35.<org.hibernate.QueryException: void <init>(java.lang.String)>($r15);	$r38 = (java.lang.Throwable) $r35;	throw $r38
;block_num 6