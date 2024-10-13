(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var264 0)
(declare-sort var2398 0)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2136-init () var2136)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun expressionDescription/-2109962999 (var264) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2136 String) void)
(declare-const null-var264 var264)
(declare-const null-var2398 var2398)
(declare-const var3068 var264) ; Statement: r2 := @this: org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode 
(assert (not (= var3068 null-var264)))
(declare-const var2391 var2398) ; Statement: r7 := @parameter0: antlr.collections.AST 
(assert (not (= var2391 null-var2398)))
(define-const var924 var2136 var2136-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1699 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1699)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1699!1 String)
(assert (= var1699!1 ""))
(assert true)
(define-const var3542 String (expressionDescription/-2109962999 var3068)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: java.lang.String expressionDescription()>() 
(assert true)
(define-const var1053 String (append/672562846 var1699!1 var3542)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1699!2 String)
(assert (= var1699!2 (str.++ var1699!1 var3542)))
(assert true)
(define-const var2686 String (append/672562846 var1053 " expression cannot be the source for an index operation")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expression cannot be the source for an index operation") 
(declare-const var1053!1 String)
(assert (= var1053!1 (str.++ var1053 " expression cannot be the source for an index operation")))
(assert true)
(define-const var3731 String (toString/-2075883882 var2686)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var924 var3731)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r6) 

(declare-const var924!1 var2136)
(declare-const var3731!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2136-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), expressionDescription/-2109962999=([org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var264=org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode, var3068=r2, var2398=antlr.collections.AST, var2391=r7, var2136=java.lang.UnsupportedOperationException, var924=$r0, var1699=$r1, var3542=$r3, var1053=$r4, var2686=$r5, var3731=$r6}
; {org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode=var264, r2=var3068, antlr.collections.AST=var2398, r7=var2391, java.lang.UnsupportedOperationException=var2136, $r0=var924, $r1=var1699, $r3=var3542, $r4=var1053, $r5=var2686, $r6=var3731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode;	r7 := @parameter0: antlr.collections.AST;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<org.hibernate.hql.internal.ast.tree.AbstractMapComponentNode: java.lang.String expressionDescription()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" expression cannot be the source for an index operation");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1