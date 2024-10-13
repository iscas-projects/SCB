(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var177 0)
(declare-sort var2575 0)
(declare-sort var1757 0)
(declare-sort var3268 0)
(declare-sort var3932 0)
(declare-sort var1107 0)
(declare-sort var970 0)
(declare-sort var620 0)
(declare-sort var3529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2575-init () var2575)
(declare-fun <init>/-325640736 (var2575) void)
(declare-fun worksheet/-1100774885 (var177) var1757)
(declare-fun var1757_getDataValidations/-1117421477 (var1757) var3268)
(declare-fun var3268_getDataValidationArray/-796787524 (var3268) (Array Int var3932))
(declare-fun getLength-Arr-var3932-1 ((Array Int var3932)) Int)
(declare-fun var1107-init () var1107)
(declare-fun <init>/-655612680 (var1107) void)
(declare-fun var3932_getSqref/624999073 (var3932) var970)
(declare-fun var970_iterator/-912451715 (var970) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var620-init () var620)
(declare-fun <init>/1746928616 (var620 var1107 var3932) void)
(declare-fun var970_add/328494887 (var970 var3529) Bool)
(declare-fun cast-from-var2575-to-var970 (var2575) var970)
(declare-fun cast-from-var620-to-var3529 (var620) var3529)
(declare-fun Iterator_next/-1124697587 (Iterator) var3529)
(declare-fun cast-from-var3529-to-String (var3529) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var177 var177)
(declare-const null-var3268 var3268)
(declare-const var184 var177) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var184 null-var177)))
(define-const var1541 var2575 var2575-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1541)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var1541!1 var2575)
(define-const var642 var1757 (worksheet/-1100774885 var184)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var3677 var3268 (var1757_getDataValidations/-1117421477 var642)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var3677 null-var3268))) ; Negate: Cond: r3 == null  
(define-const var2042 (Array Int var3932) (var3268_getDataValidationArray/-796787524 var3677)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var1513 Int (getLength-Arr-var3932-1 var2042)) ; Statement: i0 = lengthof r4 
(define-const var2141 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var2141 var1513))) ; Negate: Cond: i7 >= i0  
(define-const var2094 var3932 (select var2042 var2141)) ; Statement: r5 = r4[i7] 
(define-const var1928 var1107 var1107-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var1928)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var1928!1 var1107)
(define-const var2703 var970 (var3932_getSqref/624999073 var2094)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var749 Iterator (var970_iterator/-912451715 var2703)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var30 Bool (Iterator_hasNext/-1669924200 var749)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var30 1 0) 0)) ; Cond: $z0 == 0 
(define-const var924 var620 var620-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var924 var1928!1 var2094)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var924!1 var620)
(declare-const var1928!2 var1107)
(declare-const var2094!1 var3932)
;(assert (var970_add/328494887 (cast-from-var2575-to-var970 var1541!1) (cast-from-var620-to-var3529 var924!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var1541!2 var2575)
(declare-const var924!2 var620)
(define-const var2141!1 Int (+ var2141 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var2141!1 var1513))) ; Negate: Cond: i7 >= i0  
(define-const var2094!2 var3932 (select var2042 var2141!1)) ; Statement: r5 = r4[i7] 
(define-const var1928!3 var1107 var1107-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var1928!3)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var1928!4 var1107)
(define-const var2703!1 var970 (var3932_getSqref/624999073 var2094!2)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var749!1 Iterator (var970_iterator/-912451715 var2703!1)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var30!1 Bool (Iterator_hasNext/-1669924200 var749!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= (ite var30!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2366 var3529 (Iterator_next/-1124697587 var749!1)) ; Statement: $r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var749!2 Iterator)
(define-const var3086 String (cast-from-var3529-to-String var2366)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var2422 (Array Int String) (split/-636890950 var3086 " ")) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3086 " ") i) (re.++ (re.* re.all) (str.to_re " ") (re.* re.all))))))
(define-const var2252 Int (getLength-Arr-String-1 var2422)) ; Statement: i1 = lengthof r11 
(define-const var3083 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var3083 var2252)) ; Cond: i8 >= i1 
 ; Statement: goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var30!2 Bool (Iterator_hasNext/-1669924200 var749!2)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var30!2 1 0) 0)) ; Cond: $z0 == 0 
(define-const var924!3 var620 var620-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var924!3 var1928!4 var2094!2)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var924!4 var620)
(declare-const var1928!5 var1107)
(declare-const var2094!3 var3932)
;(assert (var970_add/328494887 (cast-from-var2575-to-var970 var1541!2) (cast-from-var620-to-var3529 var924!4))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var1541!3 var2575)
(declare-const var924!5 var620)
(define-const var2141!2 Int (+ var2141!1 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var2141!2 var1513)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2575-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var1757_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var3268_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var3932-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var1107-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var3932_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var970_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var620-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var970_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2575-to-var970=([java.util.ArrayList], java.util.List), cast-from-var620-to-var3529=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3529-to-String=([java.lang.Object], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var177=org.apache.poi.xssf.usermodel.XSSFSheet, var184=r1, var2575=java.util.ArrayList, var1541=$r20, var1757=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var642=$r2, var3268=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var3677=r3, var3932=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var2042=r4, var1513=i0, var2141=i7, var2094=r5, var1107=org.apache.poi.ss.util.CellRangeAddressList, var1928=$r21, var970=java.util.List, var2703=r7, var749=r18, var30=$z0, var620=org.apache.poi.xssf.usermodel.XSSFDataValidation, var924=$r25, var3529=java.lang.Object, var2366=$r9, var3086=r10, var2422=r11, var2252=i1, var3083=i8}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var177, r1=var184, java.util.ArrayList=var2575, $r20=var1541, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var1757, $r2=var642, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var3268, r3=var3677, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var3932, r4=var2042, i0=var1513, i7=var2141, r5=var2094, org.apache.poi.ss.util.CellRangeAddressList=var1107, $r21=var1928, java.util.List=var970, r7=var2703, r18=var749, $z0=var30, org.apache.poi.xssf.usermodel.XSSFDataValidation=var620, $r25=var924, java.lang.Object=var3529, $r9=var2366, r10=var3086, r11=var2422, i1=var2252, i8=var3083}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>();	r10 = (java.lang.String) $r9;	r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ");	i1 = lengthof r11;	i8 = 0;	if i8 >= i1 goto (branch);	goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 16