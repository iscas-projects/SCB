(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3787 0)
(declare-sort var1698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDisplayText/-442882844 (var1698 String) void)
(declare-fun cast-from-var3787-to-var1698 (var3787) var1698)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3787 var3787)
(declare-const var3111 var3787) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.ImpliedFromElement 
(assert (not (= var3111 null-var3787)))
(define-const var393 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var393)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var393!1 String)
(assert (= var393!1 ""))
(assert true)
;(assert (append/672562846 var393!1 "ImpliedFromElement{")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ImpliedFromElement{") 
(declare-const var393!2 String)
(assert (= var393!2 (str.++ var393!1 "ImpliedFromElement{")))
(assert true)
;(assert (appendDisplayText/-442882844 (cast-from-var3787-to-var1698 var3111) var393!2)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.ImpliedFromElement: void appendDisplayText(java.lang.StringBuilder)>($r0) 

(declare-const var3111!1 var3787)
(declare-const var393!3 String)
(assert true)
;(assert (append/672562846 var393!3 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var393!4 String)
(assert (= var393!4 (str.++ var393!3 "}")))
(assert true)
(define-const var896 String (toString/-2075883882 var393!4)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendDisplayText/-442882844=([org.hibernate.hql.internal.ast.tree.FromElement, java.lang.StringBuilder], void), cast-from-var3787-to-var1698=([org.hibernate.hql.internal.ast.tree.ImpliedFromElement], org.hibernate.hql.internal.ast.tree.FromElement), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3787=org.hibernate.hql.internal.ast.tree.ImpliedFromElement, var3111=r1, var393=$r0, var1698=org.hibernate.hql.internal.ast.tree.FromElement, var896=$r2}
; {org.hibernate.hql.internal.ast.tree.ImpliedFromElement=var3787, r1=var3111, $r0=var393, org.hibernate.hql.internal.ast.tree.FromElement=var1698, $r2=var896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.ImpliedFromElement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ImpliedFromElement{");	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.ImpliedFromElement: void appendDisplayText(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1