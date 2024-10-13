(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1086 0)
(declare-sort var1658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/-1142638555 (var1086) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1142638555 (var1086) var1658)
(declare-fun append/-1031950772 (String var1658) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1086 var1086)
(declare-const var1849 var1086) ; Statement: r1 := @this: org.hibernate.criterion.IlikeExpression 
(assert (not (= var1849 null-var1086)))
(define-const var1456 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1456)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1456!1 String)
(assert (= var1456!1 ""))
(define-const var3305 String (propertyName/-1142638555 var1849)) ; Statement: $r2 = r1.<org.hibernate.criterion.IlikeExpression: java.lang.String propertyName> 
(assert true)
(define-const var2062 String (append/672562846 var1456!1 var3305)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1456!2 String)
(assert (= var1456!2 (str.++ var1456!1 var3305)))
(assert true)
(define-const var1291 String (append/672562846 var2062 " ilike ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ilike ") 
(declare-const var2062!1 String)
(assert (= var2062!1 (str.++ var2062 " ilike ")))
(define-const var3227 var1658 (value/-1142638555 var1849)) ; Statement: $r4 = r1.<org.hibernate.criterion.IlikeExpression: java.lang.Object value> 
(assert true)
(define-const var2309 String (append/-1031950772 var1291 var3227)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1291!1 String)
(assert (str.prefixof var1291 var1291!1))
(assert true)
(define-const var2092 String (toString/-2075883882 var2309)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/-1142638555=([org.hibernate.criterion.IlikeExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1142638555=([org.hibernate.criterion.IlikeExpression], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1086=org.hibernate.criterion.IlikeExpression, var1849=r1, var1456=$r0, var3305=$r2, var2062=$r3, var1291=$r5, var1658=java.lang.Object, var3227=$r4, var2309=$r6, var2092=$r7}
; {org.hibernate.criterion.IlikeExpression=var1086, r1=var1849, $r0=var1456, $r2=var3305, $r3=var2062, $r5=var1291, java.lang.Object=var1658, $r4=var3227, $r6=var2309, $r7=var2092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.IlikeExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.IlikeExpression: java.lang.String propertyName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ilike ");	$r4 = r1.<org.hibernate.criterion.IlikeExpression: java.lang.Object value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1