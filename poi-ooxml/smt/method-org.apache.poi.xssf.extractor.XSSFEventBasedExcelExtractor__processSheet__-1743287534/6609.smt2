(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2969 0)
(declare-sort var2666 0)
(declare-sort var3578 0)
(declare-sort var194 0)
(declare-sort var331 0)
(declare-sort var1377 0)
(declare-sort var3539 0)
(declare-sort var3514 0)
(declare-sort var2932 0)
(declare-sort var2965 0)
(declare-sort var2151 0)
(declare-sort var2654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locale/575386212 (var2969) var3539)
(declare-fun var3514-init () var3514)
(declare-fun <init>/-939956699 (var3514) void)
(declare-fun var2932-init () var2932)
(declare-fun <init>/-1889831121 (var2932 var1377) void)
(declare-fun var2151-init () var2151)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2654) String)
(declare-fun cast-from-var2965-to-var2654 (var2965) var2654)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2151 String) void)
(declare-const null-var2969 var2969)
(declare-const null-var2666 var2666)
(declare-const null-var3578 var3578)
(declare-const null-var194 var194)
(declare-const null-var331 var331)
(declare-const null-var1377 var1377)
(declare-const null-var3539 var3539)
(declare-const null-var2965 var2965)
(declare-const var2612 var2969) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor 
(assert (not (= var2612 null-var2969)))
(declare-const var797 var2666) ; Statement: r10 := @parameter0: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler 
(assert (not (= var797 null-var2666)))
(declare-const var1589 var3578) ; Statement: r7 := @parameter1: org.apache.poi.xssf.model.Styles 
(assert (not (= var1589 null-var3578)))
(declare-const var267 var194) ; Statement: r8 := @parameter2: org.apache.poi.xssf.model.Comments 
(assert (not (= var267 null-var194)))
(declare-const var3098 var331) ; Statement: r9 := @parameter3: org.apache.poi.xssf.model.SharedStrings 
(assert (not (= var3098 null-var331)))
(declare-const var311 var1377) ; Statement: r5 := @parameter4: java.io.InputStream 
(assert (not (= var311 null-var1377)))
(define-const var2226 var3539 (locale/575386212 var2612)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: java.util.Locale locale> 
 ; Statement: if $r1 != null goto $r2 = new org.apache.poi.ss.usermodel.DataFormatter 
(assert (not (not (= var2226 null-var3539)))) ; Negate: Cond: $r1 != null  
(define-const var3966 var3514 var3514-init) ; Statement: $r11 = new org.apache.poi.ss.usermodel.DataFormatter 
(assert true)
;(assert (<init>/-939956699 var3966)) ; Statement: specialinvoke $r11.<org.apache.poi.ss.usermodel.DataFormatter: void <init>()>() 

(declare-const var3966!1 var3514)
(define-const var3664 var3514 var3966!1) ; Statement: r20 = $r11 
 ; Statement: goto [?= $r4 = new org.xml.sax.InputSource] 
(assert true) ; Non Conditional
(define-const var196 var2932 var2932-init) ; Statement: $r4 = new org.xml.sax.InputSource 
(assert true)
;(assert (<init>/-1889831121 var196 var311)) ; Statement: specialinvoke $r4.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r5) 

(declare-const var196!1 var2932)
(declare-const var311!1 var1377)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var208 var2965) ; Statement: $r13 := @caughtexception 
(assert (not (= var208 null-var2965)))
(define-const var1562 var2151 var2151-init) ; Statement: $r14 = new java.lang.IllegalStateException 
(define-const var1099 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1099)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1099!1 String)
(assert (= var1099!1 ""))
(assert true)
(define-const var2757 String (append/672562846 var1099!1 "SAX parser appears to be broken - ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SAX parser appears to be broken - ") 
(declare-const var1099!2 String)
(assert (= var1099!2 (str.++ var1099!1 "SAX parser appears to be broken - ")))
(assert true)
(define-const var183 String (getMessage/849299655 (cast-from-var2965-to-var2654 var208))) ; Statement: $r16 = virtualinvoke $r13.<javax.xml.parsers.ParserConfigurationException: java.lang.String getMessage()>() 
(assert true)
(define-const var3012 String (append/672562846 var2757 var183)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2757!1 String)
(assert (= var2757!1 (str.++ var2757 var183)))
(assert true)
(define-const var2802 String (toString/-2075883882 var3012)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1562 var2802)) ; Statement: specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19) 

(declare-const var1562!1 var2151)
(declare-const var2802!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {locale/575386212=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor], java.util.Locale), var3514-init=([], org.apache.poi.ss.usermodel.DataFormatter), <init>/-939956699=([org.apache.poi.ss.usermodel.DataFormatter], void), var2932-init=([], org.xml.sax.InputSource), <init>/-1889831121=([org.xml.sax.InputSource, java.io.InputStream], void), var2151-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2965-to-var2654=([javax.xml.parsers.ParserConfigurationException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2969=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, var2612=r0, var2666=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var797=r10, var3578=org.apache.poi.xssf.model.Styles, var1589=r7, var194=org.apache.poi.xssf.model.Comments, var267=r8, var331=org.apache.poi.xssf.model.SharedStrings, var3098=r9, var1377=java.io.InputStream, var311=r5, var3539=java.util.Locale, var2226=$r1, var3514=org.apache.poi.ss.usermodel.DataFormatter, var3966=$r11, var3664=r20, var2932=org.xml.sax.InputSource, var196=$r4, var2965=javax.xml.parsers.ParserConfigurationException, var208=$r13, var2151=java.lang.IllegalStateException, var1562=$r14, var1099=$r15, var2757=$r17, var2654=java.lang.Throwable, var183=$r16, var3012=$r18, var2802=$r19}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor=var2969, r0=var2612, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var2666, r10=var797, org.apache.poi.xssf.model.Styles=var3578, r7=var1589, org.apache.poi.xssf.model.Comments=var194, r8=var267, org.apache.poi.xssf.model.SharedStrings=var331, r9=var3098, java.io.InputStream=var1377, r5=var311, java.util.Locale=var3539, $r1=var2226, org.apache.poi.ss.usermodel.DataFormatter=var3514, $r11=var3966, r20=var3664, org.xml.sax.InputSource=var2932, $r4=var196, javax.xml.parsers.ParserConfigurationException=var2965, $r13=var208, java.lang.IllegalStateException=var2151, $r14=var1562, $r15=var1099, $r17=var2757, java.lang.Throwable=var2654, $r16=var183, $r18=var3012, $r19=var2802}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor;	r10 := @parameter0: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler;	r7 := @parameter1: org.apache.poi.xssf.model.Styles;	r8 := @parameter2: org.apache.poi.xssf.model.Comments;	r9 := @parameter3: org.apache.poi.xssf.model.SharedStrings;	r5 := @parameter4: java.io.InputStream;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: java.util.Locale locale>;	if $r1 != null goto $r2 = new org.apache.poi.ss.usermodel.DataFormatter;	$r11 = new org.apache.poi.ss.usermodel.DataFormatter;	specialinvoke $r11.<org.apache.poi.ss.usermodel.DataFormatter: void <init>()>();	r20 = $r11;	goto [?= $r4 = new org.xml.sax.InputSource];	$r4 = new org.xml.sax.InputSource;	specialinvoke $r4.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r5);	$r13 := @caughtexception;	$r14 = new java.lang.IllegalStateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SAX parser appears to be broken - ");	$r16 = virtualinvoke $r13.<javax.xml.parsers.ParserConfigurationException: java.lang.String getMessage()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19);	throw $r14
;block_num 4