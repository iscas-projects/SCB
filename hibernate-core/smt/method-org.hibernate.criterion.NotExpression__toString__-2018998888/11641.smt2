(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var51 0)
(declare-sort var2622 0)
(declare-sort var421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun criterion/-975709448 (var51) var2622)
(declare-fun toString/-522406933 (var421) String)
(declare-fun cast-from-var2622-to-var421 (var2622) var421)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var51 var51)
(declare-const var140 var51) ; Statement: r1 := @this: org.hibernate.criterion.NotExpression 
(assert (not (= var140 null-var51)))
(define-const var1810 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1810)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1810!1 String)
(assert (= var1810!1 ""))
(assert true)
(define-const var267 String (append/672562846 var1810!1 "not ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not ") 
(declare-const var1810!2 String)
(assert (= var1810!2 (str.++ var1810!1 "not ")))
(define-const var707 var2622 (criterion/-975709448 var140)) ; Statement: $r2 = r1.<org.hibernate.criterion.NotExpression: org.hibernate.criterion.Criterion criterion> 
(assert true)
(define-const var1613 String (toString/-522406933 (cast-from-var2622-to-var421 var707))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var787 String (append/672562846 var267 var1613)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var267!1 String)
(assert (= var267!1 (str.++ var267 var1613)))
(assert true)
(define-const var726 String (toString/-2075883882 var787)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), criterion/-975709448=([org.hibernate.criterion.NotExpression], org.hibernate.criterion.Criterion), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2622-to-var421=([org.hibernate.criterion.Criterion], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var51=org.hibernate.criterion.NotExpression, var140=r1, var1810=$r0, var267=$r4, var2622=org.hibernate.criterion.Criterion, var707=$r2, var421=java.lang.Object, var1613=$r3, var787=$r5, var726=$r6}
; {org.hibernate.criterion.NotExpression=var51, r1=var140, $r0=var1810, $r4=var267, org.hibernate.criterion.Criterion=var2622, $r2=var707, java.lang.Object=var421, $r3=var1613, $r5=var787, $r6=var726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.NotExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not ");	$r2 = r1.<org.hibernate.criterion.NotExpression: org.hibernate.criterion.Criterion criterion>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1