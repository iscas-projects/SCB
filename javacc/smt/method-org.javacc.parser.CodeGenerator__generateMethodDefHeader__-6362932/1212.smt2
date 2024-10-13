(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var611 0)
(declare-sort var945 0)
(declare-sort var1611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var611) Bool)
(declare-fun arr-var1611-init () (Array Int var1611))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var1611 (String) var1611)
(declare-fun genCode/442726974 (var611 (Array Int var1611)) void)
(declare-fun genCodeLine/787715242 (var611 (Array Int var1611)) void)
(declare-const null-var611 var611)
(declare-const null-String String)
(declare-const null-__Array__Int__var1611__ (Array Int var1611))
(declare-const var2456 var611) ; Statement: r0 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var2456 null-var611)))
(declare-const var231 String) ; Statement: r34 := @parameter0: java.lang.String 
(assert (not (= var231 null-String)))
(declare-const var3315 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var3315 null-String)))
(declare-const var3429 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var3429 null-String)))
(declare-const var2200 String) ; Statement: r27 := @parameter3: java.lang.String 
(assert (not (= var2200 null-String)))
(assert true)
(define-const var363 Bool (isJavaLanguage/-1752064482 var2456)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer includeBuffer> 
(assert (not (= (ite var363 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3982 (Array Int var1611) arr-var1611-init) ; Statement: $r21 = newarray (java.lang.Object)[1] 
(define-const var3830 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3830)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3830!1 String)
(assert (= var3830!1 ""))
(assert true)
(define-const var3930 String (append/672562846 var3830!1 var231)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34) 
(declare-const var3830!2 String)
(assert (= var3830!2 (str.++ var3830!1 var231)))
(assert true)
(define-const var1797 String (append/672562846 var3930 " ")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3930!1 String)
(assert (= var3930!1 (str.++ var3930 " ")))
(assert true)
(define-const var1299 String (append/672562846 var1797 var3429)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1797!1 String)
(assert (= var1797!1 (str.++ var1797 var3429)))
(assert true)
(define-const var250 String (toString/-2075883882 var1299)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3982!1 (Array Int var1611))
(assert (not (= var3982!1 null-__Array__Int__var1611__)))
(assert (= (select var3982!1 0) (cast-from-String-to-var1611 var250))) ; Statement: $r21[0] = $r26 
(assert true)
;(assert (genCode/442726974 var2456 var3982!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r21) 

(declare-const var2456!1 var611)
(declare-const var3982!2 (Array Int var1611))
 ; Statement: if r27 == null goto $r28 = newarray (java.lang.Object)[1] 
(assert (= var2200 null-String)) ; Cond: r27 == null 
(define-const var2430 (Array Int var1611) arr-var1611-init) ; Statement: $r28 = newarray (java.lang.Object)[1] 
(declare-const var2430!1 (Array Int var1611))
(assert (not (= var2430!1 null-__Array__Int__var1611__)))
(assert (= (select var2430!1 0) (cast-from-String-to-var1611 ""))) ; Statement: $r28[0] = "" 
(assert true)
;(assert (genCodeLine/787715242 var2456!1 var2430!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28) 

(declare-const var2456!2 var611)
(declare-const var2430!2 (Array Int var1611))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), arr-var1611-init=([], java.lang.Object[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var1611=([java.lang.String], java.lang.Object), genCode/442726974=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void)}
; {var611=org.javacc.parser.CodeGenerator, var2456=r0, var231=r34, var945=null_type, var3315=r13, var3429=r4, var2200=r27, var363=$z0, var1611=java.lang.Object, var3982=$r21, var3830=$r22, var3930=$r23, var1797=$r24, var1299=$r25, var250=$r26, var2430=$r28}
; {org.javacc.parser.CodeGenerator=var611, r0=var2456, r34=var231, null_type=var945, r13=var3315, r4=var3429, r27=var2200, $z0=var363, java.lang.Object=var1611, $r21=var3982, $r22=var3830, $r23=var3930, $r24=var1797, $r25=var1299, $r26=var250, $r28=var2430}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.CodeGenerator;	r34 := @parameter0: java.lang.String;	r13 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	r27 := @parameter3: java.lang.String;	$z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 == 0 goto $r2 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer includeBuffer>;	$r21 = newarray (java.lang.Object)[1];	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r21[0] = $r26;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCode(java.lang.Object[])>($r21);	if r27 == null goto $r28 = newarray (java.lang.Object)[1];	$r28 = newarray (java.lang.Object)[1];	$r28[0] = "";	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r28);	goto [?= return];	return
;block_num 4