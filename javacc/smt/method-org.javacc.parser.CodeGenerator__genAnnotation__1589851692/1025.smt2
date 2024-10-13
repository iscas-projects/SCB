(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3817 0)
(declare-sort var46 0)
(declare-sort var2121 0)
(declare-sort var286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2121_isOutputLanguageJava/1735442213 () Bool)
(declare-fun arr-var286-init () (Array Int var286))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var286 (String) var286)
(declare-fun genCode/442726974 (var3817 (Array Int var286)) void)
(declare-const null-var3817 var3817)
(declare-const null-String String)
(declare-const null-__Array__Int__var286__ (Array Int var286))
(declare-const var1731 var3817) ; Statement: r7 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var1731 null-var3817)))
(declare-const var2013 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2013 null-String)))
(define-const var3710 Bool var2121_isOutputLanguageJava/1735442213) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>() 
 ; Statement: if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>() 
(assert (not (= (ite var3710 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3566 (Array Int var286) arr-var286-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(define-const var646 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var646)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var646!1 String)
(assert (= var646!1 ""))
(assert true)
(define-const var3549 String (append/672562846 var646!1 "@")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var646!2 String)
(assert (= var646!2 (str.++ var646!1 "@")))
(assert true)
(define-const var297 String (append/672562846 var3549 var2013)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3549!1 String)
(assert (= var3549!1 (str.++ var3549 var2013)))
(assert true)
(define-const var322 String (toString/-2075883882 var297)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3566!1 (Array Int var286))
(assert (not (= var3566!1 null-__Array__Int__var286__)))
(assert (= (select var3566!1 0) (cast-from-String-to-var286 var322))) ; Statement: $r15[0] = $r19 
(assert true)
;(assert (genCode/442726974 var1731 var3566!1)) ; Statement: virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r15) 

(declare-const var1731!1 var3817)
(declare-const var3566!2 (Array Int var286))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2121_isOutputLanguageJava/1735442213=([], boolean), arr-var286-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var286=([java.lang.String], java.lang.Object), genCode/442726974=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var3817=org.javacc.parser.CodeGenerator, var1731=r7, var2013=r10, var46=null_type, var2121=org.javacc.parser.Options, var3710=$z0, var286=java.lang.Object, var3566=$r15, var646=$r16, var3549=$r17, var297=$r18, var322=$r19}
; {org.javacc.parser.CodeGenerator=var3817, r7=var1731, r10=var2013, null_type=var46, org.javacc.parser.Options=var2121, $z0=var3710, java.lang.Object=var286, $r15=var3566, $r16=var646, $r17=var3549, $r18=var297, $r19=var322}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.javacc.parser.CodeGenerator;	r10 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.javacc.parser.Options: boolean isOutputLanguageJava()>();	if $z0 == 0 goto $r0 = staticinvoke <org.javacc.parser.Options: java.lang.String getOutputLanguage()>();	$r15 = newarray (java.lang.Object)[1];	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r15[0] = $r19;	virtualinvoke r7.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r15);	goto [?= return];	return
;block_num 3