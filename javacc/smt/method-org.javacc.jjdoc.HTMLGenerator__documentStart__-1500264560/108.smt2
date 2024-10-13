(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3076 0)
(declare-sort var2763 0)
(declare-sort var1279 0)
(declare-sort var474 0)
(declare-sort var1134 0)
(declare-sort var2338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun create_output_stream/1597595382 (var1279) var2763)
(declare-fun cast-from-var3076-to-var1279 (var3076) var1279)
(declare-fun ostr/154848238 (var1279) var2763)
(declare-fun println/-1852303283 (var3076 String) void)
(declare-fun var474_getCSS/-2007211491 () String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3076 var3076)
(declare-const var1134-input_file String)
(declare-const null-String String)
(declare-const var3421 var3076) ; Statement: r0 := @this: org.javacc.jjdoc.HTMLGenerator 
(assert (not (= var3421 null-var3076)))
(assert true)
(define-const var1215 var2763 (create_output_stream/1597595382 (cast-from-var3076-to-var1279 var3421))) ; Statement: $r1 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter create_output_stream()>() 
(declare-const var3421!1 var3076)
(assert (not (= var3421!1 null-var3076)))
(assert (= (ostr/154848238 (cast-from-var3076-to-var1279 var3421!1)) var1215)) ; Statement: r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter ostr> = $r1 
(assert true)
;(assert (println/-1852303283 var3421!1 "<!DOCTYPE HTML PUBLIC \u0022-//W3C//DTD HTML 3.2//EN\u0022>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">") 

(declare-const var3421!2 var3076)
(declare-const var3695 String)
(assert true)
;(assert (println/-1852303283 var3421!2 "<HTML>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HTML>") 

(declare-const var3421!3 var3076)
(declare-const var809 String)
(assert true)
;(assert (println/-1852303283 var3421!3 "<HEAD>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HEAD>") 

(declare-const var3421!4 var3076)
(declare-const var405 String)
(define-const var731 String "") ; Statement: $r3 = "" 
(define-const var2077 String var474_getCSS/-2007211491) ; Statement: $r2 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getCSS()>() 
(assert true)
(define-const var309 Bool (= var731 var2077)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert (not (= (ite var309 1 0) 0))) ; Cond: $z0 != 0 
(define-const var999 String var1134-input_file) ; Statement: $r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
 ; Statement: if $r4 == null goto specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TITLE>A BNF grammar by JJDoc</TITLE>") 
(assert (not (= var999 null-String))) ; Negate: Cond: $r4 == null  
(define-const var82 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var82)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var82!1 String)
(assert (= var82!1 ""))
(assert true)
(define-const var3017 String (append/672562846 var82!1 "<TITLE>BNF for ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<TITLE>BNF for ") 
(declare-const var82!2 String)
(assert (= var82!2 (str.++ var82!1 "<TITLE>BNF for ")))
(define-const var1830 String var1134-input_file) ; Statement: $r12 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert true)
(define-const var1934 String (append/672562846 var3017 var1830)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3017!1 String)
(assert (= var3017!1 (str.++ var3017 var1830)))
(assert true)
(define-const var1596 String (append/672562846 var1934 "</TITLE>")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</TITLE>") 
(declare-const var1934!1 String)
(assert (= var1934!1 (str.++ var1934 "</TITLE>")))
(assert true)
(define-const var2445 String (toString/-2075883882 var1596)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1852303283 var3421!4 var2445)) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r16) 

(declare-const var3421!5 var3076)
(declare-const var2445!1 String)
 ; Statement: goto [?= specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("</HEAD>")] 
(assert true) ; Non Conditional
(assert true)
;(assert (println/-1852303283 var3421!5 "</HEAD>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("</HEAD>") 

(declare-const var3421!6 var3076)
(declare-const var2619 String)
(assert true)
;(assert (println/-1852303283 var3421!6 "<BODY>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<BODY>") 

(declare-const var3421!7 var3076)
(declare-const var3539 String)
(define-const var593 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var593)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var593!1 String)
(assert (= var593!1 ""))
(assert true)
(define-const var820 String (append/672562846 var593!1 "<H1 ALIGN=CENTER>BNF for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<H1 ALIGN=CENTER>BNF for ") 
(declare-const var593!2 String)
(assert (= var593!2 (str.++ var593!1 "<H1 ALIGN=CENTER>BNF for ")))
(define-const var1466 String var1134-input_file) ; Statement: $r6 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert true)
(define-const var479 String (append/672562846 var820 var1466)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var820!1 String)
(assert (= var820!1 (str.++ var820 var1466)))
(assert true)
(define-const var1941 String (append/672562846 var479 "</H1>")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</H1>") 
(declare-const var479!1 String)
(assert (= var479!1 (str.++ var479 "</H1>")))
(assert true)
(define-const var334 String (toString/-2075883882 var1941)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1852303283 var3421!7 var334)) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r10) 

(declare-const var3421!8 var3076)
(declare-const var334!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {create_output_stream/1597595382=([org.javacc.jjdoc.TextGenerator], java.io.PrintWriter), cast-from-var3076-to-var1279=([org.javacc.jjdoc.HTMLGenerator], org.javacc.jjdoc.TextGenerator), ostr/154848238=([org.javacc.jjdoc.TextGenerator], java.io.PrintWriter), println/-1852303283=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], void), var474_getCSS/-2007211491=([], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3076=org.javacc.jjdoc.HTMLGenerator, var3421=r0, var2763=java.io.PrintWriter, var1279=org.javacc.jjdoc.TextGenerator, var1215=$r1, var3695="<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">", var809="<HTML>", var405="<HEAD>", var731=$r3, var474=org.javacc.jjdoc.JJDocOptions, var2077=$r2, var309=$z0, var1134=org.javacc.jjdoc.JJDocGlobals, var999=$r4, var2338=null_type, var82=$r11, var3017=$r13, var1830=$r12, var1934=$r14, var1596=$r15, var2445=$r16, var2619="</HEAD>", var3539="<BODY>", var593=$r5, var820=$r7, var1466=$r6, var479=$r8, var1941=$r9, var334=$r10}
; {org.javacc.jjdoc.HTMLGenerator=var3076, r0=var3421, java.io.PrintWriter=var2763, org.javacc.jjdoc.TextGenerator=var1279, $r1=var1215, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">"=var3695, "<HTML>"=var809, "<HEAD>"=var405, $r3=var731, org.javacc.jjdoc.JJDocOptions=var474, $r2=var2077, $z0=var309, org.javacc.jjdoc.JJDocGlobals=var1134, $r4=var999, null_type=var2338, $r11=var82, $r13=var3017, $r12=var1830, $r14=var1934, $r15=var1596, $r16=var2445, "</HEAD>"=var2619, "<BODY>"=var3539, $r5=var593, $r7=var820, $r6=var1466, $r8=var479, $r9=var1941, $r10=var334}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.javacc.jjdoc.HTMLGenerator;	$r1 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter create_output_stream()>();	r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter ostr> = $r1;	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HTML>");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HEAD>");	$r3 = "";	$r2 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getCSS()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	if $r4 == null goto specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TITLE>A BNF grammar by JJDoc</TITLE>");	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<TITLE>BNF for ");	$r12 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</TITLE>");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r16);	goto [?= specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("</HEAD>")];	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("</HEAD>");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<BODY>");	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<H1 ALIGN=CENTER>BNF for ");	$r6 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</H1>");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r10);	return
;block_num 4