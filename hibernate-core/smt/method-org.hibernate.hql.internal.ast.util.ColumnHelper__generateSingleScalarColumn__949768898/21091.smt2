(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2534 0)
(declare-sort var291 0)
(declare-sort var954 0)
(declare-sort var2947 0)
(declare-sort var2054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getASTFactory/-481586995 (var2534) var291)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var954_scalarName/-1737161689 (Int Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-var2534-to-var2947 (var2534) var2947)
(declare-fun var2054_createSibling/400265134 (var291 Int String var2947) var2947)
(declare-const null-var2534 var2534)
(declare-const null-Int Int)
(declare-const var2250 var2534) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode 
(assert (not (= var2250 null-var2534)))
(declare-const var3966 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3966 null-Int)))
(assert true)
(define-const var2928 var291 (getASTFactory/-481586995 var2250)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode: antlr.ASTFactory getASTFactory()>() 
(define-const var2464 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2464)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2464!1 String)
(assert (= var2464!1 ""))
(assert true)
(define-const var1662 String (append/672562846 var2464!1 " as ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var2464!2 String)
(assert (= var2464!2 (str.++ var2464!1 " as ")))
(define-const var3683 String (var954_scalarName/-1737161689 var3966 0)) ; Statement: $r3 = staticinvoke <org.hibernate.hql.internal.NameGenerator: java.lang.String scalarName(int,int)>(i0, 0) 
(assert true)
(define-const var276 String (append/672562846 var1662 var3683)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1662!1 String)
(assert (= var1662!1 (str.++ var1662 var3683)))
(assert true)
(define-const var1221 String (toString/-2075883882 var276)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3256 var2947 (cast-from-var2534-to-var2947 var2250)) ; Statement: $r8 = (antlr.collections.AST) r0 
;(assert (var2054_createSibling/400265134 var2928 151 var1221 var3256)) ; Statement: staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: antlr.collections.AST createSibling(antlr.ASTFactory,int,java.lang.String,antlr.collections.AST)>(r1, 151, $r6, $r8) 

(declare-const var2928!1 var291)
(declare-const var1674 Int)
(declare-const var1221!1 String)
(declare-const var3256!1 var2947)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getASTFactory/-481586995=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], antlr.ASTFactory), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var954_scalarName/-1737161689=([int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-var2534-to-var2947=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], antlr.collections.AST), var2054_createSibling/400265134=([antlr.ASTFactory, int, java.lang.String, antlr.collections.AST], antlr.collections.AST)}
; {var2534=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var2250=r0, var3966=i0, var291=antlr.ASTFactory, var2928=r1, var2464=$r7, var1662=$r4, var954=org.hibernate.hql.internal.NameGenerator, var3683=$r3, var276=$r5, var1221=$r6, var2947=antlr.collections.AST, var3256=$r8, var2054=org.hibernate.hql.internal.ast.util.ASTUtil, var1674=151}
; {org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var2534, r0=var2250, i0=var3966, antlr.ASTFactory=var291, r1=var2928, $r7=var2464, $r4=var1662, org.hibernate.hql.internal.NameGenerator=var954, $r3=var3683, $r5=var276, $r6=var1221, antlr.collections.AST=var2947, $r8=var3256, org.hibernate.hql.internal.ast.util.ASTUtil=var2054, 151=var1674}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode;	i0 := @parameter1: int;	r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode: antlr.ASTFactory getASTFactory()>();	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r3 = staticinvoke <org.hibernate.hql.internal.NameGenerator: java.lang.String scalarName(int,int)>(i0, 0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = (antlr.collections.AST) r0;	staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: antlr.collections.AST createSibling(antlr.ASTFactory,int,java.lang.String,antlr.collections.AST)>(r1, 151, $r6, $r8);	return
;block_num 1