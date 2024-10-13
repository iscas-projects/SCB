(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var422 0)
(declare-sort var840 0)
(declare-sort var1965 0)
(declare-sort var2843 0)
(declare-sort var1356 0)
(declare-sort var2962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var840_getClassNameForToString/-104682099 (var1965) String)
(declare-fun cast-from-var422-to-var1965 (var422) var1965)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun baseDir/-807310563 (var422) var2843)
(declare-fun append/-1031950772 (String var1356) String)
(declare-fun cast-from-var2843-to-var1356 (var2843) var1356)
(declare-fun canonicalBasePath/-807310563 (var422) String)
(declare-fun emulateCaseSensitiveFileSystem/-807310563 (var422) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var422 var422)
(declare-const null-String String)
(declare-const var2000 var422) ; Statement: r1 := @this: freemarker.cache.FileTemplateLoader 
(assert (not (= var2000 null-var422)))
(define-const var3477 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3477)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3477!1 String)
(assert (= var3477!1 ""))
(define-const var2346 String (var840_getClassNameForToString/-104682099 (cast-from-var422-to-var1965 var2000))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
(define-const var2010 String (append/672562846 var3477!1 var2346)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3477!2 String)
(assert (= var3477!2 (str.++ var3477!1 var2346)))
(assert true)
(define-const var2065 String (append/672562846 var2010 "(baseDir=\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"") 
(declare-const var2010!1 String)
(assert (= var2010!1 (str.++ var2010 "(baseDir=\u0022")))
(define-const var2803 var2843 (baseDir/-807310563 var2000)) ; Statement: $r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir> 
(assert true)
(define-const var3254 String (append/-1031950772 var2065 (cast-from-var2843-to-var1356 var2803))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2065!1 String)
(assert (str.prefixof var2065 var2065!1))
(assert true)
(define-const var3479 String (append/672562846 var3254 "\u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3254!1 String)
(assert (= var3254!1 (str.++ var3254 "\u0022")))
(define-const var2951 String (canonicalBasePath/-807310563 var2000)) ; Statement: $r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath> 
 ; Statement: if $r7 == null goto $r18 = "" 
(assert (= var2951 null-String)) ; Cond: $r7 == null 
(define-const var3218 String "") ; Statement: $r18 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1486 String (append/672562846 var3479 var3218)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3479!1 String)
(assert (= var3479!1 (str.++ var3479 var3218)))
(define-const var3524 Bool (emulateCaseSensitiveFileSystem/-807310563 var2000)) ; Statement: $z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem> 
 ; Statement: if $z0 == 0 goto $r19 = "" 
(assert (= (ite var3524 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2715 String "") ; Statement: $r19 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1910 String (append/672562846 var1486 var2715)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1486!1 String)
(assert (= var1486!1 (str.++ var1486 var2715)))
(assert true)
(define-const var3748 String (append/672562846 var1910 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1910!1 String)
(assert (= var1910!1 (str.++ var1910 ")")))
(assert true)
(define-const var1857 String (toString/-2075883882 var3748)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var840_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var422-to-var1965=([freemarker.cache.FileTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), baseDir/-807310563=([freemarker.cache.FileTemplateLoader], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2843-to-var1356=([java.io.File], java.lang.Object), canonicalBasePath/-807310563=([freemarker.cache.FileTemplateLoader], java.lang.String), emulateCaseSensitiveFileSystem/-807310563=([freemarker.cache.FileTemplateLoader], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var422=freemarker.cache.FileTemplateLoader, var2000=r1, var3477=$r0, var840=freemarker.cache.TemplateLoaderUtils, var1965=freemarker.cache.TemplateLoader, var2346=$r2, var2010=$r3, var2065=$r5, var2843=java.io.File, var2803=$r4, var1356=java.lang.Object, var3254=$r6, var3479=$r8, var2951=$r7, var2962=null_type, var3218=$r18, var1486=$r9, var3524=$z0, var2715=$r19, var1910=$r10, var3748=$r11, var1857=$r12}
; {freemarker.cache.FileTemplateLoader=var422, r1=var2000, $r0=var3477, freemarker.cache.TemplateLoaderUtils=var840, freemarker.cache.TemplateLoader=var1965, $r2=var2346, $r3=var2010, $r5=var2065, java.io.File=var2843, $r4=var2803, java.lang.Object=var1356, $r6=var3254, $r8=var3479, $r7=var2951, null_type=var2962, $r18=var3218, $r9=var1486, $z0=var3524, $r19=var2715, $r10=var1910, $r11=var3748, $r12=var1857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.cache.FileTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"");	$r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath>;	if $r7 == null goto $r18 = "";	$r18 = "";	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem>;	if $z0 == 0 goto $r19 = "";	$r19 = "";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5