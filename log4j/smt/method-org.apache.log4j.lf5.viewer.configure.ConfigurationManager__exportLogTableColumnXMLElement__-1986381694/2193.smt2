(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3372 0)
(declare-sort var2413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166642301 (String Bool) String)
(declare-const null-var3372 var3372)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2714 var3372) ; Statement: r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var2714 null-var3372)))
(declare-const var1659 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1659 null-String)))
(declare-const var1075 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1075 null-Bool)))
(declare-const var2165 String) ; Statement: r0 := @parameter2: java.lang.StringBuffer 
(assert (not (= var2165 null-String)))
(assert true)
(define-const var1454 String (append/1560614132 var2165 "\t\t<")) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t\t<") 
(declare-const var2165!1 String)
(assert (str.prefixof var2165 var2165!1))
(assert true)
(define-const var511 String (append/1560614132 var1454 "column")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("column") 
(declare-const var1454!1 String)
(assert (str.prefixof var1454 var1454!1))
(assert true)
(define-const var1238 String (append/1560614132 var511 " ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var511!1 String)
(assert (str.prefixof var511 var511!1))
(assert true)
;(assert (append/1560614132 var1238 "name")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("name") 
(declare-const var1238!1 String)
(assert (str.prefixof var1238 var1238!1))
(assert true)
(define-const var1987 String (append/1560614132 var2165!1 "=\u0022")) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"") 
(declare-const var2165!2 String)
(assert (str.prefixof var2165!1 var2165!2))
(assert true)
(define-const var2590 String (append/1560614132 var1987 var1659)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var1987!1 String)
(assert (str.prefixof var1987 var1987!1))
(assert true)
;(assert (append/1560614132 var2590 "\u0022 ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" ") 
(declare-const var2590!1 String)
(assert (str.prefixof var2590 var2590!1))
(assert true)
(define-const var1877 String (append/1560614132 var2165!2 "selected")) ; Statement: $r7 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("selected") 
(declare-const var2165!3 String)
(assert (str.prefixof var2165!2 var2165!3))
(assert true)
(define-const var2841 String (append/1560614132 var1877 "=\u0022")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"") 
(declare-const var1877!1 String)
(assert (str.prefixof var1877 var1877!1))
(assert true)
;(assert (append/-1166642301 var2841 var1075)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 

(declare-const var2841!1 String)
(declare-const var1075!1 Bool)
(assert true)
;(assert (append/1560614132 var2165!3 "\u0022/>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"/>\r\n") 
(declare-const var2165!4 String)
(assert (str.prefixof var2165!3 var2165!4))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer)}
; {var3372=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var2714=r9, var1659=r4, var2413=null_type, var1075=z0, var2165=r0, var1454=$r1, var511=$r2, var1238=$r3, var1987=$r5, var2590=$r6, var1877=$r7, var2841=$r8}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var3372, r9=var2714, r4=var1659, null_type=var2413, z0=var1075, r0=var2165, $r1=var1454, $r2=var511, $r3=var1238, $r5=var1987, $r6=var2590, $r7=var1877, $r8=var2841}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 10,"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1}
;stmts r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r4 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r0 := @parameter2: java.lang.StringBuffer;	$r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t\t<");	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("column");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("name");	$r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" ");	$r7 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("selected");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"");	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"/>\r\n");	return
;block_num 1