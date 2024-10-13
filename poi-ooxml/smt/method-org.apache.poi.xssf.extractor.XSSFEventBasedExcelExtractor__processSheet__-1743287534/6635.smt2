(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2029 0)
(declare-sort var400 0)
(declare-sort var212 0)
(declare-sort var2180 0)
(declare-sort var202 0)
(declare-sort var542 0)
(declare-sort var1914 0)
(declare-sort var3332 0)
(declare-sort var3785 0)
(declare-sort var3491 0)
(declare-sort var358 0)
(declare-sort var1293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locale/575386212 (var2029) var1914)
(declare-fun var3332-init () var3332)
(declare-fun <init>/1360277439 (var3332 var1914) void)
(declare-fun var3785-init () var3785)
(declare-fun <init>/-1889831121 (var3785 var542) void)
(declare-fun var358-init () var358)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1293) String)
(declare-fun cast-from-var3491-to-var1293 (var3491) var1293)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var358 String) void)
(declare-const null-var2029 var2029)
(declare-const null-var400 var400)
(declare-const null-var212 var212)
(declare-const null-var2180 var2180)
(declare-const null-var202 var202)
(declare-const null-var542 var542)
(declare-const null-var1914 var1914)
(declare-const null-var3491 var3491)
(declare-const var1272 var2029) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor 
(assert (not (= var1272 null-var2029)))
(declare-const var3483 var400) ; Statement: r10 := @parameter0: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler 
(assert (not (= var3483 null-var400)))
(declare-const var3569 var212) ; Statement: r7 := @parameter1: org.apache.poi.xssf.model.Styles 
(assert (not (= var3569 null-var212)))
(declare-const var2079 var2180) ; Statement: r8 := @parameter2: org.apache.poi.xssf.model.Comments 
(assert (not (= var2079 null-var2180)))
(declare-const var874 var202) ; Statement: r9 := @parameter3: org.apache.poi.xssf.model.SharedStrings 
(assert (not (= var874 null-var202)))
(declare-const var1987 var542) ; Statement: r5 := @parameter4: java.io.InputStream 
(assert (not (= var1987 null-var542)))
(define-const var555 var1914 (locale/575386212 var1272)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: java.util.Locale locale> 
 ; Statement: if $r1 != null goto $r2 = new org.apache.poi.ss.usermodel.DataFormatter 
(assert (not (= var555 null-var1914))) ; Cond: $r1 != null 
(define-const var1794 var3332 var3332-init) ; Statement: $r2 = new org.apache.poi.ss.usermodel.DataFormatter 
(define-const var3588 var1914 (locale/575386212 var1272)) ; Statement: $r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: java.util.Locale locale> 
(assert true)
;(assert (<init>/1360277439 var1794 var3588)) ; Statement: specialinvoke $r2.<org.apache.poi.ss.usermodel.DataFormatter: void <init>(java.util.Locale)>($r3) 

(declare-const var1794!1 var3332)
(declare-const var3588!1 var1914)
(define-const var2719 var3332 var1794!1) ; Statement: r20 = $r2 
(assert true) ; Non Conditional
(define-const var71 var3785 var3785-init) ; Statement: $r4 = new org.xml.sax.InputSource 
(assert true)
;(assert (<init>/-1889831121 var71 var1987)) ; Statement: specialinvoke $r4.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r5) 

(declare-const var71!1 var3785)
(declare-const var1987!1 var542)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3425 var3491) ; Statement: $r13 := @caughtexception 
(assert (not (= var3425 null-var3491)))
(define-const var3427 var358 var358-init) ; Statement: $r14 = new java.lang.IllegalStateException 
(define-const var3717 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3717)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3717!1 String)
(assert (= var3717!1 ""))
(assert true)
(define-const var1450 String (append/672562846 var3717!1 "SAX parser appears to be broken - ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SAX parser appears to be broken - ") 
(declare-const var3717!2 String)
(assert (= var3717!2 (str.++ var3717!1 "SAX parser appears to be broken - ")))
(assert true)
(define-const var412 String (getMessage/849299655 (cast-from-var3491-to-var1293 var3425))) ; Statement: $r16 = virtualinvoke $r13.<javax.xml.parsers.ParserConfigurationException: java.lang.String getMessage()>() 
(assert true)
(define-const var257 String (append/672562846 var1450 var412)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1450!1 String)
(assert (= var1450!1 (str.++ var1450 var412)))
(assert true)
(define-const var144 String (toString/-2075883882 var257)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3427 var144)) ; Statement: specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19) 

(declare-const var3427!1 var358)
(declare-const var144!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {locale/575386212=([org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor], java.util.Locale), var3332-init=([], org.apache.poi.ss.usermodel.DataFormatter), <init>/1360277439=([org.apache.poi.ss.usermodel.DataFormatter, java.util.Locale], void), var3785-init=([], org.xml.sax.InputSource), <init>/-1889831121=([org.xml.sax.InputSource, java.io.InputStream], void), var358-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3491-to-var1293=([javax.xml.parsers.ParserConfigurationException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2029=org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor, var1272=r0, var400=org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler, var3483=r10, var212=org.apache.poi.xssf.model.Styles, var3569=r7, var2180=org.apache.poi.xssf.model.Comments, var2079=r8, var202=org.apache.poi.xssf.model.SharedStrings, var874=r9, var542=java.io.InputStream, var1987=r5, var1914=java.util.Locale, var555=$r1, var3332=org.apache.poi.ss.usermodel.DataFormatter, var1794=$r2, var3588=$r3, var2719=r20, var3785=org.xml.sax.InputSource, var71=$r4, var3491=javax.xml.parsers.ParserConfigurationException, var3425=$r13, var358=java.lang.IllegalStateException, var3427=$r14, var3717=$r15, var1450=$r17, var1293=java.lang.Throwable, var412=$r16, var257=$r18, var144=$r19}
; {org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor=var2029, r0=var1272, org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler=var400, r10=var3483, org.apache.poi.xssf.model.Styles=var212, r7=var3569, org.apache.poi.xssf.model.Comments=var2180, r8=var2079, org.apache.poi.xssf.model.SharedStrings=var202, r9=var874, java.io.InputStream=var542, r5=var1987, java.util.Locale=var1914, $r1=var555, org.apache.poi.ss.usermodel.DataFormatter=var3332, $r2=var1794, $r3=var3588, r20=var2719, org.xml.sax.InputSource=var3785, $r4=var71, javax.xml.parsers.ParserConfigurationException=var3491, $r13=var3425, java.lang.IllegalStateException=var358, $r14=var3427, $r15=var3717, $r17=var1450, java.lang.Throwable=var1293, $r16=var412, $r18=var257, $r19=var144}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor;	r10 := @parameter0: org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler$SheetContentsHandler;	r7 := @parameter1: org.apache.poi.xssf.model.Styles;	r8 := @parameter2: org.apache.poi.xssf.model.Comments;	r9 := @parameter3: org.apache.poi.xssf.model.SharedStrings;	r5 := @parameter4: java.io.InputStream;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: java.util.Locale locale>;	if $r1 != null goto $r2 = new org.apache.poi.ss.usermodel.DataFormatter;	$r2 = new org.apache.poi.ss.usermodel.DataFormatter;	$r3 = r0.<org.apache.poi.xssf.extractor.XSSFEventBasedExcelExtractor: java.util.Locale locale>;	specialinvoke $r2.<org.apache.poi.ss.usermodel.DataFormatter: void <init>(java.util.Locale)>($r3);	r20 = $r2;	$r4 = new org.xml.sax.InputSource;	specialinvoke $r4.<org.xml.sax.InputSource: void <init>(java.io.InputStream)>(r5);	$r13 := @caughtexception;	$r14 = new java.lang.IllegalStateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SAX parser appears to be broken - ");	$r16 = virtualinvoke $r13.<javax.xml.parsers.ParserConfigurationException: java.lang.String getMessage()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19);	throw $r14
;block_num 4