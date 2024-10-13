(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var526 0)
(declare-sort var2154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fromElement/1016689311 (var526) var2154)
(declare-fun getDisplayText/-1254220799 (var2154) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var526 var526)
(declare-const null-var2154 var2154)
(declare-const var2547 var526) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromReferenceNode 
(assert (not (= var2547 null-var526)))
(define-const var926 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var926)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var926!1 String)
(assert (= var926!1 ""))
(assert true)
(define-const var3747 String (append/672562846 var926!1 "{")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var926!2 String)
(assert (= var926!2 (str.++ var926!1 "{")))
(define-const var1947 var2154 (fromElement/1016689311 var2547)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement> 
(assert (not (= var1947 null-var2154))) ; Cond: $r2 != null 
(define-const var637 var2154 (fromElement/1016689311 var2547)) ; Statement: $r3 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement> 
(assert true)
(define-const var2002 String (getDisplayText/-1254220799 var637)) ; Statement: $r6 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getDisplayText()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3747 var2002)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3747!1 String)
(assert (= var3747!1 (str.++ var3747 var2002)))
(assert true)
;(assert (append/672562846 var926!2 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var926!3 String)
(assert (= var926!3 (str.++ var926!2 "}")))
(assert true)
(define-const var415 String (toString/-2075883882 var926!3)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fromElement/1016689311=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], org.hibernate.hql.internal.ast.tree.FromElement), getDisplayText/-1254220799=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var526=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var2547=r1, var926=$r0, var3747=$r4, var2154=org.hibernate.hql.internal.ast.tree.FromElement, var1947=$r2, var637=$r3, var2002=$r6, var415=$r5}
; {org.hibernate.hql.internal.ast.tree.FromReferenceNode=var526, r1=var2547, $r0=var926, $r4=var3747, org.hibernate.hql.internal.ast.tree.FromElement=var2154, $r2=var1947, $r3=var637, $r6=var2002, $r5=var415}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromReferenceNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r2 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement>;	if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement>;	$r3 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement>;	$r6 = virtualinvoke $r3.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getDisplayText()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3