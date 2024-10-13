(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var1784 0)
(declare-sort var3282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1784_setType/260848542 (var1784 Int) void)
(declare-fun var1784_getText/-200495485 (var1784) String)
(declare-fun toLowerCase/1946809429 (String var3282) String)
(declare-fun methodName/-632286265 (var3416) String)
(declare-fun inSelect/-632286265 (var3416) Bool)
(declare-const null-var3416 var3416)
(declare-const null-var1784 var1784)
(declare-const null-Bool Bool)
(declare-const var3282-ROOT var3282)
(declare-const var92 var3416) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.tree.MethodNode 
(assert (not (= var92 null-var3416)))
(declare-const var3330 var1784) ; Statement: r0 := @parameter0: antlr.collections.AST 
(assert (not (= var3330 null-var1784)))
(declare-const var3164 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3164 null-Bool)))
;(assert (var1784_setType/260848542 var3330 155)) ; Statement: interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(155) 

(declare-const var3330!1 var1784)
(declare-const var1947 Int)
(define-const var2035 String (var1784_getText/-200495485 var3330!1)) ; Statement: r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(define-const var3382 var3282 var3282-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var204 String (toLowerCase/1946809429 var2035 var3382)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(declare-const var92!1 var3416)
(assert (not (= var92!1 null-var3416)))
(assert (= (methodName/-632286265 var92!1) var204)) ; Statement: r2.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName> = $r4 
(declare-const var92!2 var3416)
(assert (not (= var92!2 null-var3416)))
(assert (= (inSelect/-632286265 var92!2) var3164)) ; Statement: r2.<org.hibernate.hql.internal.ast.tree.MethodNode: boolean inSelect> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1784_setType/260848542=([antlr.collections.AST, int], void), var1784_getText/-200495485=([antlr.collections.AST], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), methodName/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], java.lang.String), inSelect/-632286265=([org.hibernate.hql.internal.ast.tree.MethodNode], boolean)}
; {var3416=org.hibernate.hql.internal.ast.tree.MethodNode, var92=r2, var1784=antlr.collections.AST, var3330=r0, var3164=z0, var1947=155, var2035=r1, var3282=java.util.Locale, var3382=$r3, var204=$r4}
; {org.hibernate.hql.internal.ast.tree.MethodNode=var3416, r2=var92, antlr.collections.AST=var1784, r0=var3330, z0=var3164, 155=var1947, r1=var2035, java.util.Locale=var3282, $r3=var3382, $r4=var204}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.tree.MethodNode;	r0 := @parameter0: antlr.collections.AST;	z0 := @parameter1: boolean;	interfaceinvoke r0.<antlr.collections.AST: void setType(int)>(155);	r1 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	r2.<org.hibernate.hql.internal.ast.tree.MethodNode: java.lang.String methodName> = $r4;	r2.<org.hibernate.hql.internal.ast.tree.MethodNode: boolean inSelect> = z0;	return
;block_num 1