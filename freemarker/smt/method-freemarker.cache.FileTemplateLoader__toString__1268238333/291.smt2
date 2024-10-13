(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var849 0)
(declare-sort var883 0)
(declare-sort var2984 0)
(declare-sort var1951 0)
(declare-sort var478 0)
(declare-sort var2565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var883_getClassNameForToString/-104682099 (var2984) String)
(declare-fun cast-from-var849-to-var2984 (var849) var2984)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun baseDir/-807310563 (var849) var1951)
(declare-fun append/-1031950772 (String var478) String)
(declare-fun cast-from-var1951-to-var478 (var1951) var478)
(declare-fun canonicalBasePath/-807310563 (var849) String)
(declare-fun emulateCaseSensitiveFileSystem/-807310563 (var849) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var849 var849)
(declare-const null-String String)
(declare-const var3293 var849) ; Statement: r1 := @this: freemarker.cache.FileTemplateLoader 
(assert (not (= var3293 null-var849)))
(define-const var3247 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3247)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3247!1 String)
(assert (= var3247!1 ""))
(define-const var3289 String (var883_getClassNameForToString/-104682099 (cast-from-var849-to-var2984 var3293))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
(define-const var171 String (append/672562846 var3247!1 var3289)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3247!2 String)
(assert (= var3247!2 (str.++ var3247!1 var3289)))
(assert true)
(define-const var1179 String (append/672562846 var171 "(baseDir=\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"") 
(declare-const var171!1 String)
(assert (= var171!1 (str.++ var171 "(baseDir=\u0022")))
(define-const var2256 var1951 (baseDir/-807310563 var3293)) ; Statement: $r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir> 
(assert true)
(define-const var1788 String (append/-1031950772 var1179 (cast-from-var1951-to-var478 var2256))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1179!1 String)
(assert (str.prefixof var1179 var1179!1))
(assert true)
(define-const var2153 String (append/672562846 var1788 "\u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1788!1 String)
(assert (= var1788!1 (str.++ var1788 "\u0022")))
(define-const var1040 String (canonicalBasePath/-807310563 var3293)) ; Statement: $r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath> 
 ; Statement: if $r7 == null goto $r18 = "" 
(assert (= var1040 null-String)) ; Cond: $r7 == null 
(define-const var1535 String "") ; Statement: $r18 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var378 String (append/672562846 var2153 var1535)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2153!1 String)
(assert (= var2153!1 (str.++ var2153 var1535)))
(define-const var2372 Bool (emulateCaseSensitiveFileSystem/-807310563 var3293)) ; Statement: $z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem> 
 ; Statement: if $z0 == 0 goto $r19 = "" 
(assert (not (= (ite var2372 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2333 String ", emulateCaseSensitiveFileSystem=true") ; Statement: $r19 = ", emulateCaseSensitiveFileSystem=true" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3662 String (append/672562846 var378 var2333)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var378!1 String)
(assert (= var378!1 (str.++ var378 var2333)))
(assert true)
(define-const var2338 String (append/672562846 var3662 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3662!1 String)
(assert (= var3662!1 (str.++ var3662 ")")))
(assert true)
(define-const var601 String (toString/-2075883882 var2338)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var883_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var849-to-var2984=([freemarker.cache.FileTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), baseDir/-807310563=([freemarker.cache.FileTemplateLoader], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1951-to-var478=([java.io.File], java.lang.Object), canonicalBasePath/-807310563=([freemarker.cache.FileTemplateLoader], java.lang.String), emulateCaseSensitiveFileSystem/-807310563=([freemarker.cache.FileTemplateLoader], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var849=freemarker.cache.FileTemplateLoader, var3293=r1, var3247=$r0, var883=freemarker.cache.TemplateLoaderUtils, var2984=freemarker.cache.TemplateLoader, var3289=$r2, var171=$r3, var1179=$r5, var1951=java.io.File, var2256=$r4, var478=java.lang.Object, var1788=$r6, var2153=$r8, var1040=$r7, var2565=null_type, var1535=$r18, var378=$r9, var2372=$z0, var2333=$r19, var3662=$r10, var2338=$r11, var601=$r12}
; {freemarker.cache.FileTemplateLoader=var849, r1=var3293, $r0=var3247, freemarker.cache.TemplateLoaderUtils=var883, freemarker.cache.TemplateLoader=var2984, $r2=var3289, $r3=var171, $r5=var1179, java.io.File=var1951, $r4=var2256, java.lang.Object=var478, $r6=var1788, $r8=var2153, $r7=var1040, null_type=var2565, $r18=var1535, $r9=var378, $z0=var2372, $r19=var2333, $r10=var3662, $r11=var2338, $r12=var601}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.cache.FileTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"");	$r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath>;	if $r7 == null goto $r18 = "";	$r18 = "";	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem>;	if $z0 == 0 goto $r19 = "";	$r19 = ", emulateCaseSensitiveFileSystem=true";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5