(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2831 0)
(declare-sort var518 0)
(declare-sort var2653 0)
(declare-sort var3497 0)
(declare-sort var958 0)
(declare-sort var2330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var518_getClassNameForToString/-104682099 (var2653) String)
(declare-fun cast-from-var2831-to-var2653 (var2831) var2653)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun baseDir/-807310563 (var2831) var3497)
(declare-fun append/-1031950772 (String var958) String)
(declare-fun cast-from-var3497-to-var958 (var3497) var958)
(declare-fun canonicalBasePath/-807310563 (var2831) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun emulateCaseSensitiveFileSystem/-807310563 (var2831) Bool)
(declare-const null-var2831 var2831)
(declare-const null-String String)
(declare-const var2531 var2831) ; Statement: r1 := @this: freemarker.cache.FileTemplateLoader 
(assert (not (= var2531 null-var2831)))
(define-const var795 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var795)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var795!1 String)
(assert (= var795!1 ""))
(define-const var1593 String (var518_getClassNameForToString/-104682099 (cast-from-var2831-to-var2653 var2531))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
(define-const var80 String (append/672562846 var795!1 var1593)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var795!2 String)
(assert (= var795!2 (str.++ var795!1 var1593)))
(assert true)
(define-const var3265 String (append/672562846 var80 "(baseDir=\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"") 
(declare-const var80!1 String)
(assert (= var80!1 (str.++ var80 "(baseDir=\u0022")))
(define-const var918 var3497 (baseDir/-807310563 var2531)) ; Statement: $r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir> 
(assert true)
(define-const var172 String (append/-1031950772 var3265 (cast-from-var3497-to-var958 var918))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3265!1 String)
(assert (str.prefixof var3265 var3265!1))
(assert true)
(define-const var2184 String (append/672562846 var172 "\u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var172!1 String)
(assert (= var172!1 (str.++ var172 "\u0022")))
(define-const var3928 String (canonicalBasePath/-807310563 var2531)) ; Statement: $r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath> 
 ; Statement: if $r7 == null goto $r18 = "" 
(assert (not (= var3928 null-String))) ; Negate: Cond: $r7 == null  
(define-const var3260 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3260)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3260!1 String)
(assert (= var3260!1 ""))
(assert true)
(define-const var823 String (append/672562846 var3260!1 ", canonicalBasePath=\u0022")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", canonicalBasePath=\"") 
(declare-const var3260!2 String)
(assert (= var3260!2 (str.++ var3260!1 ", canonicalBasePath=\u0022")))
(define-const var1801 String (canonicalBasePath/-807310563 var2531)) ; Statement: $r14 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath> 
(assert true)
(define-const var2285 String (append/672562846 var823 var1801)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var823!1 String)
(assert (= var823!1 (str.++ var823 var1801)))
(assert true)
(define-const var2859 String (append/672562846 var2285 "\u0022")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2285!1 String)
(assert (= var2285!1 (str.++ var2285 "\u0022")))
(assert true)
(define-const var1731 String (toString/-2075883882 var2859)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2273 String (append/672562846 var2184 var1731)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2184!1 String)
(assert (= var2184!1 (str.++ var2184 var1731)))
(define-const var1246 Bool (emulateCaseSensitiveFileSystem/-807310563 var2531)) ; Statement: $z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem> 
 ; Statement: if $z0 == 0 goto $r19 = "" 
(assert (= (ite var1246 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1473 String "") ; Statement: $r19 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var849 String (append/672562846 var2273 var1473)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2273!1 String)
(assert (= var2273!1 (str.++ var2273 var1473)))
(assert true)
(define-const var786 String (append/672562846 var849 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var849!1 String)
(assert (= var849!1 (str.++ var849 ")")))
(assert true)
(define-const var2164 String (toString/-2075883882 var786)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var518_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var2831-to-var2653=([freemarker.cache.FileTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), baseDir/-807310563=([freemarker.cache.FileTemplateLoader], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3497-to-var958=([java.io.File], java.lang.Object), canonicalBasePath/-807310563=([freemarker.cache.FileTemplateLoader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), emulateCaseSensitiveFileSystem/-807310563=([freemarker.cache.FileTemplateLoader], boolean)}
; {var2831=freemarker.cache.FileTemplateLoader, var2531=r1, var795=$r0, var518=freemarker.cache.TemplateLoaderUtils, var2653=freemarker.cache.TemplateLoader, var1593=$r2, var80=$r3, var3265=$r5, var3497=java.io.File, var918=$r4, var958=java.lang.Object, var172=$r6, var2184=$r8, var3928=$r7, var2330=null_type, var3260=$r13, var823=$r15, var1801=$r14, var2285=$r16, var2859=$r17, var1731=$r18, var2273=$r9, var1246=$z0, var1473=$r19, var849=$r10, var786=$r11, var2164=$r12}
; {freemarker.cache.FileTemplateLoader=var2831, r1=var2531, $r0=var795, freemarker.cache.TemplateLoaderUtils=var518, freemarker.cache.TemplateLoader=var2653, $r2=var1593, $r3=var80, $r5=var3265, java.io.File=var3497, $r4=var918, java.lang.Object=var958, $r6=var172, $r8=var2184, $r7=var3928, null_type=var2330, $r13=var3260, $r15=var823, $r14=var1801, $r16=var2285, $r17=var2859, $r18=var1731, $r9=var2273, $z0=var1246, $r19=var1473, $r10=var849, $r11=var786, $r12=var2164}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.cache.FileTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"");	$r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath>;	if $r7 == null goto $r18 = "";	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", canonicalBasePath=\"");	$r14 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem>;	if $z0 == 0 goto $r19 = "";	$r19 = "";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5