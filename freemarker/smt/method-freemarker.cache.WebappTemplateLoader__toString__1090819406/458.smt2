(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3932 0)
(declare-sort var423 0)
(declare-sort var2533 0)
(declare-sort var2347 0)
(declare-sort var3818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var423_getClassNameForToString/-104682099 (var2533) String)
(declare-fun cast-from-var3932-to-var2533 (var3932) var2533)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun subdirPath/-1498075858 (var3932) String)
(declare-fun var2347_jQuote/1315253176 (String) String)
(declare-fun getContextPath/377823100 (var3932) String)
(declare-fun servletContext/-1498075858 (var3932) var3818)
(declare-fun var3818_getServletContextName/2034764704 (var3818) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3932 var3932)
(declare-const var3612 var3932) ; Statement: r1 := @this: freemarker.cache.WebappTemplateLoader 
(assert (not (= var3612 null-var3932)))
(define-const var1017 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1017)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1017!1 String)
(assert (= var1017!1 ""))
(define-const var2743 String (var423_getClassNameForToString/-104682099 (cast-from-var3932-to-var2533 var3612))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
(define-const var422 String (append/672562846 var1017!1 var2743)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1017!2 String)
(assert (= var1017!2 (str.++ var1017!1 var2743)))
(assert true)
(define-const var2717 String (append/672562846 var422 "(subdirPath=")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(subdirPath=") 
(declare-const var422!1 String)
(assert (= var422!1 (str.++ var422 "(subdirPath=")))
(define-const var2819 String (subdirPath/-1498075858 var3612)) ; Statement: $r4 = r1.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath> 
(define-const var460 String (var2347_jQuote/1315253176 var2819)) ; Statement: $r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r4) 
(assert true)
(define-const var1286 String (append/672562846 var2717 var460)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2717!1 String)
(assert (= var2717!1 (str.++ var2717 var460)))
(assert true)
(define-const var654 String (append/672562846 var1286 ", servletContext={contextPath=")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", servletContext={contextPath=") 
(declare-const var1286!1 String)
(assert (= var1286!1 (str.++ var1286 ", servletContext={contextPath=")))
(assert true)
(define-const var722 String (getContextPath/377823100 var3612)) ; Statement: $r8 = specialinvoke r1.<freemarker.cache.WebappTemplateLoader: java.lang.String getContextPath()>() 
(define-const var435 String (var2347_jQuote/1315253176 var722)) ; Statement: $r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8) 
(assert true)
(define-const var264 String (append/672562846 var654 var435)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var654!1 String)
(assert (= var654!1 (str.++ var654 var435)))
(assert true)
(define-const var2284 String (append/672562846 var264 ", displayName=")) ; Statement: $r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", displayName=") 
(declare-const var264!1 String)
(assert (= var264!1 (str.++ var264 ", displayName=")))
(define-const var1880 var3818 (servletContext/-1498075858 var3612)) ; Statement: $r12 = r1.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext> 
(define-const var2114 String (var3818_getServletContextName/2034764704 var1880)) ; Statement: $r13 = interfaceinvoke $r12.<javax.servlet.ServletContext: java.lang.String getServletContextName()>() 
(define-const var3598 String (var2347_jQuote/1315253176 var2114)) ; Statement: $r14 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r13) 
(assert true)
(define-const var1108 String (append/672562846 var2284 var3598)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2284!1 String)
(assert (= var2284!1 (str.++ var2284 var3598)))
(assert true)
(define-const var1008 String (append/672562846 var1108 "})")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})") 
(declare-const var1108!1 String)
(assert (= var1108!1 (str.++ var1108 "})")))
(assert true)
(define-const var465 String (toString/-2075883882 var1008)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var423_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var3932-to-var2533=([freemarker.cache.WebappTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), subdirPath/-1498075858=([freemarker.cache.WebappTemplateLoader], java.lang.String), var2347_jQuote/1315253176=([java.lang.String], java.lang.String), getContextPath/377823100=([freemarker.cache.WebappTemplateLoader], java.lang.String), servletContext/-1498075858=([freemarker.cache.WebappTemplateLoader], javax.servlet.ServletContext), var3818_getServletContextName/2034764704=([javax.servlet.ServletContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3932=freemarker.cache.WebappTemplateLoader, var3612=r1, var1017=$r0, var423=freemarker.cache.TemplateLoaderUtils, var2533=freemarker.cache.TemplateLoader, var2743=$r2, var422=$r3, var2717=$r6, var2819=$r4, var2347=freemarker.template.utility.StringUtil, var460=$r5, var1286=$r7, var654=$r10, var722=$r8, var435=$r9, var264=$r11, var2284=$r15, var3818=javax.servlet.ServletContext, var1880=$r12, var2114=$r13, var3598=$r14, var1108=$r16, var1008=$r17, var465=$r18}
; {freemarker.cache.WebappTemplateLoader=var3932, r1=var3612, $r0=var1017, freemarker.cache.TemplateLoaderUtils=var423, freemarker.cache.TemplateLoader=var2533, $r2=var2743, $r3=var422, $r6=var2717, $r4=var2819, freemarker.template.utility.StringUtil=var2347, $r5=var460, $r7=var1286, $r10=var654, $r8=var722, $r9=var435, $r11=var264, $r15=var2284, javax.servlet.ServletContext=var3818, $r12=var1880, $r13=var2114, $r14=var3598, $r16=var1108, $r17=var1008, $r18=var465}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.cache.WebappTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(subdirPath=");	$r4 = r1.<freemarker.cache.WebappTemplateLoader: java.lang.String subdirPath>;	$r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", servletContext={contextPath=");	$r8 = specialinvoke r1.<freemarker.cache.WebappTemplateLoader: java.lang.String getContextPath()>();	$r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r15 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", displayName=");	$r12 = r1.<freemarker.cache.WebappTemplateLoader: javax.servlet.ServletContext servletContext>;	$r13 = interfaceinvoke $r12.<javax.servlet.ServletContext: java.lang.String getServletContextName()>();	$r14 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("})");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r18
;block_num 1