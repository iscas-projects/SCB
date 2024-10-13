(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1352 0)
(declare-sort var96 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var96_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1352 var1352)
(declare-const var877 var1352) ; Statement: r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var877 null-var1352)))
(define-const var1903 String (var96_getProperty/258823597 "user.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var1351 String (var96_getProperty/258823597 "file.separator")) ; Statement: r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.separator") 
(define-const var2814 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2814)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2814!1 String)
(assert true)
(define-const var3106 String (append/1560614132 var2814!1 var1903)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var2814!2 String)
(assert (str.prefixof var2814!1 var2814!2))
(assert true)
(define-const var2311 String (append/1560614132 var3106 var1351)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3106!1 String)
(assert (str.prefixof var3106 var3106!1))
(assert true)
(define-const var1074 String (append/1560614132 var2311 "lf5")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5") 
(declare-const var2311!1 String)
(assert (str.prefixof var2311 var2311!1))
(assert true)
(define-const var525 String (append/1560614132 var1074 var1351)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1074!1 String)
(assert (str.prefixof var1074 var1074!1))
(assert true)
(define-const var3440 String (append/1560614132 var525 "lf5_configuration.xml")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5_configuration.xml") 
(declare-const var525!1 String)
(assert (str.prefixof var525 var525!1))
(assert true)
(define-const var2513 String (toString/-222306083 var3440)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var96_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1352=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var877=r9, var96=java.lang.System, var1903=r0, var1351=r1, var2814=$r2, var3106=$r3, var2311=$r4, var1074=$r5, var525=$r6, var3440=$r7, var2513=$r8}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var1352, r9=var877, java.lang.System=var96, r0=var1903, r1=var1351, $r2=var2814, $r3=var3106, $r4=var2311, $r5=var1074, $r6=var525, $r7=var3440, $r8=var2513}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.separator");	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5_configuration.xml");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	return $r8
;block_num 1