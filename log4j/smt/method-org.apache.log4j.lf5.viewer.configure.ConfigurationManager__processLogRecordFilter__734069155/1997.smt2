(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1137 0)
(declare-sort var3783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1137 var1137)
(declare-const null-String String)
(declare-const var530 var1137) ; Statement: r7 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var530 null-var1137)))
(declare-const var1192 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1192 null-String)))
(declare-const var3939 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3939 null-String)))
(assert true)
(define-const var250 String (append/1560614132 var3939 "\t<")) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<") 
(declare-const var3939!1 String)
(assert (str.prefixof var3939 var3939!1))
(assert true)
(define-const var2251 String (append/1560614132 var250 "searchtext")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("searchtext") 
(declare-const var250!1 String)
(assert (str.prefixof var250 var250!1))
(assert true)
;(assert (append/1560614132 var2251 " ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var2251!1 String)
(assert (str.prefixof var2251 var2251!1))
(assert true)
(define-const var3229 String (append/1560614132 var3939!1 "name")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("name") 
(declare-const var3939!2 String)
(assert (str.prefixof var3939!1 var3939!2))
(assert true)
(define-const var246 String (append/1560614132 var3229 "=\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"") 
(declare-const var3229!1 String)
(assert (str.prefixof var3229 var3229!1))
(assert true)
(define-const var882 String (append/1560614132 var246 var1192)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4) 
(declare-const var246!1 String)
(assert (str.prefixof var246 var246!1))
(assert true)
;(assert (append/1560614132 var882 "\u0022")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var882!1 String)
(assert (str.prefixof var882 var882!1))
(assert true)
;(assert (append/1560614132 var3939!2 "/>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("/>\r\n") 
(declare-const var3939!3 String)
(assert (str.prefixof var3939!2 var3939!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var1137=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var530=r7, var1192=r4, var3783=null_type, var3939=r0, var250=$r1, var2251=$r2, var3229=$r3, var246=$r5, var882=$r6}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var1137, r7=var530, r4=var1192, null_type=var3783, r0=var3939, $r1=var250, $r2=var2251, $r3=var3229, $r5=var246, $r6=var882}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 8}
;stmts r7 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.StringBuffer;	$r1 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<");	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("searchtext");	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r3 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("name");	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=\"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r4);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("/>\r\n");	return
;block_num 1