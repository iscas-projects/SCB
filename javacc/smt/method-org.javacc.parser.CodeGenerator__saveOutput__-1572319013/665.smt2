(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2492 0)
(declare-sort var2132 0)
(declare-sort var3899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJavaLanguage/-1752064482 (var2492) Bool)
(declare-fun mainBuffer/-1919349735 (var2492) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3899-init () var3899)
(declare-fun <init>/-1681595970 (var3899 String) void)
(declare-fun getName/1128186653 (var3899) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun insert/-1682204078 (String Int String) String)
(declare-fun saveOutput/-1548933952 (var2492 String String) void)
(declare-const null-var2492 var2492)
(declare-const null-String String)
(declare-const var1499 var2492) ; Statement: r0 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var1499 null-var2492)))
(declare-const var2396 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2396 null-String)))
(assert true)
(define-const var2605 Bool (isJavaLanguage/-1752064482 var1499)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>() 
 ; Statement: if $z0 != 0 goto $r60 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer> 
(assert (not (= (ite var2605 1 0) 0))) ; Cond: $z0 != 0 
(define-const var354 String (mainBuffer/-1919349735 var1499)) ; Statement: $r60 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer> 
(define-const var1880 String String-init) ; Statement: $r61 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1880)) ; Statement: specialinvoke $r61.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1880!1 String)
(assert (= var1880!1 ""))
(assert true)
(define-const var1420 String (append/672562846 var1880!1 "/* ")) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ") 
(declare-const var1880!2 String)
(assert (= var1880!2 (str.++ var1880!1 "/* ")))
(define-const var1370 var3899 var3899-init) ; Statement: $r63 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var1370 var2396)) ; Statement: specialinvoke $r63.<java.io.File: void <init>(java.lang.String)>(r1) 

(declare-const var1370!1 var3899)
(declare-const var2396!1 String)
(assert true)
(define-const var514 String (getName/1128186653 var1370!1)) ; Statement: $r64 = virtualinvoke $r63.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var3237 String (append/672562846 var1420 var514)) ; Statement: $r65 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r64) 
(declare-const var1420!1 String)
(assert (= var1420!1 (str.++ var1420 var514)))
(assert true)
(define-const var3319 String (append/672562846 var3237 " */\n")) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */\n") 
(declare-const var3237!1 String)
(assert (= var3237!1 (str.++ var3237 " */\n")))
(assert true)
(define-const var3095 String (toString/-2075883882 var3319)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (insert/-1682204078 var354 0 var3095)) ; Statement: virtualinvoke $r60.<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.String)>(0, $r67) 

(declare-const var354!1 String)
(declare-const var2813 Int)
(declare-const var3095!1 String)
(define-const var664 String (mainBuffer/-1919349735 var1499)) ; Statement: $r68 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer> 
(assert true)
;(assert (saveOutput/-1548933952 var1499 var2396!1 var664)) ; Statement: virtualinvoke r0.<org.javacc.parser.CodeGenerator: void saveOutput(java.lang.String,java.lang.StringBuffer)>(r1, $r68) 

(declare-const var1499!1 var2492)
(declare-const var2396!2 String)
(declare-const var664!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isJavaLanguage/-1752064482=([org.javacc.parser.CodeGenerator], boolean), mainBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3899-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/-1682204078=([java.lang.StringBuffer, int, java.lang.String], java.lang.StringBuffer), saveOutput/-1548933952=([org.javacc.parser.CodeGenerator, java.lang.String, java.lang.StringBuffer], void)}
; {var2492=org.javacc.parser.CodeGenerator, var1499=r0, var2396=r1, var2132=null_type, var2605=$z0, var354=$r60, var1880=$r61, var1420=$r62, var3899=java.io.File, var1370=$r63, var514=$r64, var3237=$r65, var3319=$r66, var3095=$r67, var2813=0, var664=$r68}
; {org.javacc.parser.CodeGenerator=var2492, r0=var1499, r1=var2396, null_type=var2132, $z0=var2605, $r60=var354, $r61=var1880, $r62=var1420, java.io.File=var3899, $r63=var1370, $r64=var514, $r65=var3237, $r66=var3319, $r67=var3095, 0=var2813, $r68=var664}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.String)>": 1}
;stmts r0 := @this: org.javacc.parser.CodeGenerator;	r1 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.javacc.parser.CodeGenerator: boolean isJavaLanguage()>();	if $z0 != 0 goto $r60 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer>;	$r60 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer>;	$r61 = new java.lang.StringBuilder;	specialinvoke $r61.<java.lang.StringBuilder: void <init>()>();	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/* ");	$r63 = new java.io.File;	specialinvoke $r63.<java.io.File: void <init>(java.lang.String)>(r1);	$r64 = virtualinvoke $r63.<java.io.File: java.lang.String getName()>();	$r65 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r64);	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */\n");	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r60.<java.lang.StringBuffer: java.lang.StringBuffer insert(int,java.lang.String)>(0, $r67);	$r68 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer>;	virtualinvoke r0.<org.javacc.parser.CodeGenerator: void saveOutput(java.lang.String,java.lang.StringBuffer)>(r1, $r68);	return
;block_num 2