(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var390 0)
(declare-sort var706 0)
(declare-sort var3892 0)
(declare-sort var3079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun locale/1273580107 (var390) var706)
(declare-fun var3892-init () var3892)
(declare-fun <init>/1360277439 (var3892 var706) void)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun workbook/1273580107 (var390) var3079)
(declare-fun iterator/1890922077 (var3079) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var390 var390)
(declare-const null-var706 var706)
(declare-const var1014 var390) ; Statement: r0 := @this: org.apache.poi.xssf.extractor.XSSFExcelExtractor 
(assert (not (= var1014 null-var390)))
(define-const var3822 var706 (locale/1273580107 var1014)) ; Statement: $r1 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: java.util.Locale locale> 
 ; Statement: if $r1 != null goto $r56 = new org.apache.poi.ss.usermodel.DataFormatter 
(assert (not (= var3822 null-var706))) ; Cond: $r1 != null 
(define-const var578 var3892 var3892-init) ; Statement: $r56 = new org.apache.poi.ss.usermodel.DataFormatter 
(define-const var2577 var706 (locale/1273580107 var1014)) ; Statement: $r3 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: java.util.Locale locale> 
(assert true)
;(assert (<init>/1360277439 var578 var2577)) ; Statement: specialinvoke $r56.<org.apache.poi.ss.usermodel.DataFormatter: void <init>(java.util.Locale)>($r3) 

(declare-const var578!1 var3892)
(declare-const var2577!1 var706)
(define-const var3508 var3892 var578!1) ; Statement: r45 = $r56 
(assert true) ; Non Conditional
(define-const var3952 String String-init) ; Statement: $r57 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3952 64)) ; Statement: specialinvoke $r57.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3952!1 String)
(declare-const var2728 Int)
(define-const var322 var3079 (workbook/1273580107 var1014)) ; Statement: $r5 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: org.apache.poi.xssf.usermodel.XSSFWorkbook workbook> 
(assert true)
(define-const var2087 Iterator (iterator/1890922077 var322)) ; Statement: $r44 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3840 Bool (Iterator_hasNext/-1669924200 var2087)) ; Statement: $z7 = interfaceinvoke $r44.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z7 == 0 goto $r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3840 1 0) 0)) ; Cond: $z7 == 0 
(assert true)
(define-const var3584 String (toString/-2075883882 var3952!1)) ; Statement: $r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {locale/1273580107=([org.apache.poi.xssf.extractor.XSSFExcelExtractor], java.util.Locale), var3892-init=([], org.apache.poi.ss.usermodel.DataFormatter), <init>/1360277439=([org.apache.poi.ss.usermodel.DataFormatter, java.util.Locale], void), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), workbook/1273580107=([org.apache.poi.xssf.extractor.XSSFExcelExtractor], org.apache.poi.xssf.usermodel.XSSFWorkbook), iterator/1890922077=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var390=org.apache.poi.xssf.extractor.XSSFExcelExtractor, var1014=r0, var706=java.util.Locale, var3822=$r1, var3892=org.apache.poi.ss.usermodel.DataFormatter, var578=$r56, var2577=$r3, var3508=r45, var3952=$r57, var2728=64, var3079=org.apache.poi.xssf.usermodel.XSSFWorkbook, var322=$r5, var2087=$r44, var3840=$z7, var3584=$r6}
; {org.apache.poi.xssf.extractor.XSSFExcelExtractor=var390, r0=var1014, java.util.Locale=var706, $r1=var3822, org.apache.poi.ss.usermodel.DataFormatter=var3892, $r56=var578, $r3=var2577, r45=var3508, $r57=var3952, 64=var2728, org.apache.poi.xssf.usermodel.XSSFWorkbook=var3079, $r5=var322, $r44=var2087, $z7=var3840, $r6=var3584}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.extractor.XSSFExcelExtractor;	$r1 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: java.util.Locale locale>;	if $r1 != null goto $r56 = new org.apache.poi.ss.usermodel.DataFormatter;	$r56 = new org.apache.poi.ss.usermodel.DataFormatter;	$r3 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: java.util.Locale locale>;	specialinvoke $r56.<org.apache.poi.ss.usermodel.DataFormatter: void <init>(java.util.Locale)>($r3);	r45 = $r56;	$r57 = new java.lang.StringBuilder;	specialinvoke $r57.<java.lang.StringBuilder: void <init>(int)>(64);	$r5 = r0.<org.apache.poi.xssf.extractor.XSSFExcelExtractor: org.apache.poi.xssf.usermodel.XSSFWorkbook workbook>;	$r44 = virtualinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.Iterator iterator()>();	$z7 = interfaceinvoke $r44.<java.util.Iterator: boolean hasNext()>();	if $z7 == 0 goto $r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5