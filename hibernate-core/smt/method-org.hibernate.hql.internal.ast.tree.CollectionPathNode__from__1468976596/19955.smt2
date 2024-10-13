(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1706 0)
(declare-sort var2998 0)
(declare-sort var3185 0)
(declare-sort var258 0)
(declare-sort var3875 0)
(declare-sort var1849 0)
(declare-sort var2645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1706_getText/-200495485 (var1706) String)
(declare-fun cast-from-var1706-to-var3185 (var1706) var3185)
(declare-fun getPath/1881441684 (var3185) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var258) String)
(declare-fun cast-from-var1706-to-var258 (var1706) var258)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1849-init () var1849)
(declare-fun cast-from-var3875-to-var2645 (var3875) var2645)
(declare-fun <init>/1292940450 (var1849 String var2645) void)
(declare-fun cast-from-var1849-to-var3875 (var1849) var3875)
(declare-const null-var1706 var1706)
(declare-const null-var2998 var2998)
(declare-const null-var3875 var3875)
(declare-const var2546 var1706) ; Statement: r2 := @parameter0: antlr.collections.AST 
(assert (not (= var2546 null-var1706)))
(declare-const var1435 var1706) ; Statement: r0 := @parameter1: antlr.collections.AST 
(assert (not (= var1435 null-var1706)))
(declare-const var1043 var2998) ; Statement: r14 := @parameter2: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var1043 null-var2998)))
(define-const var1718 String (var1706_getText/-200495485 var1435)) ; Statement: r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
 ; Statement: if r2 != null goto r98 = (org.hibernate.hql.internal.ast.tree.FromReferenceNode) r2 
(assert (not (= var2546 null-var1706))) ; Cond: r2 != null 
(define-const var2260 var3185 (cast-from-var1706-to-var3185 var2546)) ; Statement: r98 = (org.hibernate.hql.internal.ast.tree.FromReferenceNode) r2 
(define-const var833 var3185 (cast-from-var1706-to-var3185 var2546)) ; Statement: $r3 = (org.hibernate.hql.internal.ast.tree.FromReferenceNode) r2 
(assert true)
(define-const var18 String (getPath/1881441684 var833)) ; Statement: r99 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getPath()>() 
(define-const var2017 String String-init) ; Statement: $r119 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2017)) ; Statement: specialinvoke $r119.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2017!1 String)
(assert (= var2017!1 ""))
(assert true)
(define-const var2336 String (append/672562846 var2017!1 var18)) ; Statement: $r5 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r99) 
(declare-const var2017!2 String)
(assert (= var2017!2 (str.++ var2017!1 var18)))
(assert true)
(define-const var1191 String (append/672562846 var2336 ".")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2336!1 String)
(assert (= var2336!1 (str.++ var2336 ".")))
(assert true)
(define-const var3953 String (append/-1031950772 var1191 (cast-from-var1706-to-var258 var1435))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1191!1 String)
(assert (str.prefixof var1191 var1191!1))
(assert true)
(define-const var504 String (toString/-2075883882 var3953)) ; Statement: r100 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2149 var3875) ; Statement: $r79 := @caughtexception 
(assert (not (= var2149 null-var3875)))
(define-const var2076 var1849 var1849-init) ; Statement: $r121 = new org.hibernate.QueryException 
(define-const var3330 String String-init) ; Statement: $r120 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3330)) ; Statement: specialinvoke $r120.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3330!1 String)
(assert (= var3330!1 ""))
(assert true)
(define-const var1759 String (append/672562846 var3330!1 "Unable to resolve collection-path qualifier : ")) ; Statement: $r82 = virtualinvoke $r120.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve collection-path qualifier : ") 
(declare-const var3330!2 String)
(assert (= var3330!2 (str.++ var3330!1 "Unable to resolve collection-path qualifier : ")))
(assert true)
(define-const var1822 String (append/672562846 var1759 var18)) ; Statement: $r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r99) 
(declare-const var1759!1 String)
(assert (= var1759!1 (str.++ var1759 var18)))
(assert true)
(define-const var1801 String (toString/-2075883882 var1822)) ; Statement: $r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3104 var2645 (cast-from-var3875-to-var2645 var2149)) ; Statement: $r130 = (java.lang.Exception) $r79 
(assert true)
;(assert (<init>/1292940450 var2076 var1801 var3104)) ; Statement: specialinvoke $r121.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r84, $r130) 

(declare-const var2076!1 var1849)
(declare-const var1801!1 String)
(declare-const var3104!1 var2645)
(define-const var3271 var3875 (cast-from-var1849-to-var3875 var2076!1)) ; Statement: $r131 = (java.lang.Throwable) $r121 
 ; Statement: throw $r131 
(check-sat)
(get-model)
(get-unsat-core)
; {var1706_getText/-200495485=([antlr.collections.AST], java.lang.String), cast-from-var1706-to-var3185=([antlr.collections.AST], org.hibernate.hql.internal.ast.tree.FromReferenceNode), getPath/1881441684=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1706-to-var258=([antlr.collections.AST], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1849-init=([], org.hibernate.QueryException), cast-from-var3875-to-var2645=([java.lang.Throwable], java.lang.Exception), <init>/1292940450=([org.hibernate.QueryException, java.lang.String, java.lang.Exception], void), cast-from-var1849-to-var3875=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1706=antlr.collections.AST, var2546=r2, var1435=r0, var2998=org.hibernate.hql.internal.ast.HqlSqlWalker, var1043=r14, var1718=r1, var3185=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var2260=r98, var833=$r3, var18=r99, var2017=$r119, var2336=$r5, var1191=$r6, var258=java.lang.Object, var3953=$r7, var504=r100, var3875=java.lang.Throwable, var2149=$r79, var1849=org.hibernate.QueryException, var2076=$r121, var3330=$r120, var1759=$r82, var1822=$r83, var1801=$r84, var2645=java.lang.Exception, var3104=$r130, var3271=$r131}
; {antlr.collections.AST=var1706, r2=var2546, r0=var1435, org.hibernate.hql.internal.ast.HqlSqlWalker=var2998, r14=var1043, r1=var1718, org.hibernate.hql.internal.ast.tree.FromReferenceNode=var3185, r98=var2260, $r3=var833, r99=var18, $r119=var2017, $r5=var2336, $r6=var1191, java.lang.Object=var258, $r7=var3953, r100=var504, java.lang.Throwable=var3875, $r79=var2149, org.hibernate.QueryException=var1849, $r121=var2076, $r120=var3330, $r82=var1759, $r83=var1822, $r84=var1801, java.lang.Exception=var2645, $r130=var3104, $r131=var3271}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @parameter0: antlr.collections.AST;	r0 := @parameter1: antlr.collections.AST;	r14 := @parameter2: org.hibernate.hql.internal.ast.HqlSqlWalker;	r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	if r2 != null goto r98 = (org.hibernate.hql.internal.ast.tree.FromReferenceNode) r2;	r98 = (org.hibernate.hql.internal.ast.tree.FromReferenceNode) r2;	$r3 = (org.hibernate.hql.internal.ast.tree.FromReferenceNode) r2;	r99 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getPath()>();	$r119 = new java.lang.StringBuilder;	specialinvoke $r119.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r119.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r99);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	r100 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r79 := @caughtexception;	$r121 = new org.hibernate.QueryException;	$r120 = new java.lang.StringBuilder;	specialinvoke $r120.<java.lang.StringBuilder: void <init>()>();	$r82 = virtualinvoke $r120.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to resolve collection-path qualifier : ");	$r83 = virtualinvoke $r82.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r99);	$r84 = virtualinvoke $r83.<java.lang.StringBuilder: java.lang.String toString()>();	$r130 = (java.lang.Exception) $r79;	specialinvoke $r121.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r84, $r130);	$r131 = (java.lang.Throwable) $r121;	throw $r131
;block_num 3