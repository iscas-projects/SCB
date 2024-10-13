(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-241534537 (var2099) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun excludeEmpty/1424530801 (var2099) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2099 var2099)
(declare-const var2430 var2099) ; Statement: r1 := @this: org.hibernate.criterion.AbstractEmptinessExpression 
(assert (not (= var2430 null-var2099)))
(define-const var1098 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1098)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1098!1 String)
(assert (= var1098!1 ""))
(define-const var1281 String (propertyName/-241534537 var2430)) ; Statement: $r2 = r1.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName> 
(assert true)
(define-const var3472 String (append/672562846 var1098!1 var1281)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1098!2 String)
(assert (= var1098!2 (str.++ var1098!1 var1281)))
(assert true)
(define-const var806 Bool (excludeEmpty/1424530801 var2430)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.criterion.AbstractEmptinessExpression: boolean excludeEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = " is empty" 
(assert (= (ite var806 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3197 String " is empty") ; Statement: $r6 = " is empty" 
(assert true) ; Non Conditional
(assert true)
(define-const var2004 String (append/672562846 var3472 var3197)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3472!1 String)
(assert (= var3472!1 (str.++ var3472 var3197)))
(assert true)
(define-const var586 String (toString/-2075883882 var2004)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-241534537=([org.hibernate.criterion.AbstractEmptinessExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), excludeEmpty/1424530801=([org.hibernate.criterion.AbstractEmptinessExpression], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2099=org.hibernate.criterion.AbstractEmptinessExpression, var2430=r1, var1098=$r0, var1281=$r2, var3472=$r3, var806=$z0, var3197=$r6, var2004=$r4, var586=$r5}
; {org.hibernate.criterion.AbstractEmptinessExpression=var2099, r1=var2430, $r0=var1098, $r2=var1281, $r3=var3472, $z0=var806, $r6=var3197, $r4=var2004, $r5=var586}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.AbstractEmptinessExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$z0 = virtualinvoke r1.<org.hibernate.criterion.AbstractEmptinessExpression: boolean excludeEmpty()>();	if $z0 == 0 goto $r6 = " is empty";	$r6 = " is empty";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3