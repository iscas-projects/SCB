(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2244 0)
(declare-sort var1416 0)
(declare-sort var3242 0)
(declare-sort var2958 0)
(declare-sort var1039 0)
(declare-sort var1786 0)
(declare-sort var3617 0)
(declare-sort var3365 0)
(declare-sort var310 0)
(declare-sort var2827 0)
(declare-sort var139 0)
(declare-sort var3213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1416-to-var3242 (var1416) var3242)
(declare-fun var2958_getPathText/-789293520 (var3242) String)
(declare-fun walker/-1287622909 (var2244) var1039)
(declare-fun getSessionFactoryHelper/1539398380 (var1039) var1786)
(declare-fun findQueryableUsingImports/1434072609 (var1786 String) var3617)
(declare-fun var3617_getDiscriminatorSQLValue/472387717 (var3617) String)
(declare-fun var310_getDiscriminatorType/-567488957 (var310) var3365)
(declare-fun cast-from-var3617-to-var310 (var3617) var310)
(declare-fun setDataType/1309380741 (var2827 var3365) void)
(declare-fun cast-from-var1416-to-var2827 (var1416) var2827)
(declare-fun var139-init () var139)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/741104877 (var139 String) void)
(declare-fun cast-from-var139-to-var3213 (var139) var3213)
(declare-const null-var2244 var2244)
(declare-const null-var1416 var1416)
(declare-const null-var3617 var3617)
(declare-const var839 var2244) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var839 null-var2244)))
(declare-const var386 var1416) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var386 null-var1416)))
(define-const var798 var3242 (cast-from-var1416-to-var3242 var386)) ; Statement: $r30 = (antlr.collections.AST) r0 
(define-const var3819 String (var2958_getPathText/-789293520 var798)) ; Statement: r1 = staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: java.lang.String getPathText(antlr.collections.AST)>($r30) 
(define-const var3194 var1039 (walker/-1287622909 var839)) ; Statement: $r3 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert true)
(define-const var3405 var1786 (getSessionFactoryHelper/1539398380 var3194)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var2232 var3617 (findQueryableUsingImports/1434072609 var3405 var3819)) ; Statement: r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.persister.entity.Queryable findQueryableUsingImports(java.lang.String)>(r1) 
 ; Statement: if r5 == null goto $r6 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker> 
(assert (not (= var2232 null-var3617))) ; Negate: Cond: r5 == null  
(define-const var2421 String (var3617_getDiscriminatorSQLValue/472387717 var2232)) ; Statement: r24 = interfaceinvoke r5.<org.hibernate.persister.entity.Queryable: java.lang.String getDiscriminatorSQLValue()>() 
(define-const var725 var3365 (var310_getDiscriminatorType/-567488957 (cast-from-var3617-to-var310 var2232))) ; Statement: $r15 = interfaceinvoke r5.<org.hibernate.persister.entity.Queryable: org.hibernate.type.Type getDiscriminatorType()>() 
(assert true)
;(assert (setDataType/1309380741 (cast-from-var1416-to-var2827 var386) var725)) ; Statement: virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: void setDataType(org.hibernate.type.Type)>($r15) 

(declare-const var386!1 var1416)
(declare-const var725!1 var3365)
(define-const var458 String "null") ; Statement: $r16 = "null" 
(assert true)
(define-const var300 Bool (= var458 var2421)) ; Statement: $z0 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>(r24) 
 ; Statement: if $z0 != 0 goto $r27 = new org.hibernate.hql.internal.ast.InvalidPathException 
(assert (not (= (ite var300 1 0) 0))) ; Cond: $z0 != 0 
(define-const var928 var139 var139-init) ; Statement: $r27 = new org.hibernate.hql.internal.ast.InvalidPathException 
(define-const var2086 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2086)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2086!1 String)
(assert (= var2086!1 ""))
(assert true)
(define-const var3931 String (append/672562846 var2086!1 "subclass test not allowed for null or not null discriminator: \u0027")) ; Statement: $r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("subclass test not allowed for null or not null discriminator: \'") 
(declare-const var2086!2 String)
(assert (= var2086!2 (str.++ var2086!1 "subclass test not allowed for null or not null discriminator: \u0027")))
(assert true)
(define-const var2480 String (append/672562846 var3931 var3819)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3931!1 String)
(assert (= var3931!1 (str.++ var3931 var3819)))
(assert true)
(define-const var2437 String (append/672562846 var2480 "\u0027")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2480!1 String)
(assert (= var2480!1 (str.++ var2480 "\u0027")))
(assert true)
(define-const var3416 String (toString/-2075883882 var2437)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/741104877 var928 var3416)) ; Statement: specialinvoke $r27.<org.hibernate.hql.internal.ast.InvalidPathException: void <init>(java.lang.String)>($r22) 

(declare-const var928!1 var139)
(declare-const var3416!1 String)
(define-const var2254 var3213 (cast-from-var139-to-var3213 var928!1)) ; Statement: $r31 = (java.lang.Throwable) $r27 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1416-to-var3242=([org.hibernate.hql.internal.ast.tree.DotNode], antlr.collections.AST), var2958_getPathText/-789293520=([antlr.collections.AST], java.lang.String), walker/-1287622909=([org.hibernate.hql.internal.ast.util.LiteralProcessor], org.hibernate.hql.internal.ast.HqlSqlWalker), getSessionFactoryHelper/1539398380=([org.hibernate.hql.internal.ast.HqlSqlWalker], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), findQueryableUsingImports/1434072609=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], org.hibernate.persister.entity.Queryable), var3617_getDiscriminatorSQLValue/472387717=([org.hibernate.persister.entity.Queryable], java.lang.String), var310_getDiscriminatorType/-567488957=([org.hibernate.persister.entity.Loadable], org.hibernate.type.Type), cast-from-var3617-to-var310=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.Loadable), setDataType/1309380741=([org.hibernate.hql.internal.ast.tree.SqlNode, org.hibernate.type.Type], void), cast-from-var1416-to-var2827=([org.hibernate.hql.internal.ast.tree.DotNode], org.hibernate.hql.internal.ast.tree.SqlNode), var139-init=([], org.hibernate.hql.internal.ast.InvalidPathException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/741104877=([org.hibernate.hql.internal.ast.InvalidPathException, java.lang.String], void), cast-from-var139-to-var3213=([org.hibernate.hql.internal.ast.InvalidPathException], java.lang.Throwable)}
; {var2244=org.hibernate.hql.internal.ast.util.LiteralProcessor, var839=r2, var1416=org.hibernate.hql.internal.ast.tree.DotNode, var386=r0, var3242=antlr.collections.AST, var798=$r30, var2958=org.hibernate.hql.internal.ast.util.ASTUtil, var3819=r1, var1039=org.hibernate.hql.internal.ast.HqlSqlWalker, var3194=$r3, var1786=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var3405=$r4, var3617=org.hibernate.persister.entity.Queryable, var2232=r5, var2421=r24, var3365=org.hibernate.type.Type, var310=org.hibernate.persister.entity.Loadable, var725=$r15, var2827=org.hibernate.hql.internal.ast.tree.SqlNode, var458=$r16, var300=$z0, var139=org.hibernate.hql.internal.ast.InvalidPathException, var928=$r27, var2086=$r26, var3931=$r19, var2480=$r20, var2437=$r21, var3416=$r22, var3213=java.lang.Throwable, var2254=$r31}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var2244, r2=var839, org.hibernate.hql.internal.ast.tree.DotNode=var1416, r0=var386, antlr.collections.AST=var3242, $r30=var798, org.hibernate.hql.internal.ast.util.ASTUtil=var2958, r1=var3819, org.hibernate.hql.internal.ast.HqlSqlWalker=var1039, $r3=var3194, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var1786, $r4=var3405, org.hibernate.persister.entity.Queryable=var3617, r5=var2232, r24=var2421, org.hibernate.type.Type=var3365, org.hibernate.persister.entity.Loadable=var310, $r15=var725, org.hibernate.hql.internal.ast.tree.SqlNode=var2827, $r16=var458, $z0=var300, org.hibernate.hql.internal.ast.InvalidPathException=var139, $r27=var928, $r26=var2086, $r19=var3931, $r20=var2480, $r21=var2437, $r22=var3416, java.lang.Throwable=var3213, $r31=var2254}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r0 := @parameter0: org.hibernate.hql.internal.ast.tree.DotNode;	$r30 = (antlr.collections.AST) r0;	r1 = staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: java.lang.String getPathText(antlr.collections.AST)>($r30);	$r3 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	$r4 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.HqlSqlWalker: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.persister.entity.Queryable findQueryableUsingImports(java.lang.String)>(r1);	if r5 == null goto $r6 = r2.<org.hibernate.hql.internal.ast.util.LiteralProcessor: org.hibernate.hql.internal.ast.HqlSqlWalker walker>;	r24 = interfaceinvoke r5.<org.hibernate.persister.entity.Queryable: java.lang.String getDiscriminatorSQLValue()>();	$r15 = interfaceinvoke r5.<org.hibernate.persister.entity.Queryable: org.hibernate.type.Type getDiscriminatorType()>();	virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.DotNode: void setDataType(org.hibernate.type.Type)>($r15);	$r16 = "null";	$z0 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>(r24);	if $z0 != 0 goto $r27 = new org.hibernate.hql.internal.ast.InvalidPathException;	$r27 = new org.hibernate.hql.internal.ast.InvalidPathException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("subclass test not allowed for null or not null discriminator: \'");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.hibernate.hql.internal.ast.InvalidPathException: void <init>(java.lang.String)>($r22);	$r31 = (java.lang.Throwable) $r27;	throw $r31
;block_num 3