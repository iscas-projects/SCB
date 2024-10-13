(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var67 0)
(declare-sort var3037 0)
(declare-sort var1466 0)
(declare-sort var213 0)
(declare-sort var1251 0)
(declare-sort var261 0)
(declare-sort var1996 0)
(declare-sort var1452 0)
(declare-sort var2561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3037-init () var3037)
(declare-fun <init>/-325640736 (var3037) void)
(declare-fun worksheet/-1100774885 (var67) var1466)
(declare-fun var1466_getDataValidations/-1117421477 (var1466) var213)
(declare-fun var213_getDataValidationArray/-796787524 (var213) (Array Int var1251))
(declare-fun getLength-Arr-var1251-1 ((Array Int var1251)) Int)
(declare-fun var261-init () var261)
(declare-fun <init>/-655612680 (var261) void)
(declare-fun var1251_getSqref/624999073 (var1251) var1996)
(declare-fun var1996_iterator/-912451715 (var1996) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var1452-init () var1452)
(declare-fun <init>/1746928616 (var1452 var261 var1251) void)
(declare-fun var1996_add/328494887 (var1996 var2561) Bool)
(declare-fun cast-from-var3037-to-var1996 (var3037) var1996)
(declare-fun cast-from-var1452-to-var2561 (var1452) var2561)
(declare-const null-var67 var67)
(declare-const null-var213 var213)
(declare-const var2031 var67) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2031 null-var67)))
(define-const var2967 var3037 var3037-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2967)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var2967!1 var3037)
(define-const var662 var1466 (worksheet/-1100774885 var2031)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var1911 var213 (var1466_getDataValidations/-1117421477 var662)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var1911 null-var213))) ; Negate: Cond: r3 == null  
(define-const var2877 (Array Int var1251) (var213_getDataValidationArray/-796787524 var1911)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var378 Int (getLength-Arr-var1251-1 var2877)) ; Statement: i0 = lengthof r4 
(define-const var570 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var570 var378))) ; Negate: Cond: i7 >= i0  
(define-const var3788 var1251 (select var2877 var570)) ; Statement: r5 = r4[i7] 
(define-const var748 var261 var261-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var748)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var748!1 var261)
(define-const var1252 var1996 (var1251_getSqref/624999073 var3788)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var642 Iterator (var1996_iterator/-912451715 var1252)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1365 Bool (Iterator_hasNext/-1669924200 var642)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var1365 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2100 var1452 var1452-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var2100 var748!1 var3788)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var2100!1 var1452)
(declare-const var748!2 var261)
(declare-const var3788!1 var1251)
;(assert (var1996_add/328494887 (cast-from-var3037-to-var1996 var2967!1) (cast-from-var1452-to-var2561 var2100!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var2967!2 var3037)
(declare-const var2100!2 var1452)
(define-const var570!1 Int (+ var570 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var570!1 var378))) ; Negate: Cond: i7 >= i0  
(define-const var3788!2 var1251 (select var2877 var570!1)) ; Statement: r5 = r4[i7] 
(define-const var748!3 var261 var261-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var748!3)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var748!4 var261)
(define-const var1252!1 var1996 (var1251_getSqref/624999073 var3788!2)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var642!1 Iterator (var1996_iterator/-912451715 var1252!1)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1365!1 Bool (Iterator_hasNext/-1669924200 var642!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var1365!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2100!3 var1452 var1452-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var2100!3 var748!4 var3788!2)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var2100!4 var1452)
(declare-const var748!5 var261)
(declare-const var3788!3 var1251)
;(assert (var1996_add/328494887 (cast-from-var3037-to-var1996 var2967!2) (cast-from-var1452-to-var2561 var2100!4))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var2967!3 var3037)
(declare-const var2100!5 var1452)
(define-const var570!2 Int (+ var570!1 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var570!2 var378)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3037-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var1466_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var213_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var1251-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var261-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var1251_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var1996_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var1452-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var1996_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3037-to-var1996=([java.util.ArrayList], java.util.List), cast-from-var1452-to-var2561=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object)}
; {var67=org.apache.poi.xssf.usermodel.XSSFSheet, var2031=r1, var3037=java.util.ArrayList, var2967=$r20, var1466=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var662=$r2, var213=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var1911=r3, var1251=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var2877=r4, var378=i0, var570=i7, var3788=r5, var261=org.apache.poi.ss.util.CellRangeAddressList, var748=$r21, var1996=java.util.List, var1252=r7, var642=r18, var1365=$z0, var1452=org.apache.poi.xssf.usermodel.XSSFDataValidation, var2100=$r25, var2561=java.lang.Object}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var67, r1=var2031, java.util.ArrayList=var3037, $r20=var2967, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var1466, $r2=var662, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var213, r3=var1911, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var1251, r4=var2877, i0=var378, i7=var570, r5=var3788, org.apache.poi.ss.util.CellRangeAddressList=var261, $r21=var748, java.util.List=var1996, r7=var1252, r18=var642, $z0=var1365, org.apache.poi.xssf.usermodel.XSSFDataValidation=var1452, $r25=var2100, java.lang.Object=var2561}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 12