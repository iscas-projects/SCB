(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2382 0)
(declare-sort var35 0)
(declare-sort var97 0)
(declare-sort var3761 0)
(declare-sort var575 0)
(declare-sort var2345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun create_output_stream/1597595382 (var97) var35)
(declare-fun cast-from-var2382-to-var97 (var2382) var97)
(declare-fun ostr/154848238 (var97) var35)
(declare-fun println/-1852303283 (var2382 String) void)
(declare-fun var3761_getCSS/-2007211491 () String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2382 var2382)
(declare-const var575-input_file String)
(declare-const null-String String)
(declare-const var2409 var2382) ; Statement: r0 := @this: org.javacc.jjdoc.HTMLGenerator 
(assert (not (= var2409 null-var2382)))
(assert true)
(define-const var1597 var35 (create_output_stream/1597595382 (cast-from-var2382-to-var97 var2409))) ; Statement: $r1 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter create_output_stream()>() 
(declare-const var2409!1 var2382)
(assert (not (= var2409!1 null-var2382)))
(assert (= (ostr/154848238 (cast-from-var2382-to-var97 var2409!1)) var1597)) ; Statement: r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter ostr> = $r1 
(assert true)
;(assert (println/-1852303283 var2409!1 "<!DOCTYPE HTML PUBLIC \u0022-//W3C//DTD HTML 3.2//EN\u0022>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">") 

(declare-const var2409!2 var2382)
(declare-const var3764 String)
(assert true)
;(assert (println/-1852303283 var2409!2 "<HTML>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HTML>") 

(declare-const var2409!3 var2382)
(declare-const var2697 String)
(assert true)
;(assert (println/-1852303283 var2409!3 "<HEAD>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HEAD>") 

(declare-const var2409!4 var2382)
(declare-const var3060 String)
(define-const var3233 String "") ; Statement: $r3 = "" 
(define-const var876 String var3761_getCSS/-2007211491) ; Statement: $r2 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getCSS()>() 
(assert true)
(define-const var2938 Bool (= var3233 var876)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert (not (= (ite var2938 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2916 String var575-input_file) ; Statement: $r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
 ; Statement: if $r4 == null goto specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TITLE>A BNF grammar by JJDoc</TITLE>") 
(assert (= var2916 null-String)) ; Cond: $r4 == null 
(assert true)
;(assert (println/-1852303283 var2409!4 "<TITLE>A BNF grammar by JJDoc</TITLE>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TITLE>A BNF grammar by JJDoc</TITLE>") 

(declare-const var2409!5 var2382)
(declare-const var246 String)
(assert true) ; Non Conditional
(assert true)
;(assert (println/-1852303283 var2409!5 "</HEAD>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("</HEAD>") 

(declare-const var2409!6 var2382)
(declare-const var1762 String)
(assert true)
;(assert (println/-1852303283 var2409!6 "<BODY>")) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<BODY>") 

(declare-const var2409!7 var2382)
(declare-const var527 String)
(define-const var82 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var82)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var82!1 String)
(assert (= var82!1 ""))
(assert true)
(define-const var1042 String (append/672562846 var82!1 "<H1 ALIGN=CENTER>BNF for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<H1 ALIGN=CENTER>BNF for ") 
(declare-const var82!2 String)
(assert (= var82!2 (str.++ var82!1 "<H1 ALIGN=CENTER>BNF for ")))
(define-const var1458 String var575-input_file) ; Statement: $r6 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file> 
(assert true)
(define-const var894 String (append/672562846 var1042 var1458)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1042!1 String)
(assert (= var1042!1 (str.++ var1042 var1458)))
(assert true)
(define-const var1841 String (append/672562846 var894 "</H1>")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</H1>") 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 "</H1>")))
(assert true)
(define-const var3696 String (toString/-2075883882 var1841)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1852303283 var2409!7 var3696)) ; Statement: specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r10) 

(declare-const var2409!8 var2382)
(declare-const var3696!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {create_output_stream/1597595382=([org.javacc.jjdoc.TextGenerator], java.io.PrintWriter), cast-from-var2382-to-var97=([org.javacc.jjdoc.HTMLGenerator], org.javacc.jjdoc.TextGenerator), ostr/154848238=([org.javacc.jjdoc.TextGenerator], java.io.PrintWriter), println/-1852303283=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], void), var3761_getCSS/-2007211491=([], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2382=org.javacc.jjdoc.HTMLGenerator, var2409=r0, var35=java.io.PrintWriter, var97=org.javacc.jjdoc.TextGenerator, var1597=$r1, var3764="<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">", var2697="<HTML>", var3060="<HEAD>", var3233=$r3, var3761=org.javacc.jjdoc.JJDocOptions, var876=$r2, var2938=$z0, var575=org.javacc.jjdoc.JJDocGlobals, var2916=$r4, var2345=null_type, var246="<TITLE>A BNF grammar by JJDoc</TITLE>", var1762="</HEAD>", var527="<BODY>", var82=$r5, var1042=$r7, var1458=$r6, var894=$r8, var1841=$r9, var3696=$r10}
; {org.javacc.jjdoc.HTMLGenerator=var2382, r0=var2409, java.io.PrintWriter=var35, org.javacc.jjdoc.TextGenerator=var97, $r1=var1597, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">"=var3764, "<HTML>"=var2697, "<HEAD>"=var3060, $r3=var3233, org.javacc.jjdoc.JJDocOptions=var3761, $r2=var876, $z0=var2938, org.javacc.jjdoc.JJDocGlobals=var575, $r4=var2916, null_type=var2345, "<TITLE>A BNF grammar by JJDoc</TITLE>"=var246, "</HEAD>"=var1762, "<BODY>"=var527, $r5=var82, $r7=var1042, $r6=var1458, $r8=var894, $r9=var1841, $r10=var3696}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.HTMLGenerator;	$r1 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter create_output_stream()>();	r0.<org.javacc.jjdoc.HTMLGenerator: java.io.PrintWriter ostr> = $r1;	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\">");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HTML>");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<HEAD>");	$r3 = "";	$r2 = staticinvoke <org.javacc.jjdoc.JJDocOptions: java.lang.String getCSS()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$r4 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	if $r4 == null goto specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TITLE>A BNF grammar by JJDoc</TITLE>");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<TITLE>A BNF grammar by JJDoc</TITLE>");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("</HEAD>");	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>("<BODY>");	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<H1 ALIGN=CENTER>BNF for ");	$r6 = <org.javacc.jjdoc.JJDocGlobals: java.lang.String input_file>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("</H1>");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void println(java.lang.String)>($r10);	return
;block_num 4