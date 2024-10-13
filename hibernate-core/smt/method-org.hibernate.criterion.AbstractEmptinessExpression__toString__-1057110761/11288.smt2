(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-241534537 (var1949) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun excludeEmpty/1424530801 (var1949) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1949 var1949)
(declare-const var999 var1949) ; Statement: r1 := @this: org.hibernate.criterion.AbstractEmptinessExpression 
(assert (not (= var999 null-var1949)))
(define-const var1306 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1306)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1306!1 String)
(assert (= var1306!1 ""))
(define-const var2798 String (propertyName/-241534537 var999)) ; Statement: $r2 = r1.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName> 
(assert true)
(define-const var1927 String (append/672562846 var1306!1 var2798)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1306!2 String)
(assert (= var1306!2 (str.++ var1306!1 var2798)))
(assert true)
(define-const var2079 Bool (excludeEmpty/1424530801 var999)) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.criterion.AbstractEmptinessExpression: boolean excludeEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = " is empty" 
(assert (not (= (ite var2079 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1414 String " is not empty") ; Statement: $r6 = " is not empty" 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3957 String (append/672562846 var1927 var1414)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1927!1 String)
(assert (= var1927!1 (str.++ var1927 var1414)))
(assert true)
(define-const var3883 String (toString/-2075883882 var3957)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-241534537=([org.hibernate.criterion.AbstractEmptinessExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), excludeEmpty/1424530801=([org.hibernate.criterion.AbstractEmptinessExpression], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1949=org.hibernate.criterion.AbstractEmptinessExpression, var999=r1, var1306=$r0, var2798=$r2, var1927=$r3, var2079=$z0, var1414=$r6, var3957=$r4, var3883=$r5}
; {org.hibernate.criterion.AbstractEmptinessExpression=var1949, r1=var999, $r0=var1306, $r2=var2798, $r3=var1927, $z0=var2079, $r6=var1414, $r4=var3957, $r5=var3883}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.AbstractEmptinessExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.AbstractEmptinessExpression: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$z0 = virtualinvoke r1.<org.hibernate.criterion.AbstractEmptinessExpression: boolean excludeEmpty()>();	if $z0 == 0 goto $r6 = " is empty";	$r6 = " is not empty";	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3