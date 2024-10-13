(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2112 0)
(declare-sort var2567 0)
(declare-sort var137 0)
(declare-sort var1056 0)
(declare-sort var1113 0)
(declare-sort var3907 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2112-to-var2567 (var2112) var2567)
(declare-fun initializeMethodNode/52655559 (var137 var2567 Bool) void)
(declare-fun cast-from-var2112-to-var137 (var2112) var137)
(declare-fun isCollectionPropertyMethod/-1799155650 (var137) Bool)
(declare-fun var1056-init () var1056)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getText/-2049517291 (var1113) String)
(declare-fun cast-from-var2112-to-var1113 (var2112) var1113)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var1056 String) void)
(declare-fun cast-from-var1056-to-var3907 (var1056) var3907)
(declare-const null-var2112 var2112)
(declare-const null-Bool Bool)
(declare-const var3336 var2112) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.CollectionFunction 
(assert (not (= var3336 null-var2112)))
(declare-const var508 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var508 null-Bool)))
(define-const var1668 var2567 (cast-from-var2112-to-var2567 var3336)) ; Statement: $r18 = (antlr.collections.AST) r0 
(assert true)
;(assert (initializeMethodNode/52655559 (cast-from-var2112-to-var137 var3336) var1668 var508)) ; Statement: virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: void initializeMethodNode(antlr.collections.AST,boolean)>($r18, z0) 

(declare-const var3336!1 var2112)
(declare-const var1668!1 var2567)
(declare-const var508!1 Bool)
(assert true)
(define-const var3696 Bool (isCollectionPropertyMethod/-1799155650 (cast-from-var2112-to-var137 var3336!1))) ; Statement: $z1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: boolean isCollectionPropertyMethod()>() 
 ; Statement: if $z1 != 0 goto r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: antlr.collections.AST getFirstChild()>() 
(assert (not (not (= (ite var3696 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3851 var1056 var1056-init) ; Statement: $r15 = new antlr.SemanticException 
(define-const var610 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var610)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var610!1 String)
(assert (= var610!1 ""))
(assert true)
(define-const var737 String (getText/-2049517291 (cast-from-var2112-to-var1113 var3336!1))) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: java.lang.String getText()>() 
(assert true)
(define-const var2188 String (append/672562846 var610!1 var737)) ; Statement: $r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var610!2 String)
(assert (= var610!2 (str.++ var610!1 var737)))
(assert true)
(define-const var3764 String (append/672562846 var2188 " is not a collection property name!")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a collection property name!") 
(declare-const var2188!1 String)
(assert (= var2188!1 (str.++ var2188 " is not a collection property name!")))
(assert true)
(define-const var278 String (toString/-2075883882 var3764)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var3851 var278)) ; Statement: specialinvoke $r15.<antlr.SemanticException: void <init>(java.lang.String)>($r13) 

(declare-const var3851!1 var1056)
(declare-const var278!1 String)
(define-const var1832 var3907 (cast-from-var1056-to-var3907 var3851!1)) ; Statement: $r19 = (java.lang.Throwable) $r15 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2112-to-var2567=([org.hibernate.hql.internal.ast.tree.CollectionFunction], antlr.collections.AST), initializeMethodNode/52655559=([org.hibernate.hql.internal.ast.tree.MethodNode, antlr.collections.AST, boolean], void), cast-from-var2112-to-var137=([org.hibernate.hql.internal.ast.tree.CollectionFunction], org.hibernate.hql.internal.ast.tree.MethodNode), isCollectionPropertyMethod/-1799155650=([org.hibernate.hql.internal.ast.tree.MethodNode], boolean), var1056-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getText/-2049517291=([antlr.CommonAST], java.lang.String), cast-from-var2112-to-var1113=([org.hibernate.hql.internal.ast.tree.CollectionFunction], antlr.CommonAST), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void), cast-from-var1056-to-var3907=([antlr.SemanticException], java.lang.Throwable)}
; {var2112=org.hibernate.hql.internal.ast.tree.CollectionFunction, var3336=r0, var508=z0, var2567=antlr.collections.AST, var1668=$r18, var137=org.hibernate.hql.internal.ast.tree.MethodNode, var3696=$z1, var1056=antlr.SemanticException, var3851=$r15, var610=$r14, var1113=antlr.CommonAST, var737=$r10, var2188=$r11, var3764=$r12, var278=$r13, var3907=java.lang.Throwable, var1832=$r19}
; {org.hibernate.hql.internal.ast.tree.CollectionFunction=var2112, r0=var3336, z0=var508, antlr.collections.AST=var2567, $r18=var1668, org.hibernate.hql.internal.ast.tree.MethodNode=var137, $z1=var3696, antlr.SemanticException=var1056, $r15=var3851, $r14=var610, antlr.CommonAST=var1113, $r10=var737, $r11=var2188, $r12=var3764, $r13=var278, java.lang.Throwable=var3907, $r19=var1832}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.CollectionFunction;	z0 := @parameter0: boolean;	$r18 = (antlr.collections.AST) r0;	virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: void initializeMethodNode(antlr.collections.AST,boolean)>($r18, z0);	$z1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: boolean isCollectionPropertyMethod()>();	if $z1 != 0 goto r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: antlr.collections.AST getFirstChild()>();	$r15 = new antlr.SemanticException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.CollectionFunction: java.lang.String getText()>();	$r11 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not a collection property name!");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<antlr.SemanticException: void <init>(java.lang.String)>($r13);	$r19 = (java.lang.Throwable) $r15;	throw $r19
;block_num 2