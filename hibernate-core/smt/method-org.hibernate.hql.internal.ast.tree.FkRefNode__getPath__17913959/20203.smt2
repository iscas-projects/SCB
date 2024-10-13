(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var995 0)
(declare-sort var3855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toOnePath/1824275180 (var995) var3855)
(declare-fun getDisplayText/-1189778446 (var3855) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var995 var995)
(declare-const var748 var995) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FkRefNode 
(assert (not (= var748 null-var995)))
(define-const var3037 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3037)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3037!1 String)
(assert (= var3037!1 ""))
(define-const var225 var3855 (toOnePath/1824275180 var748)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode toOnePath> 
(assert true)
(define-const var1191 String (getDisplayText/-1189778446 var225)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getDisplayText()>() 
(assert true)
(define-const var3466 String (append/672562846 var3037!1 var1191)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3037!2 String)
(assert (= var3037!2 (str.++ var3037!1 var1191)))
(assert true)
(define-const var3938 String (append/672562846 var3466 ".{fk}")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".{fk}") 
(declare-const var3466!1 String)
(assert (= var3466!1 (str.++ var3466 ".{fk}")))
(assert true)
(define-const var3386 String (toString/-2075883882 var3938)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toOnePath/1824275180=([org.hibernate.hql.internal.ast.tree.FkRefNode], org.hibernate.hql.internal.ast.tree.FromReferenceNode), getDisplayText/-1189778446=([org.hibernate.hql.internal.ast.tree.FromReferenceNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var995=org.hibernate.hql.internal.ast.tree.FkRefNode, var748=r1, var3037=$r0, var3855=org.hibernate.hql.internal.ast.tree.FromReferenceNode, var225=$r2, var1191=$r3, var3466=$r4, var3938=$r5, var3386=$r6}
; {org.hibernate.hql.internal.ast.tree.FkRefNode=var995, r1=var748, $r0=var3037, org.hibernate.hql.internal.ast.tree.FromReferenceNode=var3855, $r2=var225, $r3=var1191, $r4=var3466, $r5=var3938, $r6=var3386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FkRefNode;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.hql.internal.ast.tree.FkRefNode: org.hibernate.hql.internal.ast.tree.FromReferenceNode toOnePath>;	$r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.FromReferenceNode: java.lang.String getDisplayText()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".{fk}");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1