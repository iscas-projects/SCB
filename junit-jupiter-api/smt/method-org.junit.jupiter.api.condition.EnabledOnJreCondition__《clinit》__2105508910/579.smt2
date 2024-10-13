(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var142_getProperty/258823597 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-const var3485 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3485)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3485!1 String)
(assert (= var3485!1 ""))
(assert true)
(define-const var474 String (append/672562846 var3485!1 "Enabled on JRE version: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enabled on JRE version: ") 
(declare-const var3485!2 String)
(assert (= var3485!2 (str.++ var3485!1 "Enabled on JRE version: ")))
(define-const var2022 String (var142_getProperty/258823597 "java.version")) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version") 
(assert true)
(define-const var870 String (append/672562846 var474 var2022)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var474!1 String)
(assert (= var474!1 (str.++ var474 var2022)))
(assert true)
(define-const var910 String (toString/-2075883882 var870)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3821 String var910) ; Statement: <org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String ENABLED_ON_CURRENT_JRE> = $r4 
(define-const var2982 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2982)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2982!1 String)
(assert (= var2982!1 ""))
(assert true)
(define-const var702 String (append/672562846 var2982!1 "Disabled on JRE version: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Disabled on JRE version: ") 
(declare-const var2982!2 String)
(assert (= var2982!2 (str.++ var2982!1 "Disabled on JRE version: ")))
(define-const var2416 String (var142_getProperty/258823597 "java.version")) ; Statement: $r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version") 
(assert true)
(define-const var595 String (append/672562846 var702 var2416)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var702!1 String)
(assert (= var702!1 (str.++ var702 var2416)))
(assert true)
(define-const var1349 String (toString/-2075883882 var595)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1285 String var1349) ; Statement: <org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String DISABLED_ON_CURRENT_JRE> = $r9 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var142_getProperty/258823597=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3485=$r0, var474=$r2, var142=java.lang.System, var2022=$r1, var870=$r3, var910=$r4, var3821=<org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String ENABLED_ON_CURRENT_JRE>, var2982=$r5, var702=$r7, var2416=$r6, var595=$r8, var1349=$r9, var1285=<org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String DISABLED_ON_CURRENT_JRE>}
; {$r0=var3485, $r2=var474, java.lang.System=var142, $r1=var2022, $r3=var870, $r4=var910, <org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String ENABLED_ON_CURRENT_JRE>=var3821, $r5=var2982, $r7=var702, $r6=var2416, $r8=var595, $r9=var1349, <org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String DISABLED_ON_CURRENT_JRE>=var1285}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Enabled on JRE version: ");	$r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	<org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String ENABLED_ON_CURRENT_JRE> = $r4;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Disabled on JRE version: ");	$r6 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.version");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	<org.junit.jupiter.api.condition.EnabledOnJreCondition: java.lang.String DISABLED_ON_CURRENT_JRE> = $r9;	return
;block_num 1