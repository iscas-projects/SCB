(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2765 0)
(declare-sort var2953 0)
(declare-sort var765 0)
(declare-sort var2478 0)
(declare-sort var652 0)
(declare-sort var3258 0)
(declare-sort var3749 0)
(declare-sort var3052 0)
(declare-sort var3619 0)
(declare-sort var1604 0)
(declare-sort var3104 0)
(declare-sort var1452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2953-to-var765 (var2953) var765)
(declare-fun var2478_getPathText/-789293520 (var765) String)
(declare-fun walker/-1287622909 (var2765) var652)
(declare-fun getSessionFactoryHelper/1539398380 (var652) var3258)
(declare-fun findQueryableUsingImports/1434072609 (var3258 String) var3749)
(declare-fun getFactory/592013559 (var3258) var3052)
(declare-fun var1604_getConstantValue/1750319086 (String var3052) var3619)
(declare-fun var3104-init () var3104)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/741104877 (var3104 String) void)
(declare-fun cast-from-var3104-to-var1452 (var3104) var1452)
(declare-const null-var2765 var2765)
(declare-const null-var2953 var2953)
(declare-const null-var3749 var3749)
(declare-const null-var3619 var3619)
(declare-const var428 var2765) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var428 null-var2765)))
(declare-const var2209 var2953) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var2209 null-var2953)))
(define-const var1942 var765 (cast-from-var2953-to-var765 var2209)) ; Statement: $r30 = (antlr.collections.AST) r0 
(define-const var152 String (var2478_getPathText/-789293520 var1942)) ; Statement: r1 = staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: java.lang.String getPathText(antlr.collections.AST)>($r30) 
(define-const var1024 var652 (walker/-1287622909 var428)) ; Statement: $r3 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert true)
(define-const var3371 var3258 (getSessionFactoryHelper/1539398380 var1024)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var2935 var3749 (findQueryableUsingImports/1434072609 var3371 var152)) ; Statement: r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.persister.entity.Queryable findQueryableUsingImports(java.lang.String)>(r1) 
 ; Statement: if r5 == null goto $r6 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert (= var2935 null-var3749)) ; Cond: r5 == null 
(define-const var1400 var652 (walker/-1287622909 var428)) ; Statement: $r6 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert true)
(define-const var182 var3258 (getSessionFactoryHelper/1539398380 var1400)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var2271 var3052 (getFactory/592013559 var182)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3768 var3619 (var1604_getConstantValue/1750319086 var152 var2271)) ; Statement: r25 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Object getConstantValue(java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r8) 
 ; Statement: if r25 != null goto specialinvoke r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: void setConstantValue(org.hibernate.hql.internal.ast.tree.DotNode,java.lang.String,java.lang.Object)>(r0, r1, r25) 
(assert (not (not (= var3768 null-var3619)))) ; Negate: Cond: r25 != null  
(define-const var632 var3104 var3104-init) ; Statement: $r29 = new org.hibernate.hql.internal.ast.InvalidPathException 
(define-const var729 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var729)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var729!1 String)
(assert (= var729!1 ""))
(assert true)
(define-const var2942 String (append/672562846 var729!1 "Invalid path: \u0027")) ; Statement: $r11 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid path: \'") 
(declare-const var729!2 String)
(assert (= var729!2 (str.++ var729!1 "Invalid path: \u0027")))
(assert true)
(define-const var3539 String (append/672562846 var2942 var152)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2942!1 String)
(assert (= var2942!1 (str.++ var2942 var152)))
(assert true)
(define-const var2226 String (append/672562846 var3539 "\u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3539!1 String)
(assert (= var3539!1 (str.++ var3539 "\u0027")))
(assert true)
(define-const var3757 String (toString/-2075883882 var2226)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/741104877 var632 var3757)) ; Statement: specialinvoke $r29.<org.hibernate.hql.internal.ast.InvalidPathException: void <init>(java.lang.String)>($r14) 

(declare-const var632!1 var3104)
(declare-const var3757!1 String)
(define-const var576 var1452 (cast-from-var3104-to-var1452 var632!1)) ; Statement: $r32 = (java.lang.Throwable) $r29 
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2953-to-var765=([org.hibernate.hql.internal.ast.tree.DotNode], antlr.collections.AST), var2478_getPathText/-789293520=([antlr.collections.AST], java.lang.String), walker/-1287622909=([org.hibernate.hql.internal.ast.util.LiteralProcessor], org.hibernate.hql.internal.ast.HqlSqlWalker), getSessionFactoryHelper/1539398380=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), findQueryableUsingImports/1434072609=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], org.hibernate.persister.entity.Queryable), getFactory/592013559=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper], org.hibernate.engine.spi.SessionFactoryImplementor), var1604_getConstantValue/1750319086=([java.lang.String, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.Object), var3104-init=([], org.hibernate.hql.internal.ast.InvalidPathException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/741104877=([org.hibernate.hql.internal.ast.InvalidPathException, java.lang.String], void), cast-from-var3104-to-var1452=([org.hibernate.hql.internal.ast.InvalidPathException], java.lang.Throwable)}
; {var2765=org.hibernate.hql.internal.ast.util.LiteralProcessor, var428=r2, var2953=org.hibernate.hql.internal.ast.tree.DotNode, var2209=r0, var765=antlr.collections.AST, var1942=$r30, var2478=org.hibernate.hql.internal.ast.util.ASTUtil, var152=r1, var652=org.hibernate.hql.internal.ast.HqlSqlWalker, var1024=$r3, var3258=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var3371=$r4, var3749=org.hibernate.persister.entity.Queryable, var2935=r5, var1400=$r6, var182=$r7, var3052=org.hibernate.engine.spi.SessionFactoryImplementor, var2271=$r8, var3619=java.lang.Object, var1604=org.hibernate.internal.util.ReflectHelper, var3768=r25, var3104=org.hibernate.hql.internal.ast.InvalidPathException, var632=$r29, var729=$r28, var2942=$r11, var3539=$r12, var2226=$r13, var3757=$r14, var1452=java.lang.Throwable, var576=$r32}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var2765, r2=var428, org.hibernate.hql.internal.ast.tree.DotNode=var2953, r0=var2209, antlr.collections.AST=var765, $r30=var1942, org.hibernate.hql.internal.ast.util.ASTUtil=var2478, r1=var152, org.hibernate.hql.internal.ast.HqlSqlWalker=var652, $r3=var1024, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var3258, $r4=var3371, org.hibernate.persister.entity.Queryable=var3749, r5=var2935, $r6=var1400, $r7=var182, org.hibernate.engine.spi.SessionFactoryImplementor=var3052, $r8=var2271, java.lang.Object=var3619, org.hibernate.internal.util.ReflectHelper=var1604, r25=var3768, org.hibernate.hql.internal.ast.InvalidPathException=var3104, $r29=var632, $r28=var729, $r11=var2942, $r12=var3539, $r13=var2226, $r14=var3757, java.lang.Throwable=var1452, $r32=var576}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r0 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode;	$r30 = (antlr.collections.AST) r0;	r1 = staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: java.lang.String getPathText(antlr.collections.AST)>($r30);	$r3 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	$r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.persister.entity.Queryable findQueryableUsingImports(java.lang.String)>(r1);	if r5 == null goto $r6 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	$r6 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	$r7 = virtualinvoke $r6.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r8 = virtualinvoke $r7.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r25 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Object getConstantValue(java.lang.String,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r8);	if r25 != null goto specialinvoke r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: void setConstantValue(org.hibernate.hql.internal.ast.tree.DotNode,java.lang.String,java.lang.Object)>(r0, r1, r25);	$r29 = new org.hibernate.hql.internal.ast.InvalidPathException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid path: \'");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.hql.internal.ast.InvalidPathException: void <init>(java.lang.String)>($r14);	$r32 = (java.lang.Throwable) $r29;	throw $r32
;block_num 3