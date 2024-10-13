(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendDisplayText/-442882844 (var2830 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2830 var2830)
(declare-const var752 var2830) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var752 null-var2830)))
(define-const var2288 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2288)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2288!1 String)
(assert (= var2288!1 ""))
(assert true)
;(assert (append/672562846 var2288!1 "FromElement{")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FromElement{") 
(declare-const var2288!2 String)
(assert (= var2288!2 (str.++ var2288!1 "FromElement{")))
(assert true)
;(assert (appendDisplayText/-442882844 var752 var2288!2)) ; Statement: virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: void appendDisplayText(java.lang.StringBuilder)>($r0) 

(declare-const var752!1 var2830)
(declare-const var2288!3 String)
(assert true)
;(assert (append/672562846 var2288!3 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var2288!4 String)
(assert (= var2288!4 (str.++ var2288!3 "}")))
(assert true)
(define-const var3787 String (toString/-2075883882 var2288!4)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendDisplayText/-442882844=([org.hibernate.hql.internal.ast.tree.FromElement, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2830=org.hibernate.hql.internal.ast.tree.FromElement, var752=r1, var2288=$r0, var3787=$r2}
; {org.hibernate.hql.internal.ast.tree.FromElement=var2830, r1=var752, $r0=var2288, $r2=var3787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FromElement{");	virtualinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElement: void appendDisplayText(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1