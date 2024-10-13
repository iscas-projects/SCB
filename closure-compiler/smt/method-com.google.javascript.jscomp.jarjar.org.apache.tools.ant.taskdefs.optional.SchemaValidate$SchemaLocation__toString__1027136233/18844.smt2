(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1719 0)
(declare-sort var3099 0)
(declare-sort var3687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun namespace/374023441 (var1719) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/374023441 (var1719) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun file/374023441 (var1719) var3687)
(declare-fun getAbsolutePath/-802773300 (var3687) String)
(declare-const null-var1719 var1719)
(declare-const null-String String)
(declare-const null-var3687 var3687)
(declare-const var1456 var1719) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation 
(assert (not (= var1456 null-var1719)))
(define-const var3458 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3458)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3458!1 String)
(assert (= var3458!1 ""))
(define-const var1121 String (namespace/374023441 var1456)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
 ; Statement: if $r2 != null goto $r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace> 
(assert (not (not (= var1121 null-String)))) ; Negate: Cond: $r2 != null  
(define-const var3008 String "(anonymous)") ; Statement: $r18 = "(anonymous)" 
 ; Statement: goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3842 String (append/672562846 var3458!1 var3008)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3458!2 String)
(assert (= var3458!2 (str.++ var3458!1 var3008)))
(define-const var2606 String (url/374023441 var1456)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
 ; Statement: if $r3 != null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var2606 null-String))) ; Cond: $r3 != null 
(define-const var1776 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1776)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1776!1 String)
(assert (= var1776!1 ""))
(assert true)
(define-const var2385 String (append/672562846 var1776!1 " ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1776!2 String)
(assert (= var1776!2 (str.++ var1776!1 " ")))
(define-const var2257 String (url/374023441 var1456)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url> 
(assert true)
(define-const var2344 String (append/672562846 var2385 var2257)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2385!1 String)
(assert (= var2385!1 (str.++ var2385 var2257)))
(assert true)
(define-const var1937 String (toString/-2075883882 var2344)) ; Statement: $r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2703 String (append/672562846 var3842 var1937)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3842!1 String)
(assert (= var3842!1 (str.++ var3842 var1937)))
(define-const var1216 var3687 (file/374023441 var1456)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
 ; Statement: if $r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (= var1216 null-var3687))) ; Cond: $r9 != null 
(define-const var3777 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3777)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3777!1 String)
(assert (= var3777!1 ""))
(assert true)
(define-const var2574 String (append/672562846 var3777!1 " ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3777!2 String)
(assert (= var3777!2 (str.++ var3777!1 " ")))
(define-const var2401 var3687 (file/374023441 var1456)) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file> 
(assert true)
(define-const var921 String (getAbsolutePath/-802773300 var2401)) ; Statement: $r12 = virtualinvoke $r11.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var1897 String (append/672562846 var2574 var921)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2574!1 String)
(assert (= var2574!1 (str.++ var2574 var921)))
(assert true)
(define-const var575 String (toString/-2075883882 var1897)) ; Statement: $r20 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2950 String (append/672562846 var2703 var575)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2703!1 String)
(assert (= var2703!1 (str.++ var2703 var575)))
(assert true)
(define-const var774 String (toString/-2075883882 var2950)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), namespace/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), file/374023441=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation], java.io.File), getAbsolutePath/-802773300=([java.io.File], java.lang.String)}
; {var1719=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation, var1456=r1, var3458=$r0, var1121=$r2, var3099=null_type, var3008=$r18, var3842=$r8, var2606=$r3, var1776=$r4, var2385=$r6, var2257=$r5, var2344=$r7, var1937=$r19, var2703=$r15, var3687=java.io.File, var1216=$r9, var3777=$r10, var2574=$r13, var2401=$r11, var921=$r12, var1897=$r14, var575=$r20, var2950=$r16, var774=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation=var1719, r1=var1456, $r0=var3458, $r2=var1121, null_type=var3099, $r18=var3008, $r8=var3842, $r3=var2606, $r4=var1776, $r6=var2385, $r5=var2257, $r7=var2344, $r19=var1937, $r15=var2703, java.io.File=var3687, $r9=var1216, $r10=var3777, $r13=var2574, $r11=var2401, $r12=var921, $r14=var1897, $r20=var575, $r16=var2950, $r17=var774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	if $r2 != null goto $r18 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String namespace>;	$r18 = "(anonymous)";	goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)];	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	if $r3 != null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.lang.String url>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r19 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	if $r9 != null goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r11 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.SchemaValidate$SchemaLocation: java.io.File file>;	$r12 = virtualinvoke $r11.<java.io.File: java.lang.String getAbsolutePath()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r20 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 7