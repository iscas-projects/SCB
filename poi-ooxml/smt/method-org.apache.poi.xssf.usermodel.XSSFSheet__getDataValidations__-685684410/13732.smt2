(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort var1963 0)
(declare-sort var142 0)
(declare-sort var3463 0)
(declare-sort var2436 0)
(declare-sort var1298 0)
(declare-sort var1442 0)
(declare-sort var2146 0)
(declare-sort var595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1963-init () var1963)
(declare-fun <init>/-325640736 (var1963) void)
(declare-fun worksheet/-1100774885 (var748) var142)
(declare-fun var142_getDataValidations/-1117421477 (var142) var3463)
(declare-fun var3463_getDataValidationArray/-796787524 (var3463) (Array Int var2436))
(declare-fun getLength-Arr-var2436-1 ((Array Int var2436)) Int)
(declare-fun var1298-init () var1298)
(declare-fun <init>/-655612680 (var1298) void)
(declare-fun var2436_getSqref/624999073 (var2436) var1442)
(declare-fun var1442_iterator/-912451715 (var1442) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2146)
(declare-fun cast-from-var2146-to-String (var2146) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var595-init () var595)
(declare-fun <init>/1746928616 (var595 var1298 var2436) void)
(declare-fun var1442_add/328494887 (var1442 var2146) Bool)
(declare-fun cast-from-var1963-to-var1442 (var1963) var1442)
(declare-fun cast-from-var595-to-var2146 (var595) var2146)
(declare-const null-var748 var748)
(declare-const null-var3463 var3463)
(declare-const var2832 var748) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2832 null-var748)))
(define-const var1978 var1963 var1963-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1978)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var1978!1 var1963)
(define-const var2961 var142 (worksheet/-1100774885 var2832)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var260 var3463 (var142_getDataValidations/-1117421477 var2961)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var260 null-var3463))) ; Negate: Cond: r3 == null  
(define-const var3504 (Array Int var2436) (var3463_getDataValidationArray/-796787524 var260)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var3791 Int (getLength-Arr-var2436-1 var3504)) ; Statement: i0 = lengthof r4 
(define-const var3412 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var3412 var3791))) ; Negate: Cond: i7 >= i0  
(define-const var517 var2436 (select var3504 var3412)) ; Statement: r5 = r4[i7] 
(define-const var1300 var1298 var1298-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var1300)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var1300!1 var1298)
(define-const var1235 var1442 (var2436_getSqref/624999073 var517)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var644 Iterator (var1442_iterator/-912451715 var1235)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3382 Bool (Iterator_hasNext/-1669924200 var644)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= (ite var3382 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3433 var2146 (Iterator_next/-1124697587 var644)) ; Statement: $r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var644!1 Iterator)
(define-const var752 String (cast-from-var2146-to-String var3433)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var1182 (Array Int String) (split/-636890950 var752 " ")) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var752 " ") i) (re.++ (re.* re.all) (str.to_re " ") (re.* re.all))))))
(define-const var3493 Int (getLength-Arr-String-1 var1182)) ; Statement: i1 = lengthof r11 
(define-const var1740 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var1740 var3493)) ; Cond: i8 >= i1 
 ; Statement: goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3382!1 Bool (Iterator_hasNext/-1669924200 var644!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var3382!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1426 var595 var595-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var1426 var1300!1 var517)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var1426!1 var595)
(declare-const var1300!2 var1298)
(declare-const var517!1 var2436)
;(assert (var1442_add/328494887 (cast-from-var1963-to-var1442 var1978!1) (cast-from-var595-to-var2146 var1426!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var1978!2 var1963)
(declare-const var1426!2 var595)
(define-const var3412!1 Int (+ var3412 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var3412!1 var3791)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1963-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var142_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var3463_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var2436-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var1298-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var2436_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var1442_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2146-to-String=([java.lang.Object], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var595-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var1442_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1963-to-var1442=([java.util.ArrayList], java.util.List), cast-from-var595-to-var2146=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object)}
; {var748=org.apache.poi.xssf.usermodel.XSSFSheet, var2832=r1, var1963=java.util.ArrayList, var1978=$r20, var142=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var2961=$r2, var3463=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var260=r3, var2436=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var3504=r4, var3791=i0, var3412=i7, var517=r5, var1298=org.apache.poi.ss.util.CellRangeAddressList, var1300=$r21, var1442=java.util.List, var1235=r7, var644=r18, var3382=$z0, var2146=java.lang.Object, var3433=$r9, var752=r10, var1182=r11, var3493=i1, var1740=i8, var595=org.apache.poi.xssf.usermodel.XSSFDataValidation, var1426=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var748, r1=var2832, java.util.ArrayList=var1963, $r20=var1978, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var142, $r2=var2961, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var3463, r3=var260, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var2436, r4=var3504, i0=var3791, i7=var3412, r5=var517, org.apache.poi.ss.util.CellRangeAddressList=var1298, $r21=var1300, java.util.List=var1442, r7=var1235, r18=var644, $z0=var3382, java.lang.Object=var2146, $r9=var3433, r10=var752, r11=var1182, i1=var3493, i8=var1740, org.apache.poi.xssf.usermodel.XSSFDataValidation=var595, $r25=var1426}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>();	r10 = (java.lang.String) $r9;	r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ");	i1 = lengthof r11;	i8 = 0;	if i8 >= i1 goto (branch);	goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 12