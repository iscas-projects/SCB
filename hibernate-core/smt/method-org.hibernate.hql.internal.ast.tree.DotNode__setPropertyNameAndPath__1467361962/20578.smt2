(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var2582 0)
(declare-sort var2267 0)
(declare-sort var814 0)
(declare-sort var44 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1499_isDotNode/158380045 (var2582) Bool)
(declare-fun cast-from-var2582-to-var1499 (var2582) var1499)
(declare-fun getFirstChild/-1265729773 (var2267) var2582)
(declare-fun cast-from-var1499-to-var2267 (var1499) var2267)
(declare-fun var2582_getNextSibling/-331034150 (var2582) var2582)
(declare-fun var2582_getText/-200495485 (var2582) String)
(declare-fun propertyName/790005799 (var1499) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyPath/790005799 (var1499) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var814_debugf/585189783 (var814 String var44) void)
(declare-fun cast-from-String-to-var44 (String) var44)
(declare-const null-var1499 var1499)
(declare-const null-var2582 var2582)
(declare-const var1499-LOG var814)
(declare-const var2545 var1499) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode 
(assert (not (= var2545 null-var1499)))
(declare-const var2047 var2582) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var2047 null-var2582)))
(define-const var3013 Bool (var1499_isDotNode/158380045 var2047)) ; Statement: $z0 = staticinvoke <org.hibernate.hql.internal.ast.tree.DotNode: boolean isDotNode(antlr.collections.AST)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG> 
(assert (not (= (ite var3013 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1817 var1499 (cast-from-var2582-to-var1499 var2047)) ; Statement: r4 = (org.hibernate.hql.internal.ast.tree.DotNode) r0 
(assert true)
(define-const var407 var2582 (getFirstChild/-1265729773 (cast-from-var1499-to-var2267 var1817))) ; Statement: r5 = virtualinvoke r4.<org.hibernate.hql.internal.ast.tree.DotNode: antlr.collections.AST getFirstChild()>() 
(define-const var2869 var2582 (var2582_getNextSibling/-331034150 var407)) ; Statement: r6 = interfaceinvoke r5.<antlr.collections.AST: antlr.collections.AST getNextSibling()>() 
(define-const var1422 String (var2582_getText/-200495485 var2869)) ; Statement: $r7 = interfaceinvoke r6.<antlr.collections.AST: java.lang.String getText()>() 
(declare-const var2545!1 var1499)
(assert (not (= var2545!1 null-var1499)))
(assert (= (propertyName/790005799 var2545!1) var1422)) ; Statement: r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyName> = $r7 
(define-const var348 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var348)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var348!1 String)
(assert (= var348!1 ""))
(define-const var2019 String (propertyPath/790005799 var2545!1)) ; Statement: $r9 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
(assert true)
(define-const var2989 String (append/672562846 var348!1 var2019)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var348!2 String)
(assert (= var348!2 (str.++ var348!1 var2019)))
(assert true)
(define-const var1742 String (append/672562846 var2989 ".")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2989!1 String)
(assert (= var2989!1 (str.++ var2989 ".")))
(define-const var2070 String (propertyName/790005799 var2545!1)) ; Statement: $r11 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyName> 
(assert true)
(define-const var1981 String (append/672562846 var1742 var2070)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1742!1 String)
(assert (= var1742!1 (str.++ var1742 var2070)))
(assert true)
(define-const var2616 String (toString/-2075883882 var1981)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2545!2 var1499)
(assert (not (= var2545!2 null-var1499)))
(assert (= (propertyPath/790005799 var2545!2) var2616)) ; Statement: r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> = $r14 
(define-const var3486 String (propertyPath/790005799 var2545!2)) ; Statement: $r15 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
(declare-const var1817!1 var1499)
(assert (not (= var1817!1 null-var1499)))
(assert (= (propertyPath/790005799 var1817!1) var3486)) ; Statement: r4.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> = $r15 
(define-const var2672 var814 var1499-LOG) ; Statement: $r17 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3532 String (propertyPath/790005799 var1817!1)) ; Statement: $r16 = r4.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> 
;(assert (var814_debugf/585189783 var2672 "Unresolved property path is now \u0027%s\u0027" (cast-from-String-to-var44 var3532))) ; Statement: interfaceinvoke $r17.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Unresolved property path is now \'%s\'", $r16) 

(declare-const var2672!1 var814)
(declare-const var3763 String)
(declare-const var3532!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1499_isDotNode/158380045=([antlr.collections.AST], boolean), cast-from-var2582-to-var1499=([antlr.collections.AST], org.hibernate.hql.internal.ast.tree.DotNode), getFirstChild/-1265729773=([antlr.CommonAST], antlr.collections.AST), cast-from-var1499-to-var2267=([org.hibernate.hql.internal.ast.tree.DotNode], antlr.CommonAST), var2582_getNextSibling/-331034150=([antlr.collections.AST], antlr.collections.AST), var2582_getText/-200495485=([antlr.collections.AST], java.lang.String), propertyName/790005799=([org.hibernate.hql.internal.ast.tree.DotNode], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyPath/790005799=([org.hibernate.hql.internal.ast.tree.DotNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var814_debugf/585189783=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var44=([java.lang.String], java.lang.Object)}
; {var1499=org.hibernate.hql.internal.ast.tree.DotNode, var2545=r1, var2582=antlr.collections.AST, var2047=r0, var3013=$z0, var1817=r4, var2267=antlr.CommonAST, var407=r5, var2869=r6, var1422=$r7, var348=$r8, var2019=$r9, var2989=$r10, var1742=$r12, var2070=$r11, var1981=$r13, var2616=$r14, var3486=$r15, var814=org.hibernate.internal.CoreMessageLogger, var2672=$r17, var3532=$r16, var44=java.lang.Object, var3763="Unresolved property path is now \'%s\'"}
; {org.hibernate.hql.internal.ast.tree.DotNode=var1499, r1=var2545, antlr.collections.AST=var2582, r0=var2047, $z0=var3013, r4=var1817, antlr.CommonAST=var2267, r5=var407, r6=var2869, $r7=var1422, $r8=var348, $r9=var2019, $r10=var2989, $r12=var1742, $r11=var2070, $r13=var1981, $r14=var2616, $r15=var3486, org.hibernate.internal.CoreMessageLogger=var814, $r17=var2672, $r16=var3532, java.lang.Object=var44, "Unresolved property path is now \'%s\'"=var3763}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.DotNode;	r0 := @parameter0: antlr.collections.AST;	$z0 = staticinvoke <org.hibernate.hql.internal.ast.tree.DotNode: boolean isDotNode(antlr.collections.AST)>(r0);	if $z0 == 0 goto $r3 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG>;	r4 = (org.hibernate.hql.internal.ast.tree.DotNode) r0;	r5 = virtualinvoke r4.<org.hibernate.hql.internal.ast.tree.DotNode: antlr.collections.AST getFirstChild()>();	r6 = interfaceinvoke r5.<antlr.collections.AST: antlr.collections.AST getNextSibling()>();	$r7 = interfaceinvoke r6.<antlr.collections.AST: java.lang.String getText()>();	r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyName> = $r7;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r11 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> = $r14;	$r15 = r1.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	r4.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath> = $r15;	$r17 = <org.hibernate.hql.internal.ast.tree.DotNode: org.hibernate.internal.CoreMessageLogger LOG>;	$r16 = r4.<org.hibernate.hql.internal.ast.tree.DotNode: java.lang.String propertyPath>;	interfaceinvoke $r17.<org.hibernate.internal.CoreMessageLogger: void debugf(java.lang.String,java.lang.Object)>("Unresolved property path is now \'%s\'", $r16);	goto [?= return];	return
;block_num 3