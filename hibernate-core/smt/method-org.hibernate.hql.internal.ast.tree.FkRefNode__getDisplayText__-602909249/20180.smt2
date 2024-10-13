(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort var2804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resolveToOnePath/-2076682462 (var3405) var2804)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDisplayText/-1189778446 (var2804) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3405 var3405)
(declare-const var2481 var3405) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FkRefNode 
(assert (not (= var2481 null-var3405)))
(assert true)
(define-const var759 var2804 (resolveToOnePath/-2076682462 var2481)) ; Statement: r1 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode resolveToOnePath()>() 
(define-const var3786 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3786)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3786!1 String)
(assert (= var3786!1 ""))
(assert true)
(define-const var1932 String (append/672562846 var3786!1 "fk(`")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fk(`") 
(declare-const var3786!2 String)
(assert (= var3786!2 (str.++ var3786!1 "fk(`")))
(assert true)
(define-const var992 String (getDisplayText/-1189778446 var759)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getDisplayText()>() 
(assert true)
(define-const var2637 String (append/672562846 var1932 var992)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1932!1 String)
(assert (= var1932!1 (str.++ var1932 var992)))
(assert true)
(define-const var2423 String (append/672562846 var2637 "` )")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("` )") 
(declare-const var2637!1 String)
(assert (= var2637!1 (str.++ var2637 "` )")))
(assert true)
(define-const var397 String (toString/-2075883882 var2423)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveToOnePath/-2076682462=([org.hibernate.hql.internal.ast.tree.FkRefNode], org.hibernate.hql.internal.ast.tree.FromReferenceNode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDisplayText/-1189778446=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3405=org.hibernate.hql.internal.ast.tree.FkRefNode, var2481=r0, var2804=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var759=r1, var3786=$r2, var1932=$r4, var992=$r3, var2637=$r5, var2423=$r6, var397=$r7}
; {org.hibernate.hql.internal.ast.tree.FkRefNode=var3405, r0=var2481, org.hibernate.hql.internal.ast.tree.FromReferenceNode=var2804, r1=var759, $r2=var3786, $r4=var1932, $r3=var992, $r5=var2637, $r6=var2423, $r7=var397}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FkRefNode;	r1 = specialinvoke r0.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode resolveToOnePath()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("fk(`");	$r3 = virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getDisplayText()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("` )");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1