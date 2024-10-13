(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3747 0)
(declare-sort var3043 0)
(declare-sort var3318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun lhs/272491054 (var3747) var3043)
(declare-fun toString/-522406933 (var3318) String)
(declare-fun cast-from-var3043-to-var3318 (var3043) var3318)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getOp/556624489 (var3747) String)
(declare-fun rhs/272491054 (var3747) var3043)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3747 var3747)
(declare-const var2807 var3747) ; Statement: r1 := @this: org.hibernate.criterion.LogicalExpression 
(assert (not (= var2807 null-var3747)))
(define-const var3353 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3353)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3353!1 String)
(assert (= var3353!1 ""))
(define-const var3632 var3043 (lhs/272491054 var2807)) ; Statement: $r2 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion lhs> 
(assert true)
(define-const var1654 String (toString/-522406933 (cast-from-var3043-to-var3318 var3632))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1972 String (append/672562846 var3353!1 var1654)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3353!2 String)
(assert (= var3353!2 (str.++ var3353!1 var1654)))
(assert true)
(define-const var3219 String (append/-1166366385 var1972 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1972!1 String)
(assert (str.prefixof var1972 var1972!1))
(assert true)
(define-const var456 String (getOp/556624489 var2807)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.criterion.LogicalExpression: java.lang.String getOp()>() 
(assert true)
(define-const var1213 String (append/672562846 var3219 var456)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3219!1 String)
(assert (= var3219!1 (str.++ var3219 var456)))
(assert true)
(define-const var1143 String (append/-1166366385 var1213 32)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1213!1 String)
(assert (str.prefixof var1213 var1213!1))
(define-const var104 var3043 (rhs/272491054 var2807)) ; Statement: $r8 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion rhs> 
(assert true)
(define-const var700 String (toString/-522406933 (cast-from-var3043-to-var3318 var104))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2228 String (append/672562846 var1143 var700)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1143!1 String)
(assert (= var1143!1 (str.++ var1143 var700)))
(assert true)
(define-const var2318 String (toString/-2075883882 var2228)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), lhs/272491054=([org.hibernate.criterion.LogicalExpression], org.hibernate.criterion.Criterion), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3043-to-var3318=([org.hibernate.criterion.Criterion], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getOp/556624489=([org.hibernate.criterion.LogicalExpression], java.lang.String), rhs/272491054=([org.hibernate.criterion.LogicalExpression], org.hibernate.criterion.Criterion), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3747=org.hibernate.criterion.LogicalExpression, var2807=r1, var3353=$r0, var3043=org.hibernate.criterion.Criterion, var3632=$r2, var3318=java.lang.Object, var1654=$r3, var1972=$r4, var3219=$r6, var456=$r5, var1213=$r7, var1143=$r10, var104=$r8, var700=$r9, var2228=$r11, var2318=$r12}
; {org.hibernate.criterion.LogicalExpression=var3747, r1=var2807, $r0=var3353, org.hibernate.criterion.Criterion=var3043, $r2=var3632, java.lang.Object=var3318, $r3=var1654, $r4=var1972, $r6=var3219, $r5=var456, $r7=var1213, $r10=var1143, $r8=var104, $r9=var700, $r11=var2228, $r12=var2318}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.LogicalExpression;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion lhs>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r5 = virtualinvoke r1.<org.hibernate.criterion.LogicalExpression: java.lang.String getOp()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion rhs>;	$r9 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1