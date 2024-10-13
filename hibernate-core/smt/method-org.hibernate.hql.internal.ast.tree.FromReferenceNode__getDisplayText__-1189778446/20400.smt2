(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3214 0)
(declare-sort var1392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fromElement/1016689311 (var3214) var1392)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3214 var3214)
(declare-const null-var1392 var1392)
(declare-const var3199 var3214) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromReferenceNode 
(assert (not (= var3199 null-var3214)))
(define-const var2005 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2005)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2005!1 String)
(assert (= var2005!1 ""))
(assert true)
(define-const var1591 String (append/672562846 var2005!1 "{")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2005!2 String)
(assert (= var2005!2 (str.++ var2005!1 "{")))
(define-const var1580 var1392 (fromElement/1016689311 var3199)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement> 
(assert (not (not (= var1580 null-var1392)))) ; Negate: Cond: $r2 != null  
(define-const var2558 String "no fromElement") ; Statement: $r6 = "no fromElement" 
 ; Statement: goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1591 var2558)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1591!1 String)
(assert (= var1591!1 (str.++ var1591 var2558)))
(assert true)
;(assert (append/672562846 var2005!2 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2005!3 String)
(assert (= var2005!3 (str.++ var2005!2 "}")))
(assert true)
(define-const var3523 String (toString/-2075883882 var2005!3)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fromElement/1016689311=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], org.hibernate.hql.internal.ast.tree.FromElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3214=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var3199=r1, var2005=$r0, var1591=$r4, var1392=org.hibernate.hql.internal.ast.tree.FromElement, var1580=$r2, var2558=$r6, var3523=$r5}
; {org.hibernate.hql.internal.ast.tree.FromReferenceNode=var3214, r1=var3199, $r0=var2005, $r4=var1591, org.hibernate.hql.internal.ast.tree.FromElement=var1392, $r2=var1580, $r6=var2558, $r5=var3523}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromReferenceNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r2 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement>;	if $r2 != null goto $r3 = r1.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: org.hibernate.hql.internal.ast.tree.FromElement fromElement>;	$r6 = "no fromElement";	goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3