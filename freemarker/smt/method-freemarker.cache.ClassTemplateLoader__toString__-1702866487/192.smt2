(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1864 0)
(declare-sort var612 0)
(declare-sort var1352 0)
(declare-sort var2672 0)
(declare-sort var1155 0)
(declare-sort var2352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var612_getClassNameForToString/-104682099 (var1352) String)
(declare-fun cast-from-var1864-to-var1352 (var1864) var1352)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resourceLoaderClass/498632177 (var1864) ClassObject)
(declare-fun classLoader/498632177 (var1864) var2672)
(declare-fun var1155_jQuote/-389260442 (var2352) String)
(declare-fun cast-from-var2672-to-var2352 (var2672) var2352)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun basePackagePath/498632177 (var1864) String)
(declare-fun var1155_jQuote/1315253176 (String) String)
(declare-const null-var1864 var1864)
(declare-const null-ClassObject ClassObject)
(declare-const var1598 var1864) ; Statement: r1 := @this: freemarker.cache.ClassTemplateLoader 
(assert (not (= var1598 null-var1864)))
(define-const var972 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var972)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var972!1 String)
(assert (= var972!1 ""))
(define-const var2529 String (var612_getClassNameForToString/-104682099 (cast-from-var1864-to-var1352 var1598))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
(define-const var940 String (append/672562846 var972!1 var2529)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var972!2 String)
(assert (= var972!2 (str.++ var972!1 var2529)))
(assert true)
(define-const var360 String (append/672562846 var940 "(")) ; Statement: $r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var940!1 String)
(assert (= var940!1 (str.++ var940 "(")))
(define-const var1098 ClassObject (resourceLoaderClass/498632177 var1598)) ; Statement: $r4 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass> 
 ; Statement: if $r4 == null goto $r5 = new java.lang.StringBuilder 
(assert (= var1098 null-ClassObject)) ; Cond: $r4 == null 
(define-const var1639 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1639)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1639!1 String)
(assert (= var1639!1 ""))
(assert true)
(define-const var1778 String (append/672562846 var1639!1 "classLoader=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("classLoader=") 
(declare-const var1639!2 String)
(assert (= var1639!2 (str.++ var1639!1 "classLoader=")))
(define-const var1756 var2672 (classLoader/498632177 var1598)) ; Statement: $r6 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.ClassLoader classLoader> 
(define-const var3601 String (var1155_jQuote/-389260442 (cast-from-var2672-to-var2352 var1756))) ; Statement: $r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.Object)>($r6) 
(assert true)
(define-const var1875 String (append/672562846 var1778 var3601)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1778!1 String)
(assert (= var1778!1 (str.++ var1778 var3601)))
(assert true)
(define-const var1035 String (toString/-2075883882 var1875)) ; Statement: $r22 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2765 String (append/672562846 var360 var1035)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var360!1 String)
(assert (= var360!1 (str.++ var360 var1035)))
(assert true)
(define-const var531 String (append/672562846 var2765 ", basePackagePath=")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", basePackagePath=") 
(declare-const var2765!1 String)
(assert (= var2765!1 (str.++ var2765 ", basePackagePath=")))
(define-const var465 String (basePackagePath/498632177 var1598)) ; Statement: $r12 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath> 
(define-const var3676 String (var1155_jQuote/1315253176 var465)) ; Statement: $r13 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r12) 
(assert true)
(define-const var762 String (append/672562846 var531 var3676)) ; Statement: $r23 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var531!1 String)
(assert (= var531!1 (str.++ var531 var3676)))
(define-const var2094 ClassObject (resourceLoaderClass/498632177 var1598)) ; Statement: $r15 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass> 
 ; Statement: if $r15 == null goto $r24 = "" 
(assert (= var2094 null-ClassObject)) ; Cond: $r15 == null 
(define-const var3084 String "") ; Statement: $r24 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var134 String (append/672562846 var762 var3084)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var762!1 String)
(assert (= var762!1 (str.++ var762 var3084)))
(assert true)
(define-const var3485 String (append/672562846 var134 ")")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var134!1 String)
(assert (= var134!1 (str.++ var134 ")")))
(assert true)
(define-const var1059 String (toString/-2075883882 var3485)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var612_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var1864-to-var1352=([freemarker.cache.ClassTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resourceLoaderClass/498632177=([freemarker.cache.ClassTemplateLoader], java.lang.Class), classLoader/498632177=([freemarker.cache.ClassTemplateLoader], java.lang.ClassLoader), var1155_jQuote/-389260442=([java.lang.Object], java.lang.String), cast-from-var2672-to-var2352=([java.lang.ClassLoader], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), basePackagePath/498632177=([freemarker.cache.ClassTemplateLoader], java.lang.String), var1155_jQuote/1315253176=([java.lang.String], java.lang.String)}
; {var1864=freemarker.cache.ClassTemplateLoader, var1598=r1, var972=$r0, var612=freemarker.cache.TemplateLoaderUtils, var1352=freemarker.cache.TemplateLoader, var2529=$r2, var940=$r3, var360=$r10, var1098=$r4, var1639=$r5, var1778=$r8, var2672=java.lang.ClassLoader, var1756=$r6, var1155=freemarker.template.utility.StringUtil, var2352=java.lang.Object, var3601=$r7, var1875=$r9, var1035=$r22, var2765=$r11, var531=$r14, var465=$r12, var3676=$r13, var762=$r23, var2094=$r15, var3084=$r24, var134=$r25, var3485=$r26, var1059=$r27}
; {freemarker.cache.ClassTemplateLoader=var1864, r1=var1598, $r0=var972, freemarker.cache.TemplateLoaderUtils=var612, freemarker.cache.TemplateLoader=var1352, $r2=var2529, $r3=var940, $r10=var360, $r4=var1098, $r5=var1639, $r8=var1778, java.lang.ClassLoader=var2672, $r6=var1756, freemarker.template.utility.StringUtil=var1155, java.lang.Object=var2352, $r7=var3601, $r9=var1875, $r22=var1035, $r11=var2765, $r14=var531, $r12=var465, $r13=var3676, $r23=var762, $r15=var2094, $r24=var3084, $r25=var134, $r26=var3485, $r27=var1059}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.cache.ClassTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass>;	if $r4 == null goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("classLoader=");	$r6 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.ClassLoader classLoader>;	$r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r22 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", basePackagePath=");	$r12 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath>;	$r13 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r12);	$r23 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass>;	if $r15 == null goto $r24 = "";	$r24 = "";	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	return $r27
;block_num 5