(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1738 0)
(declare-sort var3596 0)
(declare-sort var1516 0)
(declare-sort var3566 0)
(declare-sort var3294 0)
(declare-sort var3971 0)
(declare-sort var3342 0)
(declare-sort var1288 0)
(declare-sort var1851 0)
(declare-sort var3125 0)
(declare-sort var673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3566_getDataType/-390875446 (String) var3566)
(declare-fun var3971-init () var3971)
(declare-fun var1288_getUserLocale/-603789096 () var3342)
(declare-fun arr-var1851-init () (Array Int var1851))
(declare-fun cast-from-String-to-var1851 (String) var1851)
(declare-fun cast-from-var3566-to-var1851 (var3566) var1851)
(declare-fun var3125-init () var3125)
(declare-fun cast-from-var1516-to-var673 (var1516) var673)
(declare-fun <init>/1524963672 (var3125 var673) void)
(declare-fun formatAsString/583597915 (var3125) String)
(declare-fun String_format/-647569892 (var3342 String (Array Int var1851)) String)
(declare-fun <init>/875830710 (var3971 String) void)
(declare-const null-var1738 var1738)
(declare-const null-String String)
(declare-const null-var1516 var1516)
(declare-const null-var3294 var3294)
(declare-const null-__Array__Int__var1851__ (Array Int var1851))
(declare-const var2690 var1738) ; Statement: r16 := @this: org.apache.poi.xssf.extractor.XSSFImportFromXML 
(assert (not (= var2690 null-var1738)))
(declare-const var3688 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3688 null-String)))
(declare-const var360 var1516) ; Statement: r3 := @parameter1: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var360 null-var1516)))
(declare-const var501 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var501 null-String)))
(define-const var21 var3566 (var3566_getDataType/-390875446 var501)) ; Statement: r1 = staticinvoke <org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType: org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType getDataType(java.lang.String)>(r0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2952 var3294) ; Statement: $r9 := @caughtexception 
(assert (not (= var2952 null-var3294)))
(define-const var3858 var3971 var3971-init) ; Statement: $r19 = new java.lang.IllegalArgumentException 
(define-const var3061 var3342 var1288_getUserLocale/-603789096) ; Statement: $r14 = staticinvoke <org.apache.poi.util.LocaleUtil: java.util.Locale getUserLocale()>() 
(define-const var1612 (Array Int var1851) arr-var1851-init) ; Statement: $r11 = newarray (java.lang.Object)[3] 
(declare-const var1612!1 (Array Int var1851))
(assert (not (= var1612!1 null-__Array__Int__var1851__)))
(assert (= (select var1612!1 0) (cast-from-String-to-var1851 var3688))) ; Statement: $r11[0] = r2 
(declare-const var1612!2 (Array Int var1851))
(assert (not (= var1612!2 null-__Array__Int__var1851__)))
(assert (= (select var1612!2 1) (cast-from-var3566-to-var1851 var21))) ; Statement: $r11[1] = r1 
(define-const var529 var3125 var3125-init) ; Statement: $r18 = new org.apache.poi.ss.util.CellReference 
(define-const var2238 var673 (cast-from-var1516-to-var673 var360)) ; Statement: $r20 = (org.apache.poi.ss.usermodel.Cell) r3 
(assert true)
;(assert (<init>/1524963672 var529 var2238)) ; Statement: specialinvoke $r18.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>($r20) 

(declare-const var529!1 var3125)
(declare-const var2238!1 var673)
(assert true)
(define-const var2239 String (formatAsString/583597915 var529!1)) ; Statement: $r13 = virtualinvoke $r18.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(declare-const var1612!3 (Array Int var1851))
(assert (not (= var1612!3 null-__Array__Int__var1851__)))
(assert (= (select var1612!3 2) (cast-from-String-to-var1851 var2239))) ; Statement: $r11[2] = $r13 
(define-const var68 String (String_format/-647569892 var3061 "Unable to format value \u0027%s\u0027 as %s for cell %s" var1612!3)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "Unable to format value \'%s\' as %s for cell %s", $r11) 
(assert true)
;(assert (<init>/875830710 var3858 var68)) ; Statement: specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var3858!1 var3971)
(declare-const var68!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var3566_getDataType/-390875446=([java.lang.String], org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType), var3971-init=([], java.lang.IllegalArgumentException), var1288_getUserLocale/-603789096=([], java.util.Locale), arr-var1851-init=([], java.lang.Object[]), cast-from-String-to-var1851=([java.lang.String], java.lang.Object), cast-from-var3566-to-var1851=([org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType], java.lang.Object), var3125-init=([], org.apache.poi.ss.util.CellReference), cast-from-var1516-to-var673=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.Cell), <init>/1524963672=([org.apache.poi.ss.util.CellReference, org.apache.poi.ss.usermodel.Cell], void), formatAsString/583597915=([org.apache.poi.ss.util.CellReference], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1738=org.apache.poi.xssf.extractor.XSSFImportFromXML, var2690=r16, var3688=r2, var3596=null_type, var1516=org.apache.poi.xssf.usermodel.XSSFCell, var360=r3, var501=r0, var3566=org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType, var21=r1, var3294=java.lang.Exception, var2952=$r9, var3971=java.lang.IllegalArgumentException, var3858=$r19, var3342=java.util.Locale, var1288=org.apache.poi.util.LocaleUtil, var3061=$r14, var1851=java.lang.Object, var1612=$r11, var3125=org.apache.poi.ss.util.CellReference, var529=$r18, var673=org.apache.poi.ss.usermodel.Cell, var2238=$r20, var2239=$r13, var68=$r15}
; {org.apache.poi.xssf.extractor.XSSFImportFromXML=var1738, r16=var2690, r2=var3688, null_type=var3596, org.apache.poi.xssf.usermodel.XSSFCell=var1516, r3=var360, r0=var501, org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType=var3566, r1=var21, java.lang.Exception=var3294, $r9=var2952, java.lang.IllegalArgumentException=var3971, $r19=var3858, java.util.Locale=var3342, org.apache.poi.util.LocaleUtil=var1288, $r14=var3061, java.lang.Object=var1851, $r11=var1612, org.apache.poi.ss.util.CellReference=var3125, $r18=var529, org.apache.poi.ss.usermodel.Cell=var673, $r20=var2238, $r13=var2239, $r15=var68}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r16 := @this: org.apache.poi.xssf.extractor.XSSFImportFromXML;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: org.apache.poi.xssf.usermodel.XSSFCell;	r0 := @parameter2: java.lang.String;	r1 = staticinvoke <org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType: org.apache.poi.xssf.extractor.XSSFImportFromXML$DataType getDataType(java.lang.String)>(r0);	$r9 := @caughtexception;	$r19 = new java.lang.IllegalArgumentException;	$r14 = staticinvoke <org.apache.poi.util.LocaleUtil: java.util.Locale getUserLocale()>();	$r11 = newarray (java.lang.Object)[3];	$r11[0] = r2;	$r11[1] = r1;	$r18 = new org.apache.poi.ss.util.CellReference;	$r20 = (org.apache.poi.ss.usermodel.Cell) r3;	specialinvoke $r18.<org.apache.poi.ss.util.CellReference: void <init>(org.apache.poi.ss.usermodel.Cell)>($r20);	$r13 = virtualinvoke $r18.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r11[2] = $r13;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r14, "Unable to format value \'%s\' as %s for cell %s", $r11);	specialinvoke $r19.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r19
;block_num 2