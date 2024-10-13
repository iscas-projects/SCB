(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1085 0)
(declare-sort var3780 0)
(declare-sort var3323 0)
(declare-sort var3055 0)
(declare-sort var3062 0)
(declare-sort var16 0)
(declare-sort var1162 0)
(declare-sort var199 0)
(declare-sort var2491 0)
(declare-sort var2483 0)
(declare-sort var3635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun worksheet/-1100774885 (var1085) var3323)
(declare-fun var3323_getAutoFilter/-1954525087 (var3323) var3055)
(declare-fun var3780-init () var3780)
(declare-fun getFirstRow/-600747447 (var3780) Int)
(declare-fun getLastRow/-1264994685 (var3780) Int)
(declare-fun getFirstColumn/-1595317375 (var3780) Int)
(declare-fun getLastColumn/1024515335 (var3780) Int)
(declare-fun <init>/1037535432 (var3780 Int Int Int Int) void)
(declare-fun formatAsString/-350734525 (var3780) String)
(declare-fun var3055_setRef/-1837841298 (var3055 String) void)
(declare-fun getWorkbook/803238250 (var1085) var3062)
(declare-fun getSheetIndex/-737518688 (var3062 var16) Int)
(declare-fun cast-from-var1085-to-var16 (var1085) var16)
(declare-fun getBuiltInName/1235420764 (var3062 String Int) var1162)
(declare-fun createBuiltInName/1611968516 (var3062 String Int) var1162)
(declare-fun getCTName/1583544904 (var1162) var199)
(declare-fun var199_setHidden/-1426768141 (var199 Bool) void)
(declare-fun var2491-init () var2491)
(declare-fun getSheetName/173734675 (var1085) String)
(declare-fun <init>/-949075851 (var2491 String Int Int Bool Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun formatAsString/583597915 (var2491) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setRefersToFormula/1729336561 (var1162 String) void)
(declare-fun var3635-init () var3635)
(declare-fun <init>/-393997799 (var3635 var1085) void)
(declare-const null-var1085 var1085)
(declare-const null-var3780 var3780)
(declare-const null-var3055 var3055)
(declare-const null-var1162 var1162)
(declare-const null-NullType var2483)
(declare-const null-String String)
(declare-const var1092 var1085) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1092 null-var1085)))
(declare-const var2498 var3780) ; Statement: r3 := @parameter0: org.apache.poi.ss.util.CellRangeAddress 
(assert (not (= var2498 null-var3780)))
(define-const var932 var3323 (worksheet/-1100774885 var1092)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var1379 var3055 (var3323_getAutoFilter/-1954525087 var932)) ; Statement: r21 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter getAutoFilter()>() 
 ; Statement: if r21 != null goto $r2 = new org.apache.poi.ss.util.CellRangeAddress 
(assert (not (= var1379 null-var3055))) ; Cond: r21 != null 
(define-const var1584 var3780 var3780-init) ; Statement: $r2 = new org.apache.poi.ss.util.CellRangeAddress 
(assert true)
(define-const var3297 Int (getFirstRow/-600747447 var2498)) ; Statement: $i3 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert true)
(define-const var694 Int (getLastRow/-1264994685 var2498)) ; Statement: $i2 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>() 
(assert true)
(define-const var643 Int (getFirstColumn/-1595317375 var2498)) ; Statement: $i1 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert true)
(define-const var1938 Int (getLastColumn/1024515335 var2498)) ; Statement: $i0 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
(assert true)
;(assert (<init>/1037535432 var1584 var3297 var694 var643 var1938)) ; Statement: specialinvoke $r2.<org.apache.poi.ss.util.CellRangeAddress: void <init>(int,int,int,int)>($i3, $i2, $i1, $i0) 

(declare-const var1584!1 var3780)
(declare-const var3297!1 Int)
(declare-const var694!1 Int)
(declare-const var643!1 Int)
(declare-const var1938!1 Int)
(assert true)
(define-const var1881 String (formatAsString/-350734525 var1584!1)) ; Statement: $r18 = virtualinvoke $r2.<org.apache.poi.ss.util.CellRangeAddress: java.lang.String formatAsString()>() 
;(assert (var3055_setRef/-1837841298 var1379 var1881)) ; Statement: interfaceinvoke r21.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter: void setRef(java.lang.String)>($r18) 

(declare-const var1379!1 var3055)
(declare-const var1881!1 String)
(assert true)
(define-const var281 var3062 (getWorkbook/803238250 var1092)) ; Statement: $r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var3885 var3062 (getWorkbook/803238250 var1092)) ; Statement: $r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>() 
(assert true)
(define-const var3175 Int (getSheetIndex/-737518688 var3885 (cast-from-var1085-to-var16 var1092))) ; Statement: $i8 = virtualinvoke $r4.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0) 
(assert true)
(define-const var2828 var1162 (getBuiltInName/1235420764 var281 "_xlnm._FilterDatabase" var3175)) ; Statement: $r20 = virtualinvoke $r19.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm._FilterDatabase", $i8) 
(define-const var731 var1162 var2828) ; Statement: r22 = $r20 
 ; Statement: if $r20 != null goto $r5 = virtualinvoke r22.<org.apache.poi.xssf.usermodel.XSSFName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName getCTName()>() 
(assert (not (not (= var2828 null-var1162)))) ; Negate: Cond: $r20 != null  
(assert true)
(define-const var731!1 var1162 (createBuiltInName/1611968516 var281 "_xlnm._FilterDatabase" var3175)) ; Statement: r22 = virtualinvoke $r19.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createBuiltInName(java.lang.String,int)>("_xlnm._FilterDatabase", $i8) 
(assert true) ; Non Conditional
(assert true)
(define-const var3459 var199 (getCTName/1583544904 var731!1)) ; Statement: $r5 = virtualinvoke r22.<org.apache.poi.xssf.usermodel.XSSFName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName getCTName()>() 
;(assert (var199_setHidden/-1426768141 var3459 (ite (= 1 1) true false))) ; Statement: interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setHidden(boolean)>(1) 

(declare-const var3459!1 var199)
(declare-const var1400 Int)
(define-const var750 var2491 var2491-init) ; Statement: $r6 = new org.apache.poi.ss.util.CellReference 
(assert true)
(define-const var3473 String (getSheetName/173734675 var1092)) ; Statement: $r7 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getSheetName()>() 
(assert true)
(define-const var2021 Int (getFirstRow/-600747447 var2498)) ; Statement: $i5 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>() 
(assert true)
(define-const var2319 Int (getFirstColumn/-1595317375 var2498)) ; Statement: $i4 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>() 
(assert true)
;(assert (<init>/-949075851 var750 var3473 var2021 var2319 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r6.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>($r7, $i5, $i4, 1, 1) 

(declare-const var750!1 var2491)
(declare-const var3473!1 String)
(declare-const var2021!1 Int)
(declare-const var2319!1 Int)
(declare-const var1400!1 Int)
(declare-const var1400!2 Int)
(define-const var1012 var2491 var2491-init) ; Statement: $r8 = new org.apache.poi.ss.util.CellReference 
(assert true)
(define-const var3399 Int (getLastRow/-1264994685 var2498)) ; Statement: $i7 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>() 
(assert true)
(define-const var3867 Int (getLastColumn/1024515335 var2498)) ; Statement: $i6 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>() 
(assert true)
;(assert (<init>/-949075851 var1012 null-String var3399 var3867 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r8.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(null, $i7, $i6, 1, 1) 

(declare-const var1012!1 var2491)
(declare-const var3009 var2483)
(declare-const var3399!1 Int)
(declare-const var3867!1 Int)
(declare-const var1400!3 Int)
(declare-const var1400!4 Int)
(define-const var1102 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1102)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1102!1 String)
(assert (= var1102!1 ""))
(assert true)
(define-const var2324 String (formatAsString/583597915 var750!1)) ; Statement: $r10 = virtualinvoke $r6.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(assert true)
(define-const var481 String (append/672562846 var1102!1 var2324)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1102!2 String)
(assert (= var1102!2 (str.++ var1102!1 var2324)))
(assert true)
(define-const var2888 String (append/672562846 var481 ":")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var481!1 String)
(assert (= var481!1 (str.++ var481 ":")))
(assert true)
(define-const var2582 String (formatAsString/583597915 var1012!1)) ; Statement: $r12 = virtualinvoke $r8.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>() 
(assert true)
(define-const var44 String (append/672562846 var2888 var2582)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 var2582)))
(assert true)
(define-const var2738 String (toString/-2075883882 var44)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setRefersToFormula/1729336561 var731!1 var2738)) ; Statement: virtualinvoke r22.<org.apache.poi.xssf.usermodel.XSSFName: void setRefersToFormula(java.lang.String)>($r16) 

(declare-const var731!2 var1162)
(declare-const var2738!1 String)
(define-const var2574 var3635 var3635-init) ; Statement: $r15 = new org.apache.poi.xssf.usermodel.XSSFAutoFilter 
(assert true)
;(assert (<init>/-393997799 var2574 var1092)) ; Statement: specialinvoke $r15.<org.apache.poi.xssf.usermodel.XSSFAutoFilter: void <init>(org.apache.poi.xssf.usermodel.XSSFSheet)>(r0) 

(declare-const var2574!1 var3635)
(declare-const var1092!1 var1085)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var3323_getAutoFilter/-1954525087=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter), var3780-init=([], org.apache.poi.ss.util.CellRangeAddress), getFirstRow/-600747447=([org.apache.poi.ss.util.CellRangeAddress], int), getLastRow/-1264994685=([org.apache.poi.ss.util.CellRangeAddress], int), getFirstColumn/-1595317375=([org.apache.poi.ss.util.CellRangeAddress], int), getLastColumn/1024515335=([org.apache.poi.ss.util.CellRangeAddress], int), <init>/1037535432=([org.apache.poi.ss.util.CellRangeAddress, int, int, int, int], void), formatAsString/-350734525=([org.apache.poi.ss.util.CellRangeAddress], java.lang.String), var3055_setRef/-1837841298=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter, java.lang.String], void), getWorkbook/803238250=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.xssf.usermodel.XSSFWorkbook), getSheetIndex/-737518688=([org.apache.poi.xssf.usermodel.XSSFWorkbook, org.apache.poi.ss.usermodel.Sheet], int), cast-from-var1085-to-var16=([org.apache.poi.xssf.usermodel.XSSFSheet], org.apache.poi.ss.usermodel.Sheet), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), createBuiltInName/1611968516=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), getCTName/1583544904=([org.apache.poi.xssf.usermodel.XSSFName], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName), var199_setHidden/-1426768141=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, boolean], void), var2491-init=([], org.apache.poi.ss.util.CellReference), getSheetName/173734675=([org.apache.poi.xssf.usermodel.XSSFSheet], java.lang.String), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), formatAsString/583597915=([org.apache.poi.ss.util.CellReference], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setRefersToFormula/1729336561=([org.apache.poi.xssf.usermodel.XSSFName, java.lang.String], void), var3635-init=([], org.apache.poi.xssf.usermodel.XSSFAutoFilter), <init>/-393997799=([org.apache.poi.xssf.usermodel.XSSFAutoFilter, org.apache.poi.xssf.usermodel.XSSFSheet], void)}
; {var1085=org.apache.poi.xssf.usermodel.XSSFSheet, var1092=r0, var3780=org.apache.poi.ss.util.CellRangeAddress, var2498=r3, var3323=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var932=$r1, var3055=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter, var1379=r21, var1584=$r2, var3297=$i3, var694=$i2, var643=$i1, var1938=$i0, var1881=$r18, var3062=org.apache.poi.xssf.usermodel.XSSFWorkbook, var281=$r19, var3885=$r4, var16=org.apache.poi.ss.usermodel.Sheet, var3175=$i8, var1162=org.apache.poi.xssf.usermodel.XSSFName, var2828=$r20, var731=r22, var199=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, var3459=$r5, var1400=1, var2491=org.apache.poi.ss.util.CellReference, var750=$r6, var3473=$r7, var2021=$i5, var2319=$i4, var1012=$r8, var3399=$i7, var3867=$i6, var2483=null_type, var3009=null, var1102=$r9, var2324=$r10, var481=$r11, var2888=$r13, var2582=$r12, var44=$r14, var2738=$r16, var3635=org.apache.poi.xssf.usermodel.XSSFAutoFilter, var2574=$r15}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1085, r0=var1092, org.apache.poi.ss.util.CellRangeAddress=var3780, r3=var2498, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var3323, $r1=var932, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter=var3055, r21=var1379, $r2=var1584, $i3=var3297, $i2=var694, $i1=var643, $i0=var1938, $r18=var1881, org.apache.poi.xssf.usermodel.XSSFWorkbook=var3062, $r19=var281, $r4=var3885, org.apache.poi.ss.usermodel.Sheet=var16, $i8=var3175, org.apache.poi.xssf.usermodel.XSSFName=var1162, $r20=var2828, r22=var731, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName=var199, $r5=var3459, 1=var1400, org.apache.poi.ss.util.CellReference=var2491, $r6=var750, $r7=var3473, $i5=var2021, $i4=var2319, $r8=var1012, $i7=var3399, $i6=var3867, null_type=var2483, null=var3009, $r9=var1102, $r10=var2324, $r11=var481, $r13=var2888, $r12=var2582, $r14=var44, $r16=var2738, org.apache.poi.xssf.usermodel.XSSFAutoFilter=var3635, $r15=var2574}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	r3 := @parameter0: org.apache.poi.ss.util.CellRangeAddress;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r21 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter getAutoFilter()>();	if r21 != null goto $r2 = new org.apache.poi.ss.util.CellRangeAddress;	$r2 = new org.apache.poi.ss.util.CellRangeAddress;	$i3 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i2 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>();	$i1 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	$i0 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	specialinvoke $r2.<org.apache.poi.ss.util.CellRangeAddress: void <init>(int,int,int,int)>($i3, $i2, $i1, $i0);	$r18 = virtualinvoke $r2.<org.apache.poi.ss.util.CellRangeAddress: java.lang.String formatAsString()>();	interfaceinvoke r21.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoFilter: void setRef(java.lang.String)>($r18);	$r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	$r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFWorkbook getWorkbook()>();	$i8 = virtualinvoke $r4.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(org.apache.poi.ss.usermodel.Sheet)>(r0);	$r20 = virtualinvoke $r19.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>("_xlnm._FilterDatabase", $i8);	r22 = $r20;	if $r20 != null goto $r5 = virtualinvoke r22.<org.apache.poi.xssf.usermodel.XSSFName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName getCTName()>();	r22 = virtualinvoke $r19.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createBuiltInName(java.lang.String,int)>("_xlnm._FilterDatabase", $i8);	$r5 = virtualinvoke r22.<org.apache.poi.xssf.usermodel.XSSFName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName getCTName()>();	interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setHidden(boolean)>(1);	$r6 = new org.apache.poi.ss.util.CellReference;	$r7 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheet: java.lang.String getSheetName()>();	$i5 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstRow()>();	$i4 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getFirstColumn()>();	specialinvoke $r6.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>($r7, $i5, $i4, 1, 1);	$r8 = new org.apache.poi.ss.util.CellReference;	$i7 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastRow()>();	$i6 = virtualinvoke r3.<org.apache.poi.ss.util.CellRangeAddress: int getLastColumn()>();	specialinvoke $r8.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(null, $i7, $i6, 1, 1);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r6.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = virtualinvoke $r8.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r22.<org.apache.poi.xssf.usermodel.XSSFName: void setRefersToFormula(java.lang.String)>($r16);	$r15 = new org.apache.poi.xssf.usermodel.XSSFAutoFilter;	specialinvoke $r15.<org.apache.poi.xssf.usermodel.XSSFAutoFilter: void <init>(org.apache.poi.xssf.usermodel.XSSFSheet)>(r0);	return $r15
;block_num 4