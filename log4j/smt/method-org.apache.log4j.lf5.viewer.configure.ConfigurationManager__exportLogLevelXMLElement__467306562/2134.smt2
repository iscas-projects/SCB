(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var204 0)
(declare-sort var934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166642301 (String Bool) String)
(declare-const null-var204 var204)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2922 var204) ; Statement: r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var2922 null-var204)))
(declare-const var3195 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3195 null-String)))
(declare-const var1229 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1229 null-Bool)))
(declare-const var2075 String) ; Statement: r0 := @parameter2: java.lang.StringBuffer 
(assert (not (= var2075 null-String)))
(assert true)
(define-const var2168 String (append/1560614132 var2075 "\t\t<")) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t\t<") 
(declare-const var2075!1 String)
(assert (str.prefixof var2075 var2075!1))
(assert true)
(define-const var2814 String (append/1560614132 var2168 "level")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("level") 
(declare-const var2168!1 String)
(assert (str.prefixof var2168 var2168!1))
(assert true)
(define-const var3186 String (append/1560614132 var2814 " ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var2814!1 String)
(assert (str.prefixof var2814 var2814!1))
(assert true)
;(assert (append/1560614132 var3186 "name")) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("name") 
(declare-const var3186!1 String)
(assert (str.prefixof var3186 var3186!1))
(assert true)
(define-const var3453 String (append/1560614132 var2075!1 "=\u0022")) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"") 
(declare-const var2075!2 String)
(assert (str.prefixof var2075!1 var2075!2))
(assert true)
(define-const var3158 String (append/1560614132 var3453 var3195)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var3453!1 String)
(assert (str.prefixof var3453 var3453!1))
(assert true)
;(assert (append/1560614132 var3158 "\u0022 ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" ") 
(declare-const var3158!1 String)
(assert (str.prefixof var3158 var3158!1))
(assert true)
(define-const var1990 String (append/1560614132 var2075!2 "selected")) ; Statement: $r7 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("selected") 
(declare-const var2075!3 String)
(assert (str.prefixof var2075!2 var2075!3))
(assert true)
(define-const var1048 String (append/1560614132 var1990 "=\u0022")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"") 
(declare-const var1990!1 String)
(assert (str.prefixof var1990 var1990!1))
(assert true)
;(assert (append/-1166642301 var1048 var1229)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 

(declare-const var1048!1 String)
(declare-const var1229!1 Bool)
(assert true)
;(assert (append/1560614132 var2075!3 "\u0022/>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"/>\r\n") 
(declare-const var2075!4 String)
(assert (str.prefixof var2075!3 var2075!4))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer)}
; {var204=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var2922=r9, var3195=r4, var934=null_type, var1229=z0, var2075=r0, var2168=$r1, var2814=$r2, var3186=$r3, var3453=$r5, var3158=$r6, var1990=$r7, var1048=$r8}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var204, r9=var2922, r4=var3195, null_type=var934, z0=var1229, r0=var2075, $r1=var2168, $r2=var2814, $r3=var3186, $r5=var3453, $r6=var3158, $r7=var1990, $r8=var1048}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 10,"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1}
;stmts r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r4 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r0 := @parameter2: java.lang.StringBuffer;	$r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t\t<");	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("level");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("name");	$r5 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" ");	$r7 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("selected");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"");	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"/>\r\n");	return
;block_num 1