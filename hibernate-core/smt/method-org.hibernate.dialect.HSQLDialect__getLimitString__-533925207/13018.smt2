(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1671 0)
(declare-sort var3404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hsqldbVersion/1410848242 (var1671) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1671 var1671)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1292 var1671) ; Statement: r0 := @this: org.hibernate.dialect.HSQLDialect 
(assert (not (= var1292 null-var1671)))
(declare-const var591 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var591 null-String)))
(declare-const var850 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var850 null-Bool)))
(define-const var2501 Int (hsqldbVersion/1410848242 var1292)) ; Statement: $i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion> 
 ; Statement: if $i0 >= 200 goto $r1 = new java.lang.StringBuilder 
(assert (>= var2501 200)) ; Cond: $i0 >= 200 
(define-const var1824 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1824)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1824!1 String)
(assert (= var1824!1 ""))
(assert true)
(define-const var2754 String (append/672562846 var1824!1 var591)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1824!2 String)
(assert (= var1824!2 (str.++ var1824!1 var591)))
 ; Statement: if z0 == 0 goto $r13 = " limit ?" 
(assert (= (ite var850 1 0) 0)) ; Cond: z0 == 0 
(define-const var458 String " limit ?") ; Statement: $r13 = " limit ?" 
(assert true) ; Non Conditional
(assert true)
(define-const var2373 String (append/672562846 var2754 var458)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2754!1 String)
(assert (= var2754!1 (str.++ var2754 var458)))
(assert true)
(define-const var2845 String (toString/-2075883882 var2373)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {hsqldbVersion/1410848242=([org.hibernate.dialect.HSQLDialect], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1671=org.hibernate.dialect.HSQLDialect, var1292=r0, var591=r2, var3404=null_type, var850=z0, var2501=$i0, var1824=$r1, var2754=$r3, var458=$r13, var2373=$r4, var2845=$r5}
; {org.hibernate.dialect.HSQLDialect=var1671, r0=var1292, r2=var591, null_type=var3404, z0=var850, $i0=var2501, $r1=var1824, $r3=var2754, $r13=var458, $r4=var2373, $r5=var2845}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.HSQLDialect;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$i0 = r0.<org.hibernate.dialect.HSQLDialect: int hsqldbVersion>;	if $i0 >= 200 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r13 = " limit ?";	$r13 = " limit ?";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 4