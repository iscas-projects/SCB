(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var185 0)
(declare-sort var2565 0)
(declare-sort var524 0)
(declare-sort var2067 0)
(declare-sort var3454 0)
(declare-sort var1327 0)
(declare-sort var1148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1148!class ClassObject)
(declare-fun resolveConstructorArgumentTypes/1479678983 (var185) (Array Int var2565))
(declare-fun constructorArgumentTypes/1194991192 (var185) (Array Int var2565))
(declare-fun getFirstChild/-1265729773 (var2067) var524)
(declare-fun cast-from-var185-to-var2067 (var185) var2067)
(declare-fun cast-from-var524-to-var3454 (var524) var3454)
(declare-fun var3454_getPath/-797854800 (var3454) String)
(declare-fun toLowerCase/1946809429 (String var1327) String)
(declare-fun isMap/1194991192 (var185) Bool)
(declare-fun resultType/1194991192 (var185) ClassObject)
(declare-const null-var185 var185)
(declare-const var1327-ROOT var1327)
(declare-const var2997 var185) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode 
(assert (not (= var2997 null-var185)))
(assert true)
(define-const var577 (Array Int var2565) (resolveConstructorArgumentTypes/1479678983 var2997)) ; Statement: $r1 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] resolveConstructorArgumentTypes()>() 
(declare-const var2997!1 var185)
(assert (not (= var2997!1 null-var185)))
(assert (= (constructorArgumentTypes/1194991192 var2997!1) var577)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> = $r1 
(assert true)
(define-const var3179 var524 (getFirstChild/-1265729773 (cast-from-var185-to-var2067 var2997!1))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: antlr.collections.AST getFirstChild()>() 
(define-const var2474 var3454 (cast-from-var524-to-var3454 var3179)) ; Statement: $r3 = (org.hibernate.hql.internal.ast.tree.PathNode) $r2 
(define-const var3764 String (var3454_getPath/-797854800 var2474)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.hql.internal.ast.tree.PathNode: java.lang.String getPath()>() 
(define-const var2345 String "map") ; Statement: $r7 = "map" 
(define-const var1686 var1327 var1327-ROOT) ; Statement: $r5 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3346 String (toLowerCase/1946809429 var3764 var1686)) ; Statement: $r6 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r5) 
(assert true)
(define-const var1892 Bool (= var2345 var3346)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r10 = "list" 
(assert (not (= (ite var1892 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2997!2 var185)
(assert (not (= var2997!2 null-var185)))
(assert (= (isMap/1194991192 var2997!2) (ite (= 1 1) true false))) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: boolean isMap> = 1 
(declare-const var2997!3 var185)
(assert (not (= var2997!3 null-var185)))
(assert (= (resultType/1194991192 var2997!3) var1148!class)) ; Statement: r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: java.lang.Class resultType> = class "Ljava/util/Map;" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveConstructorArgumentTypes/1479678983=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.type.Type[]), constructorArgumentTypes/1194991192=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.type.Type[]), getFirstChild/-1265729773=([antlr.CommonAST], antlr.collections.AST), cast-from-var185-to-var2067=([org.hibernate.hql.internal.ast.tree.ConstructorNode], antlr.CommonAST), cast-from-var524-to-var3454=([antlr.collections.AST], org.hibernate.hql.internal.ast.tree.PathNode), var3454_getPath/-797854800=([org.hibernate.hql.internal.ast.tree.PathNode], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), isMap/1194991192=([org.hibernate.hql.internal.ast.tree.ConstructorNode], boolean), resultType/1194991192=([org.hibernate.hql.internal.ast.tree.ConstructorNode], java.lang.Class)}
; {var185=org.hibernate.hql.internal.ast.tree.ConstructorNode, var2997=r0, var2565=org.hibernate.type.Type, var577=$r1, var524=antlr.collections.AST, var2067=antlr.CommonAST, var3179=$r2, var3454=org.hibernate.hql.internal.ast.tree.PathNode, var2474=$r3, var3764=r4, var2345=$r7, var1327=java.util.Locale, var1686=$r5, var3346=$r6, var1892=$z0, var1148=java.util.Map}
; {org.hibernate.hql.internal.ast.tree.ConstructorNode=var185, r0=var2997, org.hibernate.type.Type=var2565, $r1=var577, antlr.collections.AST=var524, antlr.CommonAST=var2067, $r2=var3179, org.hibernate.hql.internal.ast.tree.PathNode=var3454, $r3=var2474, r4=var3764, $r7=var2345, java.util.Locale=var1327, $r5=var1686, $r6=var3346, $z0=var1892, java.util.Map=var1148}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode;	$r1 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] resolveConstructorArgumentTypes()>();	r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> = $r1;	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: antlr.collections.AST getFirstChild()>();	$r3 = (org.hibernate.hql.internal.ast.tree.PathNode) $r2;	r4 = interfaceinvoke $r3.<org.hibernate.hql.internal.ast.tree.PathNode: java.lang.String getPath()>();	$r7 = "map";	$r5 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = virtualinvoke r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r5);	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r10 = "list";	r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: boolean isMap> = 1;	r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: java.lang.Class resultType> = class "Ljava/util/Map;";	goto [?= return];	return
;block_num 3