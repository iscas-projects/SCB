(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2809 0)
(declare-sort var1423 0)
(declare-sort var3872 0)
(declare-sort var2315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locale/1273580107 (var2809) var1423)
(declare-fun var3872-init () var3872)
(declare-fun <init>/-939956699 (var3872) void)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun workbook/1273580107 (var2809) var2315)
(declare-fun iterator/1890922077 (var2315) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2809 var2809)
(declare-const null-var1423 var1423)
(declare-const var3834 var2809) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFExcelExtractor 
(assert (not (= var3834 null-var2809)))
(define-const var2435 var1423 (locale/1273580107 var3834)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: java.util.Locale locale> 
 ; Statement: if $r1 != null goto $r56 = new org.apache.poi.ss.usermodel.DataFormatter 
(assert (not (not (= var2435 null-var1423)))) ; Negate: Cond: $r1 != null  
(define-const var3162 var3872 var3872-init) ; Statement: $r55 = new org.apache.poi.ss.usermodel.DataFormatter 
(assert true)
;(assert (<init>/-939956699 var3162)) ; Statement: specialinvoke $r55.<org.apache.poi.ss.usermodel.DataFormatter: void <init>()>() 

(declare-const var3162!1 var3872)
(define-const var3485 var3872 var3162!1) ; Statement: r45 = $r55 
 ; Statement: goto [?= $r57 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1284 String String-init) ; Statement: $r57 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1284 64)) ; Statement: specialinvoke $r57.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var1284!1 String)
(declare-const var370 Int)
(define-const var3293 var2315 (workbook/1273580107 var3834)) ; Statement: $r5 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: org.apache.poi.xssf.usermodel.XSSFWorkbook workbook> 
(assert true)
(define-const var2850 Iterator (iterator/1890922077 var3293)) ; Statement: $r44 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1552 Bool (Iterator_hasNext/-1669924200 var2850)) ; Statement: $z7 = interfaceinvoke $r44.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z7 == 0 goto $r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1552 1 0) 0)) ; Cond: $z7 == 0 
(assert true)
(define-const var2088 String (toString/-2075883882 var1284!1)) ; Statement: $r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {locale/1273580107=([org.apache.poi.xssf.extractor.XSSFExcelExtractor], java.util.Locale), var3872-init=([], org.apache.poi.ss.usermodel.DataFormatter), <init>/-939956699=([org.apache.poi.ss.usermodel.DataFormatter], void), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), workbook/1273580107=([org.apache.poi.xssf.extractor.XSSFExcelExtractor], org.apache.poi.xssf.usermodel.XSSFWorkbook), iterator/1890922077=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2809=org.apache.poi.xssf.extractor.XSSFExcelExtractor, var3834=r0, var1423=java.util.Locale, var2435=$r1, var3872=org.apache.poi.ss.usermodel.DataFormatter, var3162=$r55, var3485=r45, var1284=$r57, var370=64, var2315=org.apache.poi.xssf.usermodel.XSSFWorkbook, var3293=$r5, var2850=$r44, var1552=$z7, var2088=$r6}
; {org.apache.poi.xssf.extractor.XSSFExcelExtractor=var2809, r0=var3834, java.util.Locale=var1423, $r1=var2435, org.apache.poi.ss.usermodel.DataFormatter=var3872, $r55=var3162, r45=var3485, $r57=var1284, 64=var370, org.apache.poi.xssf.usermodel.XSSFWorkbook=var2315, $r5=var3293, $r44=var2850, $z7=var1552, $r6=var2088}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFExcelExtractor;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: java.util.Locale locale>;	if $r1 != null goto $r56 = new org.apache.poi.ss.usermodel.DataFormatter;	$r55 = new org.apache.poi.ss.usermodel.DataFormatter;	specialinvoke $r55.<org.apache.poi.ss.usermodel.DataFormatter: void <init>()>();	r45 = $r55;	goto [?= $r57 = new java.lang.StringBuilder];	$r57 = new java.lang.StringBuilder;	specialinvoke $r57.<java.lang.StringBuilder: void <init>(int)>(64);	$r5 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: org.apache.poi.xssf.usermodel.XSSFWorkbook workbook>;	$r44 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.Iterator iterator()>();	$z7 = interfaceinvoke $r44.<java.util.Iterator: boolean hasNext()>();	if $z7 == 0 goto $r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5