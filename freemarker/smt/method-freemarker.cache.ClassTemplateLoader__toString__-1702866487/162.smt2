(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var76 0)
(declare-sort var2930 0)
(declare-sort var89 0)
(declare-sort var2046 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2930_getClassNameForToString/-104682099 (var89) String)
(declare-fun cast-from-var76-to-var89 (var76) var89)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resourceLoaderClass/498632177 (var76) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun basePackagePath/498632177 (var76) String)
(declare-fun var2046_jQuote/1315253176 (String) String)
(declare-const null-var76 var76)
(declare-const null-ClassObject ClassObject)
(declare-const var3378 var76) ; Statement: r1 := @this: freemarker.cache.ClassTemplateLoader 
(assert (not (= var3378 null-var76)))
(define-const var3895 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3895)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3895!1 String)
(assert (= var3895!1 ""))
(define-const var1971 String (var2930_getClassNameForToString/-104682099 (cast-from-var76-to-var89 var3378))) ; Statement: $r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1) 
(assert true)
(define-const var3268 String (append/672562846 var3895!1 var1971)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3895!2 String)
(assert (= var3895!2 (str.++ var3895!1 var1971)))
(assert true)
(define-const var3983 String (append/672562846 var3268 "(")) ; Statement: $r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3268!1 String)
(assert (= var3268!1 (str.++ var3268 "(")))
(define-const var896 ClassObject (resourceLoaderClass/498632177 var3378)) ; Statement: $r4 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass> 
 ; Statement: if $r4 == null goto $r5 = new java.lang.StringBuilder 
(assert (not (= var896 null-ClassObject))) ; Negate: Cond: $r4 == null  
(define-const var1928 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1928)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1928!1 String)
(assert (= var1928!1 ""))
(assert true)
(define-const var2818 String (append/672562846 var1928!1 "resourceLoaderClass=")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("resourceLoaderClass=") 
(declare-const var1928!2 String)
(assert (= var1928!2 (str.++ var1928!1 "resourceLoaderClass=")))
(define-const var2990 ClassObject (resourceLoaderClass/498632177 var3378)) ; Statement: $r18 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass> 
(assert true)
(define-const var1836 String (getName/-1958580599 var2990)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var365 String (append/672562846 var2818 var1836)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2818!1 String)
(assert (= var2818!1 (str.++ var2818 var1836)))
(assert true)
(define-const var2179 String (toString/-2075883882 var365)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var128 String (append/672562846 var3983 var2179)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3983!1 String)
(assert (= var3983!1 (str.++ var3983 var2179)))
(assert true)
(define-const var59 String (append/672562846 var128 ", basePackagePath=")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", basePackagePath=") 
(declare-const var128!1 String)
(assert (= var128!1 (str.++ var128 ", basePackagePath=")))
(define-const var2282 String (basePackagePath/498632177 var3378)) ; Statement: $r12 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath> 
(define-const var779 String (var2046_jQuote/1315253176 var2282)) ; Statement: $r13 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r12) 
(assert true)
(define-const var2330 String (append/672562846 var59 var779)) ; Statement: $r23 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var59!1 String)
(assert (= var59!1 (str.++ var59 var779)))
(define-const var2235 ClassObject (resourceLoaderClass/498632177 var3378)) ; Statement: $r15 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass> 
 ; Statement: if $r15 == null goto $r24 = "" 
(assert (= var2235 null-ClassObject)) ; Cond: $r15 == null 
(define-const var653 String "") ; Statement: $r24 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var422 String (append/672562846 var2330 var653)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2330!1 String)
(assert (= var2330!1 (str.++ var2330 var653)))
(assert true)
(define-const var3906 String (append/672562846 var422 ")")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var422!1 String)
(assert (= var422!1 (str.++ var422 ")")))
(assert true)
(define-const var1675 String (toString/-2075883882 var3906)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2930_getClassNameForToString/-104682099=([freemarker.cache.TemplateLoader], java.lang.String), cast-from-var76-to-var89=([freemarker.cache.ClassTemplateLoader], freemarker.cache.TemplateLoader), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resourceLoaderClass/498632177=([freemarker.cache.ClassTemplateLoader], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), basePackagePath/498632177=([freemarker.cache.ClassTemplateLoader], java.lang.String), var2046_jQuote/1315253176=([java.lang.String], java.lang.String)}
; {var76=freemarker.cache.ClassTemplateLoader, var3378=r1, var3895=$r0, var2930=freemarker.cache.TemplateLoaderUtils, var89=freemarker.cache.TemplateLoader, var1971=$r2, var3268=$r3, var3983=$r10, var896=$r4, var1928=$r17, var2818=$r20, var2990=$r18, var1836=$r19, var365=$r21, var2179=$r22, var128=$r11, var59=$r14, var2282=$r12, var2046=freemarker.template.utility.StringUtil, var779=$r13, var2330=$r23, var2235=$r15, var653=$r24, var422=$r25, var3906=$r26, var1675=$r27}
; {freemarker.cache.ClassTemplateLoader=var76, r1=var3378, $r0=var3895, freemarker.cache.TemplateLoaderUtils=var2930, freemarker.cache.TemplateLoader=var89, $r2=var1971, $r3=var3268, $r10=var3983, $r4=var896, $r17=var1928, $r20=var2818, $r18=var2990, $r19=var1836, $r21=var365, $r22=var2179, $r11=var128, $r14=var59, $r12=var2282, freemarker.template.utility.StringUtil=var2046, $r13=var779, $r23=var2330, $r15=var2235, $r24=var653, $r25=var422, $r26=var3906, $r27=var1675}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: freemarker.cache.ClassTemplateLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.cache.TemplateLoaderUtils: java.lang.String getClassNameForToString(freemarker.cache.TemplateLoader)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r10 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass>;	if $r4 == null goto $r5 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("resourceLoaderClass=");	$r18 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass>;	$r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", basePackagePath=");	$r12 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.String basePackagePath>;	$r13 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r12);	$r23 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = r1.<freemarker.cache.ClassTemplateLoader: java.lang.Class resourceLoaderClass>;	if $r15 == null goto $r24 = "";	$r24 = "";	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	return $r27
;block_num 5