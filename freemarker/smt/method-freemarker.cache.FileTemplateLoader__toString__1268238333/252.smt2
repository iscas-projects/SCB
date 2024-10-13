(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var3721 0)
(declare-sort var2530 0)
(declare-sort var1643 0)
(declare-sort var3432 0)
(declare-sort var920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3721_getClassNameForToString/-104682099 (var2530) String)
(declare-fun cast-from-var2129-to-var2530 (var2129) var2530)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun baseDir/-807310563 (var2129) var1643)
(declare-fun append/-1031950772 (String var3432) String)
(declare-fun cast-from-var1643-to-var3432 (var1643) var3432)
(declare-fun canonicalBasePath/-807310563 (var2129) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun emulateCaseSensitiveFileSystem/-807310563 (var2129) Bool)
(declare-const null-var2129 var2129)
(declare-const null-String String)
(declare-const var3378 var2129) ; Statement: r1 := @this: freemarker.cache.FileTemplateLoader 
(assert (not (= var3378 null-var2129)))
(define-const var3661 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3661)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3661!1 String)
(assert (= var3661!1 ""))
(define-const var1571 String (var3721_getClassNameForToString/-104682099 (cast-from-var2129-to-var2530 var3378))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
(define-const var3458 String (append/672562846 var3661!1 var1571)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3661!2 String)
(assert (= var3661!2 (str.++ var3661!1 var1571)))
(assert true)
(define-const var303 String (append/672562846 var3458 "(baseDir=\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"") 
(declare-const var3458!1 String)
(assert (= var3458!1 (str.++ var3458 "(baseDir=\u0022")))
(define-const var2947 var1643 (baseDir/-807310563 var3378)) ; Statement: $r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir> 
(assert true)
(define-const var1022 String (append/-1031950772 var303 (cast-from-var1643-to-var3432 var2947))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var303!1 String)
(assert (str.prefixof var303 var303!1))
(assert true)
(define-const var692 String (append/672562846 var1022 "\u0022")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1022!1 String)
(assert (= var1022!1 (str.++ var1022 "\u0022")))
(define-const var760 String (canonicalBasePath/-807310563 var3378)) ; Statement: $r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath> 
 ; Statement: if $r7 == null goto $r18 = "" 
(assert (not (= var760 null-String))) ; Negate: Cond: $r7 == null  
(define-const var3951 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3951)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3951!1 String)
(assert (= var3951!1 ""))
(assert true)
(define-const var3884 String (append/672562846 var3951!1 ", canonicalBasePath=\u0022")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", canonicalBasePath=\"") 
(declare-const var3951!2 String)
(assert (= var3951!2 (str.++ var3951!1 ", canonicalBasePath=\u0022")))
(define-const var2570 String (canonicalBasePath/-807310563 var3378)) ; Statement: $r14 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath> 
(assert true)
(define-const var3792 String (append/672562846 var3884 var2570)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3884!1 String)
(assert (= var3884!1 (str.++ var3884 var2570)))
(assert true)
(define-const var3657 String (append/672562846 var3792 "\u0022")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3792!1 String)
(assert (= var3792!1 (str.++ var3792 "\u0022")))
(assert true)
(define-const var2213 String (toString/-2075883882 var3657)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3302 String (append/672562846 var692 var2213)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var692!1 String)
(assert (= var692!1 (str.++ var692 var2213)))
(define-const var2903 Bool (emulateCaseSensitiveFileSystem/-807310563 var3378)) ; Statement: $z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem> 
 ; Statement: if $z0 == 0 goto $r19 = "" 
(assert (not (= (ite var2903 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var270 String ", emulateCaseSensitiveFileSystem=true") ; Statement: $r19 = ", emulateCaseSensitiveFileSystem=true" 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3739 String (append/672562846 var3302 var270)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3302!1 String)
(assert (= var3302!1 (str.++ var3302 var270)))
(assert true)
(define-const var3664 String (append/672562846 var3739 ")")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3739!1 String)
(assert (= var3739!1 (str.++ var3739 ")")))
(assert true)
(define-const var3236 String (toString/-2075883882 var3664)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3721_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var2129-to-var2530=([freemarker.cache.FileTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), baseDir/-807310563=([freemarker.cache.FileTemplateLoader], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1643-to-var3432=([java.io.File], java.lang.Object), canonicalBasePath/-807310563=([freemarker.cache.FileTemplateLoader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), emulateCaseSensitiveFileSystem/-807310563=([freemarker.cache.FileTemplateLoader], boolean)}
; {var2129=freemarker.cache.FileTemplateLoader, var3378=r1, var3661=$r0, var3721=freemarker.cache.TemplateLoaderUtils, var2530=freemarker.cache.TemplateLoader, var1571=$r2, var3458=$r3, var303=$r5, var1643=java.io.File, var2947=$r4, var3432=java.lang.Object, var1022=$r6, var692=$r8, var760=$r7, var920=null_type, var3951=$r13, var3884=$r15, var2570=$r14, var3792=$r16, var3657=$r17, var2213=$r18, var3302=$r9, var2903=$z0, var270=$r19, var3739=$r10, var3664=$r11, var3236=$r12}
; {freemarker.cache.FileTemplateLoader=var2129, r1=var3378, $r0=var3661, freemarker.cache.TemplateLoaderUtils=var3721, freemarker.cache.TemplateLoader=var2530, $r2=var1571, $r3=var3458, $r5=var303, java.io.File=var1643, $r4=var2947, java.lang.Object=var3432, $r6=var1022, $r8=var692, $r7=var760, null_type=var920, $r13=var3951, $r15=var3884, $r14=var2570, $r16=var3792, $r17=var3657, $r18=var2213, $r9=var3302, $z0=var2903, $r19=var270, $r10=var3739, $r11=var3664, $r12=var3236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.cache.FileTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(baseDir=\"");	$r4 = r1.<freemarker.cache.FileTemplateLoader: java.io.File baseDir>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r7 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath>;	if $r7 == null goto $r18 = "";	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", canonicalBasePath=\"");	$r14 = r1.<freemarker.cache.FileTemplateLoader: java.lang.String canonicalBasePath>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$z0 = r1.<freemarker.cache.FileTemplateLoader: boolean emulateCaseSensitiveFileSystem>;	if $z0 == 0 goto $r19 = "";	$r19 = ", emulateCaseSensitiveFileSystem=true";	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 5