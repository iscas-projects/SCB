(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var850 0)
(declare-sort var2363 0)
(declare-sort var1149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var850_addUnderscores/-513904763 (String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun columnName/410591817 (var1149 String) String)
(declare-fun cast-from-var850-to-var1149 (var850) var1149)
(declare-const null-var850 var850)
(declare-const null-String String)
(declare-const var3955 var850) ; Statement: r2 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy 
(assert (not (= var3955 null-var850)))
(declare-const var1441 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1441 null-String)))
(declare-const var2255 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var2255 null-String)))
(declare-const var2045 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2045 null-String)))
(declare-const var202 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var202 null-String)))
 ; Statement: if r0 == null goto $r12 = r1 
(assert (not (= var1441 null-String))) ; Negate: Cond: r0 == null  
(define-const var142 String (var850_addUnderscores/-513904763 var1441)) ; Statement: $r12 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r0) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r12 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var142 null-String))) ; Cond: $r12 != null 
(define-const var499 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var499)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var499!1 String)
(assert (= var499!1 ""))
(assert true)
(define-const var3958 String (append/672562846 var499!1 var142)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var499!2 String)
(assert (= var499!2 (str.++ var499!1 var142)))
(assert true)
(define-const var3650 String (append/672562846 var3958 "_")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var3958!1 String)
(assert (= var3958!1 (str.++ var3958 "_")))
(assert true)
(define-const var2010 String (append/672562846 var3650 var202)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3650!1 String)
(assert (= var3650!1 (str.++ var3650 var202)))
(assert true)
(define-const var2984 String (toString/-2075883882 var2010)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3233 String (columnName/410591817 (cast-from-var850-to-var1149 var3955) var2984)) ; Statement: $r9 = virtualinvoke r2.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String columnName(java.lang.String)>($r8) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var850_addUnderscores/-513904763=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), columnName/410591817=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String), cast-from-var850-to-var1149=([org.hibernate.cfg.DefaultComponentSafeNamingStrategy], org.hibernate.cfg.EJB3NamingStrategy)}
; {var850=org.hibernate.cfg.DefaultComponentSafeNamingStrategy, var3955=r2, var1441=r0, var2363=null_type, var2255=r11, var2045=r1, var202=r5, var142=$r12, var499=$r3, var3958=$r4, var3650=$r6, var2010=$r7, var2984=$r8, var1149=org.hibernate.cfg.EJB3NamingStrategy, var3233=$r9}
; {org.hibernate.cfg.DefaultComponentSafeNamingStrategy=var850, r2=var3955, r0=var1441, null_type=var2363, r11=var2255, r1=var2045, r5=var202, $r12=var142, $r3=var499, $r4=var3958, $r6=var3650, $r7=var2010, $r8=var2984, org.hibernate.cfg.EJB3NamingStrategy=var1149, $r9=var3233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy;	r0 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	if r0 == null goto $r12 = r1;	$r12 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r0);	goto [?= (branch)];	if $r12 != null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r2.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String columnName(java.lang.String)>($r8);	return $r9
;block_num 4