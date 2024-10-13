(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1003 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun propertyName/1155273117 (var1003) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOp/-545943134 (var1003) String)
(declare-fun value/1155273117 (var1003) var2280)
(declare-fun append/-1031950772 (String var2280) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1003 var1003)
(declare-const var3778 var1003) ; Statement: r1 := @this: org.hibernate.criterion.SimpleExpression 
(assert (not (= var3778 null-var1003)))
(define-const var504 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var504)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var504!1 String)
(assert (= var504!1 ""))
(define-const var1367 String (propertyName/1155273117 var3778)) ; Statement: $r2 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName> 
(assert true)
(define-const var2198 String (append/672562846 var504!1 var1367)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var504!2 String)
(assert (= var504!2 (str.++ var504!1 var1367)))
(assert true)
(define-const var2342 String (getOp/-545943134 var3778)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.criterion.SimpleExpression: java.lang.String getOp()>() 
(assert true)
(define-const var3636 String (append/672562846 var2198 var2342)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2198!1 String)
(assert (= var2198!1 (str.++ var2198 var2342)))
(define-const var1638 var2280 (value/1155273117 var3778)) ; Statement: $r5 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.Object value> 
(assert true)
(define-const var1754 String (append/-1031950772 var3636 var1638)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3636!1 String)
(assert (str.prefixof var3636 var3636!1))
(assert true)
(define-const var1747 String (toString/-2075883882 var1754)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), propertyName/1155273117=([org.hibernate.criterion.SimpleExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOp/-545943134=([org.hibernate.criterion.SimpleExpression], java.lang.String), value/1155273117=([org.hibernate.criterion.SimpleExpression], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1003=org.hibernate.criterion.SimpleExpression, var3778=r1, var504=$r0, var1367=$r2, var2198=$r4, var2342=$r3, var3636=$r6, var2280=java.lang.Object, var1638=$r5, var1754=$r7, var1747=$r8}
; {org.hibernate.criterion.SimpleExpression=var1003, r1=var3778, $r0=var504, $r2=var1367, $r4=var2198, $r3=var2342, $r6=var3636, java.lang.Object=var2280, $r5=var1638, $r7=var1754, $r8=var1747}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.SimpleExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.String propertyName>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = virtualinvoke r1.<org.hibernate.criterion.SimpleExpression: java.lang.String getOp()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = r1.<org.hibernate.criterion.SimpleExpression: java.lang.Object value>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1