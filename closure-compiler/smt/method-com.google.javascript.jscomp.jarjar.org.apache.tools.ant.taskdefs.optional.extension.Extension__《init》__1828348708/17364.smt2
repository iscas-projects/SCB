(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2024 0)
(declare-sort var1260 0)
(declare-sort var3759 0)
(declare-sort var556 0)
(declare-sort var3615 0)
(declare-sort var1905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3759) void)
(declare-fun cast-from-var2024-to-var3759 (var2024) var3759)
(declare-fun extensionName/349185246 (var2024) String)
(declare-fun specificationVendor/349185246 (var2024) String)
(declare-fun var556-init () var556)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3759) String)
(declare-fun cast-from-var3615-to-var3759 (var3615) var3759)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1905-init () var1905)
(declare-fun <init>/875830710 (var1905 String) void)
(declare-const null-var2024 var2024)
(declare-const null-String String)
(declare-const null-var3615 var3615)
(declare-const var2164 var2024) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension 
(assert (not (= var2164 null-var2024)))
(declare-const var2380 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2380 null-String)))
(declare-const var2004 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2004 null-String)))
(declare-const var2156 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2156 null-String)))
(declare-const var3557 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var3557 null-String)))
(declare-const var829 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var829 null-String)))
(declare-const var1847 String) ; Statement: r6 := @parameter5: java.lang.String 
(assert (not (= var1847 null-String)))
(declare-const var2754 String) ; Statement: r4 := @parameter6: java.lang.String 
(assert (not (= var2754 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2024-to-var3759 var2164))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2164!1 var2024)
(declare-const var2164!2 var2024)
(assert (not (= var2164!2 null-var2024)))
(assert (= (extensionName/349185246 var2164!2) var2380)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String extensionName> = r1 
(declare-const var2164!3 var2024)
(assert (not (= var2164!3 null-var2024)))
(assert (= (specificationVendor/349185246 var2164!3) var2156)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String specificationVendor> = r2 
 ; Statement: if null == r3 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationURL> = r4 
(assert (not (= null-String var2004))) ; Negate: Cond: null == r3  
(define-const var1021 var556 var556-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3200 var3615) ; Statement: $r22 := @caughtexception 
(assert (not (= var3200 null-var3615)))
(define-const var1724 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1724)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1724!1 String)
(assert (= var1724!1 ""))
(assert true)
(define-const var1697 String (append/672562846 var1724!1 "Bad specification version format \u0027")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad specification version format \'") 
(declare-const var1724!2 String)
(assert (= var1724!2 (str.++ var1724!1 "Bad specification version format \u0027")))
(assert true)
(define-const var879 String (append/672562846 var1697 var2004)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1697!1 String)
(assert (= var1697!1 (str.++ var1697 var2004)))
(assert true)
(define-const var145 String (append/672562846 var879 "\u0027 in \u0027")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'") 
(declare-const var879!1 String)
(assert (= var879!1 (str.++ var879 "\u0027 in \u0027")))
(assert true)
(define-const var3927 String (append/672562846 var145 var2380)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var145!1 String)
(assert (= var145!1 (str.++ var145 var2380)))
(assert true)
(define-const var2456 String (append/672562846 var3927 "\u0027. (Reason: ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. (Reason: ") 
(declare-const var3927!1 String)
(assert (= var3927!1 (str.++ var3927 "\u0027. (Reason: ")))
(assert true)
(define-const var3124 String (append/-1031950772 var2456 (cast-from-var3615-to-var3759 var3200))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r22) 
(declare-const var2456!1 String)
(assert (str.prefixof var2456 var2456!1))
(assert true)
(define-const var3918 String (append/672562846 var3124 ")")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3124!1 String)
(assert (= var3124!1 (str.++ var3124 ")")))
(assert true)
(define-const var3531 String (toString/-2075883882 var3918)) ; Statement: r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2804 var1905 var1905-init) ; Statement: $r31 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2804 var3531)) ; Statement: specialinvoke $r31.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r32) 

(declare-const var2804!1 var1905)
(declare-const var3531!1 String)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2024-to-var3759=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.Object), extensionName/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), specificationVendor/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), var556-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3615-to-var3759=([java.lang.NumberFormatException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1905-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2024=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var2164=r0, var2380=r1, var1260=null_type, var2004=r3, var2156=r2, var3557=r7, var829=r5, var1847=r6, var2754=r4, var3759=java.lang.Object, var556=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal, var1021=$r11, var3615=java.lang.NumberFormatException, var3200=$r22, var1724=$r23, var1697=$r24, var879=$r25, var145=$r26, var3927=$r27, var2456=$r28, var3124=$r29, var3918=$r30, var3531=r32, var1905=java.lang.IllegalArgumentException, var2804=$r31}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var2024, r0=var2164, r1=var2380, null_type=var1260, r3=var2004, r2=var2156, r7=var3557, r5=var829, r6=var1847, r4=var2754, java.lang.Object=var3759, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal=var556, $r11=var1021, java.lang.NumberFormatException=var3615, $r22=var3200, $r23=var1724, $r24=var1697, $r25=var879, $r26=var145, $r27=var3927, $r28=var2456, $r29=var3124, $r30=var3918, r32=var3531, java.lang.IllegalArgumentException=var1905, $r31=var2804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r7 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String;	r6 := @parameter5: java.lang.String;	r4 := @parameter6: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String extensionName> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String specificationVendor> = r2;	if null == r3 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String implementationURL> = r4;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal;	$r22 := @caughtexception;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad specification version format \'");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'. (Reason: ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r22);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	$r31 = new java.lang.IllegalArgumentException;	specialinvoke $r31.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r32);	throw $r31
;block_num 3