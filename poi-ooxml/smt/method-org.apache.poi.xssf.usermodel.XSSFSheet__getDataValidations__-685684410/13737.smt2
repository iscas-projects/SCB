(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1110 0)
(declare-sort var2102 0)
(declare-sort var2654 0)
(declare-sort var1532 0)
(declare-sort var2206 0)
(declare-sort var343 0)
(declare-sort var1673 0)
(declare-sort var1616 0)
(declare-sort var358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2102-init () var2102)
(declare-fun <init>/-325640736 (var2102) void)
(declare-fun worksheet/-1100774885 (var1110) var2654)
(declare-fun var2654_getDataValidations/-1117421477 (var2654) var1532)
(declare-fun var1532_getDataValidationArray/-796787524 (var1532) (Array Int var2206))
(declare-fun getLength-Arr-var2206-1 ((Array Int var2206)) Int)
(declare-fun var343-init () var343)
(declare-fun <init>/-655612680 (var343) void)
(declare-fun var2206_getSqref/624999073 (var2206) var1673)
(declare-fun var1673_iterator/-912451715 (var1673) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1616)
(declare-fun cast-from-var1616-to-String (var1616) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var358-init () var358)
(declare-fun <init>/1746928616 (var358 var343 var2206) void)
(declare-fun var1673_add/328494887 (var1673 var1616) Bool)
(declare-fun cast-from-var2102-to-var1673 (var2102) var1673)
(declare-fun cast-from-var358-to-var1616 (var358) var1616)
(declare-const null-var1110 var1110)
(declare-const null-var1532 var1532)
(declare-const var1091 var1110) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var1091 null-var1110)))
(define-const var201 var2102 var2102-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var201)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var201!1 var2102)
(define-const var1381 var2654 (worksheet/-1100774885 var1091)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var1175 var1532 (var2654_getDataValidations/-1117421477 var1381)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var1175 null-var1532))) ; Negate: Cond: r3 == null  
(define-const var1969 (Array Int var2206) (var1532_getDataValidationArray/-796787524 var1175)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var3114 Int (getLength-Arr-var2206-1 var1969)) ; Statement: i0 = lengthof r4 
(define-const var1652 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var1652 var3114))) ; Negate: Cond: i7 >= i0  
(define-const var1774 var2206 (select var1969 var1652)) ; Statement: r5 = r4[i7] 
(define-const var3057 var343 var343-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var3057)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var3057!1 var343)
(define-const var667 var1673 (var2206_getSqref/624999073 var1774)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var1298 Iterator (var1673_iterator/-912451715 var667)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2420 Bool (Iterator_hasNext/-1669924200 var1298)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= (ite var2420 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1068 var1616 (Iterator_next/-1124697587 var1298)) ; Statement: $r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1298!1 Iterator)
(define-const var1141 String (cast-from-var1616-to-String var1068)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var1086 (Array Int String) (split/-636890950 var1141 " ")) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1141 " ") i) (re.++ (re.* re.all) (str.to_re " ") (re.* re.all))))))
(define-const var3645 Int (getLength-Arr-String-1 var1086)) ; Statement: i1 = lengthof r11 
(define-const var174 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var174 var3645)) ; Cond: i8 >= i1 
 ; Statement: goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2420!1 Bool (Iterator_hasNext/-1669924200 var1298!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var2420!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1093 var358 var358-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var1093 var3057!1 var1774)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var1093!1 var358)
(declare-const var3057!2 var343)
(declare-const var1774!1 var2206)
;(assert (var1673_add/328494887 (cast-from-var2102-to-var1673 var201!1) (cast-from-var358-to-var1616 var1093!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var201!2 var2102)
(declare-const var1093!2 var358)
(define-const var1652!1 Int (+ var1652 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var1652!1 var3114))) ; Negate: Cond: i7 >= i0  
(define-const var1774!2 var2206 (select var1969 var1652!1)) ; Statement: r5 = r4[i7] 
(define-const var3057!3 var343 var343-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var3057!3)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var3057!4 var343)
(define-const var667!1 var1673 (var2206_getSqref/624999073 var1774!2)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var1298!2 Iterator (var1673_iterator/-912451715 var667!1)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2420!2 Bool (Iterator_hasNext/-1669924200 var1298!2)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var2420!2 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1093!3 var358 var358-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var1093!3 var3057!4 var1774!2)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var1093!4 var358)
(declare-const var3057!5 var343)
(declare-const var1774!3 var2206)
;(assert (var1673_add/328494887 (cast-from-var2102-to-var1673 var201!2) (cast-from-var358-to-var1616 var1093!4))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var201!3 var2102)
(declare-const var1093!5 var358)
(define-const var1652!2 Int (+ var1652!1 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var1652!2 var3114)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2102-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var2654_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var1532_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var2206-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var343-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var2206_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var1673_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1616-to-String=([java.lang.Object], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var358-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var1673_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2102-to-var1673=([java.util.ArrayList], java.util.List), cast-from-var358-to-var1616=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object)}
; {var1110=org.apache.poi.xssf.usermodel.XSSFSheet, var1091=r1, var2102=java.util.ArrayList, var201=$r20, var2654=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var1381=$r2, var1532=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var1175=r3, var2206=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var1969=r4, var3114=i0, var1652=i7, var1774=r5, var343=org.apache.poi.ss.util.CellRangeAddressList, var3057=$r21, var1673=java.util.List, var667=r7, var1298=r18, var2420=$z0, var1616=java.lang.Object, var1068=$r9, var1141=r10, var1086=r11, var3645=i1, var174=i8, var358=org.apache.poi.xssf.usermodel.XSSFDataValidation, var1093=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var1110, r1=var1091, java.util.ArrayList=var2102, $r20=var201, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var2654, $r2=var1381, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var1532, r3=var1175, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var2206, r4=var1969, i0=var3114, i7=var1652, r5=var1774, org.apache.poi.ss.util.CellRangeAddressList=var343, $r21=var3057, java.util.List=var1673, r7=var667, r18=var1298, $z0=var2420, java.lang.Object=var1616, $r9=var1068, r10=var1141, r11=var1086, i1=var3645, i8=var174, org.apache.poi.xssf.usermodel.XSSFDataValidation=var358, $r25=var1093}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>();	r10 = (java.lang.String) $r9;	r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ");	i1 = lengthof r11;	i8 = 0;	if i8 >= i1 goto (branch);	goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 16