(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var124 0)
(declare-sort var2013 0)
(declare-sort var524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var124_addUnderscores/-513904763 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun tableName/-691103487 (var524 String) String)
(declare-fun cast-from-var124-to-var524 (var124) var524)
(declare-const null-var124 var124)
(declare-const null-String String)
(declare-const var3265 var124) ; Statement: r0 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy 
(assert (not (= var3265 null-var124)))
(declare-const var749 String) ; Statement: r9 := @parameter0: java.lang.String 
(assert (not (= var749 null-String)))
(declare-const var2693 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2693 null-String)))
(declare-const var3260 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3260 null-String)))
(declare-const var2523 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var2523 null-String)))
(declare-const var3990 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var3990 null-String)))
(define-const var2211 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2211 var2693)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2) 
(declare-const var2211!1 String)
(assert (= var2211!1 var2693))
(assert true)
(define-const var3082 String (append/672562846 var2211!1 "_")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_") 
(declare-const var2211!2 String)
(assert (= var2211!2 (str.++ var2211!1 "_")))
 ; Statement: if r3 == null goto $r11 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r4) 
(assert (= var2523 null-String)) ; Cond: r3 == null 
(define-const var256 String (var124_addUnderscores/-513904763 var3990)) ; Statement: $r11 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r4) 
(assert true) ; Non Conditional
(assert true)
(define-const var2578 String (append/672562846 var3082 var256)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3082!1 String)
(assert (= var3082!1 (str.++ var3082 var256)))
(assert true)
(define-const var1534 String (toString/-2075883882 var2578)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2897 String (tableName/-691103487 (cast-from-var124-to-var524 var3265) var1534)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String tableName(java.lang.String)>($r7) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var124_addUnderscores/-513904763=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), tableName/-691103487=([org.hibernate.cfg.EJB3NamingStrategy, java.lang.String], java.lang.String), cast-from-var124-to-var524=([org.hibernate.cfg.DefaultComponentSafeNamingStrategy], org.hibernate.cfg.EJB3NamingStrategy)}
; {var124=org.hibernate.cfg.DefaultComponentSafeNamingStrategy, var3265=r0, var749=r9, var2013=null_type, var2693=r2, var3260=r10, var2523=r3, var3990=r4, var2211=$r1, var3082=$r5, var256=$r11, var2578=$r6, var1534=$r7, var524=org.hibernate.cfg.EJB3NamingStrategy, var2897=$r8}
; {org.hibernate.cfg.DefaultComponentSafeNamingStrategy=var124, r0=var3265, r9=var749, null_type=var2013, r2=var2693, r10=var3260, r3=var2523, r4=var3990, $r1=var2211, $r5=var3082, $r11=var256, $r6=var2578, $r7=var1534, org.hibernate.cfg.EJB3NamingStrategy=var524, $r8=var2897}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy;	r9 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r2);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_");	if r3 == null goto $r11 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r4);	$r11 = staticinvoke <org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String addUnderscores(java.lang.String)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r0.<org.hibernate.cfg.DefaultComponentSafeNamingStrategy: java.lang.String tableName(java.lang.String)>($r7);	return $r8
;block_num 3