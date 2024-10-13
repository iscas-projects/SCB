(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2857 0)
(declare-sort var3583 0)
(declare-sort var495 0)
(declare-sort var1877 0)
(declare-sort var1151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pivotTableDefinition/2126006640 (var2857) var3583)
(declare-fun var3583_setMultipleFieldFilters/-1319819971 (var3583 Bool) void)
(declare-fun var3583_setIndent/-1145837226 (var3583 Int) void)
(declare-fun var3583_setCreatedVersion/336758736 (var3583 Int) void)
(declare-fun var3583_setMinRefreshableVersion/-1595721337 (var3583 Int) void)
(declare-fun var3583_setUpdatedVersion/-2002393699 (var3583 Int) void)
(declare-fun var3583_setItemPrintTitles/-25451981 (var3583 Bool) void)
(declare-fun var3583_setUseAutoFormatting/-438873287 (var3583 Bool) void)
(declare-fun var3583_setApplyNumberFormats/-580356815 (var3583 Bool) void)
(declare-fun var3583_setApplyWidthHeightFormats/236499515 (var3583 Bool) void)
(declare-fun var3583_setApplyAlignmentFormats/-157882523 (var3583 Bool) void)
(declare-fun var3583_setApplyPatternFormats/-931807464 (var3583 Bool) void)
(declare-fun var3583_setApplyFontFormats/-807348437 (var3583 Bool) void)
(declare-fun var3583_setApplyBorderFormats/1244880558 (var3583 Bool) void)
(declare-fun pivotCache/2126006640 (var2857) var495)
(declare-fun getCTPivotCache/-23330192 (var495) var1877)
(declare-fun var1877_getCacheId/-161483628 (var1877) Int)
(declare-fun var3583_setCacheId/-764776333 (var3583 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3583_getCacheId/1477966547 (var3583) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3583_setName/1271758208 (var3583 String) void)
(declare-fun var3583_setDataCaption/-248497507 (var3583 String) void)
(declare-fun var3583_addNewPivotTableStyleInfo/-1241406395 (var3583) var1151)
(declare-fun var1151_setName/304139250 (var1151 String) void)
(declare-fun var1151_setShowLastColumn/18105571 (var1151 Bool) void)
(declare-fun var1151_setShowColStripes/-317598979 (var1151 Bool) void)
(declare-fun var1151_setShowRowStripes/-237889053 (var1151 Bool) void)
(declare-fun var1151_setShowColHeaders/28731581 (var1151 Bool) void)
(declare-fun var1151_setShowRowHeaders/108441507 (var1151 Bool) void)
(declare-const null-var2857 var2857)
(declare-const var520 var2857) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFPivotTable 
(assert (not (= var520 null-var2857)))
(define-const var1410 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setMultipleFieldFilters/-1319819971 var1410 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setMultipleFieldFilters(boolean)>(0) 

(declare-const var1410!1 var3583)
(declare-const var3195 Int)
(define-const var1597 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setIndent/-1145837226 var1597 0)) ; Statement: interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setIndent(long)>(0L) 

(declare-const var1597!1 var3583)
(declare-const var2007 Int)
(define-const var260 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setCreatedVersion/336758736 var260 3)) ; Statement: interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setCreatedVersion(short)>(3) 

(declare-const var260!1 var3583)
(declare-const var312 Int)
(define-const var2809 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r4 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setMinRefreshableVersion/-1595721337 var2809 3)) ; Statement: interfaceinvoke $r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setMinRefreshableVersion(short)>(3) 

(declare-const var2809!1 var3583)
(declare-const var312!1 Int)
(define-const var326 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r5 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setUpdatedVersion/-2002393699 var326 3)) ; Statement: interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setUpdatedVersion(short)>(3) 

(declare-const var326!1 var3583)
(declare-const var312!2 Int)
(define-const var3710 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r6 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setItemPrintTitles/-25451981 var3710 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r6.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setItemPrintTitles(boolean)>(1) 

(declare-const var3710!1 var3583)
(declare-const var2847 Int)
(define-const var2168 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r7 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setUseAutoFormatting/-438873287 var2168 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r7.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setUseAutoFormatting(boolean)>(1) 

(declare-const var2168!1 var3583)
(declare-const var2847!1 Int)
(define-const var820 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r8 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setApplyNumberFormats/-580356815 var820 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r8.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyNumberFormats(boolean)>(0) 

(declare-const var820!1 var3583)
(declare-const var3195!1 Int)
(define-const var1035 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r9 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setApplyWidthHeightFormats/236499515 var1035 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r9.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyWidthHeightFormats(boolean)>(1) 

(declare-const var1035!1 var3583)
(declare-const var2847!2 Int)
(define-const var2539 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r10 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setApplyAlignmentFormats/-157882523 var2539 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r10.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyAlignmentFormats(boolean)>(0) 

(declare-const var2539!1 var3583)
(declare-const var3195!2 Int)
(define-const var2132 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r11 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setApplyPatternFormats/-931807464 var2132 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyPatternFormats(boolean)>(0) 

(declare-const var2132!1 var3583)
(declare-const var3195!3 Int)
(define-const var862 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r12 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setApplyFontFormats/-807348437 var862 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r12.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyFontFormats(boolean)>(0) 

(declare-const var862!1 var3583)
(declare-const var3195!4 Int)
(define-const var2756 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r13 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setApplyBorderFormats/1244880558 var2756 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r13.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyBorderFormats(boolean)>(0) 

(declare-const var2756!1 var3583)
(declare-const var3195!5 Int)
(define-const var554 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r15 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
(define-const var1157 var495 (pivotCache/2126006640 var520)) ; Statement: $r14 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.apache.poi.xssf.usermodel.XSSFPivotCache pivotCache> 
(assert true)
(define-const var832 var1877 (getCTPivotCache/-23330192 var1157)) ; Statement: $r16 = virtualinvoke $r14.<org.apache.poi.xssf.usermodel.XSSFPivotCache: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache getCTPivotCache()>() 
(define-const var2051 Int (var1877_getCacheId/-161483628 var832)) ; Statement: $l0 = interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache: long getCacheId()>() 
;(assert (var3583_setCacheId/-764776333 var554 var2051)) ; Statement: interfaceinvoke $r15.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setCacheId(long)>($l0) 

(declare-const var554!1 var3583)
(declare-const var2051!1 Int)
(define-const var3004 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r18 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
(define-const var1961 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1961)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1961!1 String)
(assert (= var1961!1 ""))
(assert true)
(define-const var3581 String (append/672562846 var1961!1 "PivotTable")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PivotTable") 
(declare-const var1961!2 String)
(assert (= var1961!2 (str.++ var1961!1 "PivotTable")))
(define-const var694 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r19 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
(define-const var1878 Int (var3583_getCacheId/1477966547 var694)) ; Statement: $l1 = interfaceinvoke $r19.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: long getCacheId()>() 
(assert true)
(define-const var1331 String (append/-901862667 var3581 var1878)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var3581!1 String)
(assert (str.prefixof var3581 var3581!1))
(assert true)
(define-const var2427 String (toString/-2075883882 var1331)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3583_setName/1271758208 var3004 var2427)) ; Statement: interfaceinvoke $r18.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setName(java.lang.String)>($r22) 

(declare-const var3004!1 var3583)
(declare-const var2427!1 String)
(define-const var2170 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r23 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
;(assert (var3583_setDataCaption/-248497507 var2170 "Values")) ; Statement: interfaceinvoke $r23.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setDataCaption(java.lang.String)>("Values") 

(declare-const var2170!1 var3583)
(declare-const var3524 String)
(define-const var2259 var3583 (pivotTableDefinition/2126006640 var520)) ; Statement: $r24 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition> 
(define-const var1261 var1151 (var3583_addNewPivotTableStyleInfo/-1241406395 var2259)) ; Statement: r25 = interfaceinvoke $r24.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle addNewPivotTableStyleInfo()>() 
;(assert (var1151_setName/304139250 var1261 "PivotStyleLight16")) ; Statement: interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setName(java.lang.String)>("PivotStyleLight16") 

(declare-const var1261!1 var1151)
(declare-const var3828 String)
;(assert (var1151_setShowLastColumn/18105571 var1261!1 (ite (= 1 1) true false))) ; Statement: interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowLastColumn(boolean)>(1) 

(declare-const var1261!2 var1151)
(declare-const var2847!3 Int)
;(assert (var1151_setShowColStripes/-317598979 var1261!2 (ite (= 1 0) true false))) ; Statement: interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowColStripes(boolean)>(0) 

(declare-const var1261!3 var1151)
(declare-const var3195!6 Int)
;(assert (var1151_setShowRowStripes/-237889053 var1261!3 (ite (= 1 0) true false))) ; Statement: interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowRowStripes(boolean)>(0) 

(declare-const var1261!4 var1151)
(declare-const var3195!7 Int)
;(assert (var1151_setShowColHeaders/28731581 var1261!4 (ite (= 1 1) true false))) ; Statement: interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowColHeaders(boolean)>(1) 

(declare-const var1261!5 var1151)
(declare-const var2847!4 Int)
;(assert (var1151_setShowRowHeaders/108441507 var1261!5 (ite (= 1 1) true false))) ; Statement: interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowRowHeaders(boolean)>(1) 

(declare-const var1261!6 var1151)
(declare-const var2847!5 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {pivotTableDefinition/2126006640=([org.apache.poi.xssf.usermodel.XSSFPivotTable], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition), var3583_setMultipleFieldFilters/-1319819971=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setIndent/-1145837226=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, long], void), var3583_setCreatedVersion/336758736=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, short], void), var3583_setMinRefreshableVersion/-1595721337=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, short], void), var3583_setUpdatedVersion/-2002393699=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, short], void), var3583_setItemPrintTitles/-25451981=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setUseAutoFormatting/-438873287=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setApplyNumberFormats/-580356815=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setApplyWidthHeightFormats/236499515=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setApplyAlignmentFormats/-157882523=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setApplyPatternFormats/-931807464=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setApplyFontFormats/-807348437=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), var3583_setApplyBorderFormats/1244880558=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, boolean], void), pivotCache/2126006640=([org.apache.poi.xssf.usermodel.XSSFPivotTable], org.apache.poi.xssf.usermodel.XSSFPivotCache), getCTPivotCache/-23330192=([org.apache.poi.xssf.usermodel.XSSFPivotCache], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache), var1877_getCacheId/-161483628=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache], long), var3583_setCacheId/-764776333=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, long], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3583_getCacheId/1477966547=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3583_setName/1271758208=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, java.lang.String], void), var3583_setDataCaption/-248497507=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, java.lang.String], void), var3583_addNewPivotTableStyleInfo/-1241406395=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle), var1151_setName/304139250=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle, java.lang.String], void), var1151_setShowLastColumn/18105571=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle, boolean], void), var1151_setShowColStripes/-317598979=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle, boolean], void), var1151_setShowRowStripes/-237889053=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle, boolean], void), var1151_setShowColHeaders/28731581=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle, boolean], void), var1151_setShowRowHeaders/108441507=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle, boolean], void)}
; {var2857=org.apache.poi.xssf.usermodel.XSSFPivotTable, var520=r0, var3583=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition, var1410=$r1, var3195=0, var1597=$r2, var2007=0L, var260=$r3, var312=3, var2809=$r4, var326=$r5, var3710=$r6, var2847=1, var2168=$r7, var820=$r8, var1035=$r9, var2539=$r10, var2132=$r11, var862=$r12, var2756=$r13, var554=$r15, var495=org.apache.poi.xssf.usermodel.XSSFPivotCache, var1157=$r14, var1877=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache, var832=$r16, var2051=$l0, var3004=$r18, var1961=$r17, var3581=$r20, var694=$r19, var1878=$l1, var1331=$r21, var2427=$r22, var2170=$r23, var3524="Values", var2259=$r24, var1151=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle, var1261=r25, var3828="PivotStyleLight16"}
; {org.apache.poi.xssf.usermodel.XSSFPivotTable=var2857, r0=var520, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition=var3583, $r1=var1410, 0=var3195, $r2=var1597, 0L=var2007, $r3=var260, 3=var312, $r4=var2809, $r5=var326, $r6=var3710, 1=var2847, $r7=var2168, $r8=var820, $r9=var1035, $r10=var2539, $r11=var2132, $r12=var862, $r13=var2756, $r15=var554, org.apache.poi.xssf.usermodel.XSSFPivotCache=var495, $r14=var1157, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache=var1877, $r16=var832, $l0=var2051, $r18=var3004, $r17=var1961, $r20=var3581, $r19=var694, $l1=var1878, $r21=var1331, $r22=var2427, $r23=var2170, "Values"=var3524, $r24=var2259, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle=var1151, r25=var1261, "PivotStyleLight16"=var3828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFPivotTable;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setMultipleFieldFilters(boolean)>(0);	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setIndent(long)>(0L);	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setCreatedVersion(short)>(3);	$r4 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setMinRefreshableVersion(short)>(3);	$r5 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setUpdatedVersion(short)>(3);	$r6 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r6.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setItemPrintTitles(boolean)>(1);	$r7 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r7.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setUseAutoFormatting(boolean)>(1);	$r8 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r8.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyNumberFormats(boolean)>(0);	$r9 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r9.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyWidthHeightFormats(boolean)>(1);	$r10 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r10.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyAlignmentFormats(boolean)>(0);	$r11 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r11.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyPatternFormats(boolean)>(0);	$r12 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r12.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyFontFormats(boolean)>(0);	$r13 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r13.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setApplyBorderFormats(boolean)>(0);	$r15 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	$r14 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.apache.poi.xssf.usermodel.XSSFPivotCache pivotCache>;	$r16 = virtualinvoke $r14.<org.apache.poi.xssf.usermodel.XSSFPivotCache: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache getCTPivotCache()>();	$l0 = interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCache: long getCacheId()>();	interfaceinvoke $r15.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setCacheId(long)>($l0);	$r18 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PivotTable");	$r19 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	$l1 = interfaceinvoke $r19.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: long getCacheId()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r18.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setName(java.lang.String)>($r22);	$r23 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	interfaceinvoke $r23.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: void setDataCaption(java.lang.String)>("Values");	$r24 = r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition pivotTableDefinition>;	r25 = interfaceinvoke $r24.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle addNewPivotTableStyleInfo()>();	interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setName(java.lang.String)>("PivotStyleLight16");	interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowLastColumn(boolean)>(1);	interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowColStripes(boolean)>(0);	interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowRowStripes(boolean)>(0);	interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowColHeaders(boolean)>(1);	interfaceinvoke r25.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableStyle: void setShowRowHeaders(boolean)>(1);	return
;block_num 1