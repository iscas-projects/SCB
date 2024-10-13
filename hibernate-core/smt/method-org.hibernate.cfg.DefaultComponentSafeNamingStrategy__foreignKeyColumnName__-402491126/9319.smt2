(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1453 0)
(declare-sort var769 0)
(declare-sort var2728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun columnName/410591817 (var2728 String) String)
(declare-fun cast-from-var1453-to-var2728 (var1453) var2728)
(declare-const null-var1453 var1453)
(declare-const null-String String)
(declare-const var2661 var1453) ; Statement: r2 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy 
(assert (not (= var2661 null-var1453)))
(declare-const var2257 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2257 null-String)))
(declare-const var942 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var942 null-String)))
(declare-const var538 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var538 null-String)))
(declare-const var2578 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var2578 null-String)))
 ; Statement: if r0 == null goto $r12 = r1 
(assert (= var2257 null-String)) ; Cond: r0 == null 
(define-const var1878 String var538) ; Statement: $r12 = r1 
(assert true) ; Non Conditional
 ; Statement: if $r12 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var1878 null-String))) ; Cond: $r12 != null 
(define-const var989 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var989)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var989!1 String)
(assert (= var989!1 ""))
(assert true)
(define-const var1964 String (append/672562846 var989!1 var1878)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var989!2 String)
(assert (= var989!2 (str.++ var989!1 var1878)))
(assert true)
(define-const var3696 String (append/672562846 var1964 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var1964!1 String)
(assert (= var1964!1 (str.++ var1964 "_")))
(assert true)
(define-const var2326 String (append/672562846 var3696 var2578)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3696!1 String)
(assert (= var3696!1 (str.++ var3696 var2578)))
(assert true)
(define-const var1679 String (toString/-2075883882 var2326)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1654 String (columnName/410591817 (cast-from-var1453-to-var2728 var2661) var1679)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String columnName(java.lang.String)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), columnName/410591817=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String), cast-from-var1453-to-var2728=([org.hibernate.cfg.DefaultComponentSafeNamingStrategy], org.hibernate.cfg.EJB3NamingStrategy)}
; {var1453=org.hibernate.cfg.DefaultComponentSafeNamingStrategy, var2661=r2, var2257=r0, var769=null_type, var942=r11, var538=r1, var2578=r5, var1878=$r12, var989=$r3, var1964=$r4, var3696=$r6, var2326=$r7, var1679=$r8, var2728=org.hibernate.cfg.EJB3NamingStrategy, var1654=$r9}
; {org.hibernate.cfg.DefaultComponentSafeNamingStrategy=var1453, r2=var2661, r0=var2257, null_type=var769, r11=var942, r1=var538, r5=var2578, $r12=var1878, $r3=var989, $r4=var1964, $r6=var3696, $r7=var2326, $r8=var1679, org.hibernate.cfg.EJB3NamingStrategy=var2728, $r9=var1654}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy;	r0 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	if r0 == null goto $r12 = r1;	$r12 = r1;	if $r12 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r2.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String columnName(java.lang.String)>($r8);	return $r9
;block_num 4