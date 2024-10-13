(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3758 0)
(declare-sort var658 0)
(declare-sort var2401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2401_isNotEmpty/-74719548 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2401_unqualify/-238008441 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3758 var3758)
(declare-const null-String String)
(declare-const var2006 var3758) ; Statement: r8 := @this: org.hibernate.cfg.EJB3NamingStrategy 
(assert (not (= var2006 null-var3758)))
(declare-const var2267 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2267 null-String)))
(declare-const var892 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var892 null-String)))
(declare-const var1239 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1239 null-String)))
(define-const var132 Bool (var2401_isNotEmpty/-74719548 var2267)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var132 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3015 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3015)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3015!1 String)
(assert (= var3015!1 ""))
(define-const var429 String (var2401_unqualify/-238008441 var892)) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r2) 
(assert true)
(define-const var3579 String (append/672562846 var3015!1 var429)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3015!2 String)
(assert (= var3015!2 (str.++ var3015!1 var429)))
(assert true)
(define-const var3552 String (append/672562846 var3579 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3579!1 String)
(assert (= var3579!1 (str.++ var3579 "_")))
(assert true)
(define-const var700 String (append/672562846 var3552 var1239)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3552!1 String)
(assert (= var3552!1 (str.++ var3552 var1239)))
(assert true)
(define-const var1647 String (toString/-2075883882 var700)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2401_isNotEmpty/-74719548=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2401_unqualify/-238008441=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3758=org.hibernate.cfg.EJB3NamingStrategy, var2006=r8, var2267=r0, var658=null_type, var892=r2, var1239=r5, var2401=org.hibernate.internal.util.StringHelper, var132=$z0, var3015=$r1, var429=$r3, var3579=$r4, var3552=$r6, var700=$r7, var1647=$r9}
; {org.hibernate.cfg.EJB3NamingStrategy=var3758, r8=var2006, r0=var2267, null_type=var658, r2=var892, r5=var1239, org.hibernate.internal.util.StringHelper=var2401, $z0=var132, $r1=var3015, $r3=var429, $r4=var3579, $r6=var3552, $r7=var700, $r9=var1647}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.cfg.EJB3NamingStrategy;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r2);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3