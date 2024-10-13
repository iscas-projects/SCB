(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort var1504 0)
(declare-sort var3992 0)
(declare-sort var2419 0)
(declare-sort var3141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var3992) ClassObject)
(declare-fun cast-from-var2106-to-var3992 (var2106) var3992)
(declare-fun templateName/1872402743 (var2106) String)
(declare-fun getResourceAsStream/2018191724 (ClassObject String) var2419)
(declare-fun var3141-init () var3141)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3141 String) void)
(declare-const null-var2106 var2106)
(declare-const null-var1504 var1504)
(declare-const null-var2419 var2419)
(declare-const var756 var2106) ; Statement: r0 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var756 null-var2106)))
(declare-const var2409 var1504) ; Statement: r6 := @parameter0: java.io.PrintWriter 
(assert (not (= var2409 null-var1504)))
(assert true)
(define-const var107 ClassObject (getClass/1258963082 (cast-from-var2106-to-var3992 var756))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1955 String (templateName/1872402743 var756)) ; Statement: $r1 = r0.<org.javacc.utils.OutputFileGenerator: java.lang.String templateName> 
(assert true)
(define-const var2528 var2419 (getResourceAsStream/2018191724 var107 var1955)) ; Statement: r3 = virtualinvoke $r2.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r1) 
 ; Statement: if r3 != null goto $r4 = new java.io.BufferedReader 
(assert (not (not (= var2528 null-var2419)))) ; Negate: Cond: r3 != null  
(define-const var2671 var3141 var3141-init) ; Statement: $r7 = new java.io.IOException 
(define-const var1919 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1919)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1919!1 String)
(assert (= var1919!1 ""))
(assert true)
(define-const var764 String (append/672562846 var1919!1 "Invalid template name: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid template name: ") 
(declare-const var1919!2 String)
(assert (= var1919!2 (str.++ var1919!1 "Invalid template name: ")))
(define-const var193 String (templateName/1872402743 var756)) ; Statement: $r9 = r0.<org.javacc.utils.OutputFileGenerator: java.lang.String templateName> 
(assert true)
(define-const var1531 String (append/672562846 var764 var193)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var764!1 String)
(assert (= var764!1 (str.++ var764 var193)))
(assert true)
(define-const var80 String (toString/-2075883882 var1531)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2671 var80)) ; Statement: specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String)>($r12) 

(declare-const var2671!1 var3141)
(declare-const var80!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2106-to-var3992=([org.javacc.utils.OutputFileGenerator], java.lang.Object), templateName/1872402743=([org.javacc.utils.OutputFileGenerator], java.lang.String), getResourceAsStream/2018191724=([java.lang.Class, java.lang.String], java.io.InputStream), var3141-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2106=org.javacc.utils.OutputFileGenerator, var756=r0, var1504=java.io.PrintWriter, var2409=r6, var3992=java.lang.Object, var107=$r2, var1955=$r1, var2419=java.io.InputStream, var2528=r3, var3141=java.io.IOException, var2671=$r7, var1919=$r8, var764=$r10, var193=$r9, var1531=$r11, var80=$r12}
; {org.javacc.utils.OutputFileGenerator=var2106, r0=var756, java.io.PrintWriter=var1504, r6=var2409, java.lang.Object=var3992, $r2=var107, $r1=var1955, java.io.InputStream=var2419, r3=var2528, java.io.IOException=var3141, $r7=var2671, $r8=var1919, $r10=var764, $r9=var193, $r11=var1531, $r12=var80}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.utils.OutputFileGenerator;	r6 := @parameter0: java.io.PrintWriter;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = r0.<org.javacc.utils.OutputFileGenerator: java.lang.String templateName>;	r3 = virtualinvoke $r2.<java.lang.Class: java.io.InputStream getResourceAsStream(java.lang.String)>($r1);	if r3 != null goto $r4 = new java.io.BufferedReader;	$r7 = new java.io.IOException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid template name: ");	$r9 = r0.<org.javacc.utils.OutputFileGenerator: java.lang.String templateName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.io.IOException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2