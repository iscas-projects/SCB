(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun size/1370995180 (var2900) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun op/1370995180 (var2900) String)
(declare-fun propertyName/1370995180 (var2900) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2900 var2900)
(declare-const var1768 var2900) ; Statement: r1 := @this: org.hibernate.criterion.SizeExpression 
(assert (not (= var1768 null-var2900)))
(define-const var2987 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2987)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2987!1 String)
(assert (= var2987!1 ""))
(define-const var1539 Int (size/1370995180 var1768)) ; Statement: $i0 = r1.<org.hibernate.criterion.SizeExpression: int size> 
(define-const var2208 String (Int_toString/1350422511 var1539)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i0) 
(assert true)
(define-const var100 String (append/672562846 var2987!1 var2208)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2987!2 String)
(assert (= var2987!2 (str.++ var2987!1 var2208)))
(define-const var667 String (op/1370995180 var1768)) ; Statement: $r3 = r1.<org.hibernate.criterion.SizeExpression: java.lang.String op> 
(assert true)
(define-const var257 String (append/672562846 var100 var667)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var100!1 String)
(assert (= var100!1 (str.++ var100 var667)))
(define-const var3674 String (propertyName/1370995180 var1768)) ; Statement: $r5 = r1.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName> 
(assert true)
(define-const var3967 String (append/672562846 var257 var3674)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var257!1 String)
(assert (= var257!1 (str.++ var257 var3674)))
(assert true)
(define-const var461 String (append/672562846 var3967 ".size")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".size") 
(declare-const var3967!1 String)
(assert (= var3967!1 (str.++ var3967 ".size")))
(assert true)
(define-const var3069 String (toString/-2075883882 var461)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), size/1370995180=([org.hibernate.criterion.SizeExpression], int), Int_toString/1350422511=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), op/1370995180=([org.hibernate.criterion.SizeExpression], java.lang.String), propertyName/1370995180=([org.hibernate.criterion.SizeExpression], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2900=org.hibernate.criterion.SizeExpression, var1768=r1, var2987=$r0, var1539=$i0, var2208=$r2, var100=$r4, var667=$r3, var257=$r6, var3674=$r5, var3967=$r7, var461=$r8, var3069=$r9}
; {org.hibernate.criterion.SizeExpression=var2900, r1=var1768, $r0=var2987, $i0=var1539, $r2=var2208, $r4=var100, $r3=var667, $r6=var257, $r5=var3674, $r7=var3967, $r8=var461, $r9=var3069}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.SizeExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<org.hibernate.criterion.SizeExpression: int size>;	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<org.hibernate.criterion.SizeExpression: java.lang.String op>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = r1.<org.hibernate.criterion.SizeExpression: java.lang.String propertyName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".size");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1