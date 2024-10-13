(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var558 0)
(declare-sort var1040 0)
(declare-sort var1867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun rawString/2016008533 (var558) String)
(declare-fun getLeftSection/766691670 (var1040 String) String)
(declare-fun getCenterSection/-807715932 (var1040 String) String)
(declare-fun getRightSection/-720868217 (var1040 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var558 var558)
(declare-const var558-HEADER_FOOTER_HELPER var1040)
(declare-const null-String String)
(declare-const var524 var558) ; Statement: r1 := @this: org.apache.poi.xssf.binary.XSSFBHeaderFooter 
(assert (not (= var524 null-var558)))
(define-const var1244 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1244)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1244!1 String)
(assert (= var1244!1 ""))
(define-const var3064 var1040 var558-HEADER_FOOTER_HELPER) ; Statement: $r3 = <org.apache.poi.xssf.binary.XSSFBHeaderFooter: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper HEADER_FOOTER_HELPER> 
(define-const var635 String (rawString/2016008533 var524)) ; Statement: $r2 = r1.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: java.lang.String rawString> 
(assert true)
(define-const var140 String (getLeftSection/766691670 var3064 var635)) ; Statement: r4 = virtualinvoke $r3.<org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper: java.lang.String getLeftSection(java.lang.String)>($r2) 
(define-const var2275 var1040 var558-HEADER_FOOTER_HELPER) ; Statement: $r6 = <org.apache.poi.xssf.binary.XSSFBHeaderFooter: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper HEADER_FOOTER_HELPER> 
(define-const var3429 String (rawString/2016008533 var524)) ; Statement: $r5 = r1.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: java.lang.String rawString> 
(assert true)
(define-const var2115 String (getCenterSection/-807715932 var2275 var3429)) ; Statement: r7 = virtualinvoke $r6.<org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper: java.lang.String getCenterSection(java.lang.String)>($r5) 
(define-const var637 var1040 var558-HEADER_FOOTER_HELPER) ; Statement: $r9 = <org.apache.poi.xssf.binary.XSSFBHeaderFooter: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper HEADER_FOOTER_HELPER> 
(define-const var3075 String (rawString/2016008533 var524)) ; Statement: $r8 = r1.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: java.lang.String rawString> 
(assert true)
(define-const var954 String (getRightSection/-720868217 var637 var3075)) ; Statement: r10 = virtualinvoke $r9.<org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper: java.lang.String getRightSection(java.lang.String)>($r8) 
 ; Statement: if r4 == null goto (branch) 
(assert (= var140 null-String)) ; Cond: r4 == null 
 ; Statement: if r7 == null goto (branch) 
(assert (= var2115 null-String)) ; Cond: r7 == null 
 ; Statement: if r10 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var954 null-String)) ; Cond: r10 == null 
(assert true)
(define-const var703 String (toString/-2075883882 var1244!1)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), rawString/2016008533=([org.apache.poi.xssf.binary.XSSFBHeaderFooter], java.lang.String), getLeftSection/766691670=([org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper, java.lang.String], java.lang.String), getCenterSection/-807715932=([org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper, java.lang.String], java.lang.String), getRightSection/-720868217=([org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var558=org.apache.poi.xssf.binary.XSSFBHeaderFooter, var524=r1, var1244=$r0, var1040=org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper, var3064=$r3, var635=$r2, var140=r4, var2275=$r6, var3429=$r5, var2115=r7, var637=$r9, var3075=$r8, var954=r10, var1867=null_type, var703=$r11}
; {org.apache.poi.xssf.binary.XSSFBHeaderFooter=var558, r1=var524, $r0=var1244, org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper=var1040, $r3=var3064, $r2=var635, r4=var140, $r6=var2275, $r5=var3429, r7=var2115, $r9=var637, $r8=var3075, r10=var954, null_type=var1867, $r11=var703}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.binary.XSSFBHeaderFooter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.apache.poi.xssf.binary.XSSFBHeaderFooter: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper HEADER_FOOTER_HELPER>;	$r2 = r1.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: java.lang.String rawString>;	r4 = virtualinvoke $r3.<org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper: java.lang.String getLeftSection(java.lang.String)>($r2);	$r6 = <org.apache.poi.xssf.binary.XSSFBHeaderFooter: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper HEADER_FOOTER_HELPER>;	$r5 = r1.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: java.lang.String rawString>;	r7 = virtualinvoke $r6.<org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper: java.lang.String getCenterSection(java.lang.String)>($r5);	$r9 = <org.apache.poi.xssf.binary.XSSFBHeaderFooter: org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper HEADER_FOOTER_HELPER>;	$r8 = r1.<org.apache.poi.xssf.binary.XSSFBHeaderFooter: java.lang.String rawString>;	r10 = virtualinvoke $r9.<org.apache.poi.xssf.usermodel.helpers.HeaderFooterHelper: java.lang.String getRightSection(java.lang.String)>($r8);	if r4 == null goto (branch);	if r7 == null goto (branch);	if r10 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 4