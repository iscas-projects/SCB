(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var632 0)
(declare-sort var1653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1653-init () var1653)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun expressionDescription/-2109962999 (var632) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1580113206 (var1653 String) void)
(declare-const null-var632 var632)
(declare-const var3297 var632) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode 
(assert (not (= var3297 null-var632)))
(define-const var1193 var1653 var1653-init) ; Statement: $r0 = new antlr.SemanticException 
(define-const var2415 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2415)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2415!1 String)
(assert (= var2415!1 ""))
(assert true)
(define-const var44 String (expressionDescription/-2109962999 var3297)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: java.lang.String expressionDescription()>() 
(assert true)
(define-const var3859 String (append/672562846 var2415!1 var44)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2415!2 String)
(assert (= var2415!2 (str.++ var2415!1 var44)))
(assert true)
(define-const var3602 String (append/672562846 var3859 " expression did not reference map property")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expression did not reference map property") 
(declare-const var3859!1 String)
(assert (= var3859!1 (str.++ var3859 " expression did not reference map property")))
(assert true)
(define-const var3227 String (toString/-2075883882 var3602)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1580113206 var1193 var3227)) ; Statement: specialinvoke $r0.<antlr.SemanticException: void <init>(java.lang.String)>($r6) 

(declare-const var1193!1 var1653)
(declare-const var3227!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1653-init=([], antlr.SemanticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), expressionDescription/-2109962999=([org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1580113206=([antlr.SemanticException, java.lang.String], void)}
; {var632=org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode, var3297=r2, var1653=antlr.SemanticException, var1193=$r0, var2415=$r1, var44=$r3, var3859=$r4, var3602=$r5, var3227=$r6}
; {org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode=var632, r2=var3297, antlr.SemanticException=var1653, $r0=var1193, $r1=var2415, $r3=var44, $r4=var3859, $r5=var3602, $r6=var3227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode;	$r0 = new antlr.SemanticException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: java.lang.String expressionDescription()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expression did not reference map property");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<antlr.SemanticException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1