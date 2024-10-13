(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3444 0)
(declare-sort var802 0)
(declare-sort var659 0)
(declare-sort var1386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun lhs/272491054 (var3444) var1386)
(declare-fun var1386_toSqlString/1157136267 (var1386 var802 var659) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getOp/556624489 (var3444) String)
(declare-fun rhs/272491054 (var3444) var1386)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3444 var3444)
(declare-const null-var802 var802)
(declare-const null-var659 var659)
(declare-const var3576 var3444) ; Statement: r1 := @this: org.hibernate.criterion.LogicalExpression 
(assert (not (= var3576 null-var3444)))
(declare-const var404 var802) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var404 null-var802)))
(declare-const var2982 var659) ; Statement: r3 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2982 null-var659)))
(define-const var1864 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1864)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1864!1 String)
(assert (= var1864!1 ""))
(assert true)
(define-const var2233 String (append/-1166366385 var1864!1 40)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1864!2 String)
(assert (str.prefixof var1864!1 var1864!2))
(define-const var2034 var1386 (lhs/272491054 var3576)) ; Statement: $r4 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion lhs> 
(define-const var872 String (var1386_toSqlString/1157136267 var2034 var404 var2982)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.criterion.Criterion: java.lang.String toSqlString(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r3) 
(assert true)
(define-const var1045 String (append/672562846 var2233 var872)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2233!1 String)
(assert (= var2233!1 (str.++ var2233 var872)))
(assert true)
(define-const var2763 String (append/-1166366385 var1045 32)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1045!1 String)
(assert (str.prefixof var1045 var1045!1))
(assert true)
(define-const var3117 String (getOp/556624489 var3576)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.criterion.LogicalExpression: java.lang.String getOp()>() 
(assert true)
(define-const var994 String (append/672562846 var2763 var3117)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2763!1 String)
(assert (= var2763!1 (str.++ var2763 var3117)))
(assert true)
(define-const var3399 String (append/-1166366385 var994 32)) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var994!1 String)
(assert (str.prefixof var994 var994!1))
(define-const var616 var1386 (rhs/272491054 var3576)) ; Statement: $r11 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion rhs> 
(define-const var2716 String (var1386_toSqlString/1157136267 var616 var404 var2982)) ; Statement: $r12 = interfaceinvoke $r11.<org.hibernate.criterion.Criterion: java.lang.String toSqlString(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r3) 
(assert true)
(define-const var3262 String (append/672562846 var3399 var2716)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3399!1 String)
(assert (= var3399!1 (str.++ var3399 var2716)))
(assert true)
(define-const var612 String (append/-1166366385 var3262 41)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3262!1 String)
(assert (str.prefixof var3262 var3262!1))
(assert true)
(define-const var2924 String (toString/-2075883882 var612)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), lhs/272491054=([org.hibernate.criterion.LogicalExpression], org.hibernate.criterion.Criterion), var1386_toSqlString/1157136267=([org.hibernate.criterion.Criterion, org.hibernate.Criteria, org.hibernate.criterion.CriteriaQuery], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getOp/556624489=([org.hibernate.criterion.LogicalExpression], java.lang.String), rhs/272491054=([org.hibernate.criterion.LogicalExpression], org.hibernate.criterion.Criterion), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3444=org.hibernate.criterion.LogicalExpression, var3576=r1, var802=org.hibernate.Criteria, var404=r2, var659=org.hibernate.criterion.CriteriaQuery, var2982=r3, var1864=$r0, var2233=$r6, var1386=org.hibernate.criterion.Criterion, var2034=$r4, var872=$r5, var1045=$r7, var2763=$r9, var3117=$r8, var994=$r10, var3399=$r13, var616=$r11, var2716=$r12, var3262=$r14, var612=$r15, var2924=$r16}
; {org.hibernate.criterion.LogicalExpression=var3444, r1=var3576, org.hibernate.Criteria=var802, r2=var404, org.hibernate.criterion.CriteriaQuery=var659, r3=var2982, $r0=var1864, $r6=var2233, org.hibernate.criterion.Criterion=var1386, $r4=var2034, $r5=var872, $r7=var1045, $r9=var2763, $r8=var3117, $r10=var994, $r13=var3399, $r11=var616, $r12=var2716, $r14=var3262, $r15=var612, $r16=var2924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.LogicalExpression;	r2 := @parameter0: org.hibernate.Criteria;	r3 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r4 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion lhs>;	$r5 = interfaceinvoke $r4.<org.hibernate.criterion.Criterion: java.lang.String toSqlString(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = virtualinvoke r1.<org.hibernate.criterion.LogicalExpression: java.lang.String getOp()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r11 = r1.<org.hibernate.criterion.LogicalExpression: org.hibernate.criterion.Criterion rhs>;	$r12 = interfaceinvoke $r11.<org.hibernate.criterion.Criterion: java.lang.String toSqlString(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r2, r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 1