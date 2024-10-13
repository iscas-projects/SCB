(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var166 0)
(declare-sort var1385 0)
(declare-sort var936 0)
(declare-sort var2093 0)
(declare-sort var2736 0)
(declare-sort var2731 0)
(declare-sort var1872 0)
(declare-sort var2349 0)
(declare-sort var605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1385-init () var1385)
(declare-fun <init>/-325640736 (var1385) void)
(declare-fun worksheet/-1100774885 (var166) var936)
(declare-fun var936_getDataValidations/-1117421477 (var936) var2093)
(declare-fun var2093_getDataValidationArray/-796787524 (var2093) (Array Int var2736))
(declare-fun getLength-Arr-var2736-1 ((Array Int var2736)) Int)
(declare-fun var2731-init () var2731)
(declare-fun <init>/-655612680 (var2731) void)
(declare-fun var2736_getSqref/624999073 (var2736) var1872)
(declare-fun var1872_iterator/-912451715 (var1872) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2349-init () var2349)
(declare-fun <init>/1746928616 (var2349 var2731 var2736) void)
(declare-fun var1872_add/328494887 (var1872 var605) Bool)
(declare-fun cast-from-var1385-to-var1872 (var1385) var1872)
(declare-fun cast-from-var2349-to-var605 (var2349) var605)
(declare-const null-var166 var166)
(declare-const null-var2093 var2093)
(declare-const var902 var166) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var902 null-var166)))
(define-const var989 var1385 var1385-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var989)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var989!1 var1385)
(define-const var2972 var936 (worksheet/-1100774885 var902)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var3722 var2093 (var936_getDataValidations/-1117421477 var2972)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var3722 null-var2093))) ; Negate: Cond: r3 == null  
(define-const var1981 (Array Int var2736) (var2093_getDataValidationArray/-796787524 var3722)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var1938 Int (getLength-Arr-var2736-1 var1981)) ; Statement: i0 = lengthof r4 
(define-const var265 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var265 var1938))) ; Negate: Cond: i7 >= i0  
(define-const var3274 var2736 (select var1981 var265)) ; Statement: r5 = r4[i7] 
(define-const var1676 var2731 var2731-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var1676)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var1676!1 var2731)
(define-const var1868 var1872 (var2736_getSqref/624999073 var3274)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var1289 Iterator (var1872_iterator/-912451715 var1868)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var92 Bool (Iterator_hasNext/-1669924200 var1289)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var92 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1452 var2349 var2349-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var1452 var1676!1 var3274)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var1452!1 var2349)
(declare-const var1676!2 var2731)
(declare-const var3274!1 var2736)
;(assert (var1872_add/328494887 (cast-from-var1385-to-var1872 var989!1) (cast-from-var2349-to-var605 var1452!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var989!2 var1385)
(declare-const var1452!2 var2349)
(define-const var265!1 Int (+ var265 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var265!1 var1938))) ; Negate: Cond: i7 >= i0  
(define-const var3274!2 var2736 (select var1981 var265!1)) ; Statement: r5 = r4[i7] 
(define-const var1676!3 var2731 var2731-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var1676!3)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var1676!4 var2731)
(define-const var1868!1 var1872 (var2736_getSqref/624999073 var3274!2)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var1289!1 Iterator (var1872_iterator/-912451715 var1868!1)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var92!1 Bool (Iterator_hasNext/-1669924200 var1289!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var92!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1452!3 var2349 var2349-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var1452!3 var1676!4 var3274!2)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var1452!4 var2349)
(declare-const var1676!5 var2731)
(declare-const var3274!3 var2736)
;(assert (var1872_add/328494887 (cast-from-var1385-to-var1872 var989!2) (cast-from-var2349-to-var605 var1452!4))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var989!3 var1385)
(declare-const var1452!5 var2349)
(define-const var265!2 Int (+ var265!1 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var265!2 var1938))) ; Negate: Cond: i7 >= i0  
(define-const var3274!4 var2736 (select var1981 var265!2)) ; Statement: r5 = r4[i7] 
(define-const var1676!6 var2731 var2731-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var1676!6)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var1676!7 var2731)
(define-const var1868!2 var1872 (var2736_getSqref/624999073 var3274!4)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var1289!2 Iterator (var1872_iterator/-912451715 var1868!2)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var92!2 Bool (Iterator_hasNext/-1669924200 var1289!2)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var92!2 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1452!6 var2349 var2349-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var1452!6 var1676!7 var3274!4)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var1452!7 var2349)
(declare-const var1676!8 var2731)
(declare-const var3274!5 var2736)
;(assert (var1872_add/328494887 (cast-from-var1385-to-var1872 var989!3) (cast-from-var2349-to-var605 var1452!7))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var989!4 var1385)
(declare-const var1452!8 var2349)
(define-const var265!3 Int (+ var265!2 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var265!3 var1938)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1385-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var936_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var2093_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var2736-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var2731-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var2736_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var1872_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2349-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var1872_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1385-to-var1872=([java.util.ArrayList], java.util.List), cast-from-var2349-to-var605=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object)}
; {var166=org.apache.poi.xssf.usermodel.XSSFSheet, var902=r1, var1385=java.util.ArrayList, var989=$r20, var936=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var2972=$r2, var2093=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var3722=r3, var2736=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var1981=r4, var1938=i0, var265=i7, var3274=r5, var2731=org.apache.poi.ss.util.CellRangeAddressList, var1676=$r21, var1872=java.util.List, var1868=r7, var1289=r18, var92=$z0, var2349=org.apache.poi.xssf.usermodel.XSSFDataValidation, var1452=$r25, var605=java.lang.Object}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var166, r1=var902, java.util.ArrayList=var1385, $r20=var989, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var936, $r2=var2972, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var2093, r3=var3722, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var2736, r4=var1981, i0=var1938, i7=var265, r5=var3274, org.apache.poi.ss.util.CellRangeAddressList=var2731, $r21=var1676, java.util.List=var1872, r7=var1868, r18=var1289, $z0=var92, org.apache.poi.xssf.usermodel.XSSFDataValidation=var2349, $r25=var1452, java.lang.Object=var605}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 16