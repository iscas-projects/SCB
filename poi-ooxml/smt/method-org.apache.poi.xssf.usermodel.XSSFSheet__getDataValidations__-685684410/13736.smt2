(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3909 0)
(declare-sort var3463 0)
(declare-sort var638 0)
(declare-sort var3548 0)
(declare-sort var3804 0)
(declare-sort var3209 0)
(declare-sort var2077 0)
(declare-sort var1038 0)
(declare-sort var1757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3463-init () var3463)
(declare-fun <init>/-325640736 (var3463) void)
(declare-fun worksheet/-1100774885 (var3909) var638)
(declare-fun var638_getDataValidations/-1117421477 (var638) var3548)
(declare-fun var3548_getDataValidationArray/-796787524 (var3548) (Array Int var3804))
(declare-fun getLength-Arr-var3804-1 ((Array Int var3804)) Int)
(declare-fun var3209-init () var3209)
(declare-fun <init>/-655612680 (var3209) void)
(declare-fun var3804_getSqref/624999073 (var3804) var2077)
(declare-fun var2077_iterator/-912451715 (var2077) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1038)
(declare-fun cast-from-var1038-to-String (var1038) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1757-init () var1757)
(declare-fun <init>/1746928616 (var1757 var3209 var3804) void)
(declare-fun var2077_add/328494887 (var2077 var1038) Bool)
(declare-fun cast-from-var3463-to-var2077 (var3463) var2077)
(declare-fun cast-from-var1757-to-var1038 (var1757) var1038)
(declare-const null-var3909 var3909)
(declare-const null-var3548 var3548)
(declare-const var2046 var3909) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2046 null-var3909)))
(define-const var2002 var3463 var3463-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2002)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var2002!1 var3463)
(define-const var3659 var638 (worksheet/-1100774885 var2046)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var3662 var3548 (var638_getDataValidations/-1117421477 var3659)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var3662 null-var3548))) ; Negate: Cond: r3 == null  
(define-const var1482 (Array Int var3804) (var3548_getDataValidationArray/-796787524 var3662)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var2820 Int (getLength-Arr-var3804-1 var1482)) ; Statement: i0 = lengthof r4 
(define-const var237 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var237 var2820))) ; Negate: Cond: i7 >= i0  
(define-const var742 var3804 (select var1482 var237)) ; Statement: r5 = r4[i7] 
(define-const var1005 var3209 var3209-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var1005)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var1005!1 var3209)
(define-const var3831 var2077 (var3804_getSqref/624999073 var742)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var2461 Iterator (var2077_iterator/-912451715 var3831)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3388 Bool (Iterator_hasNext/-1669924200 var2461)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= (ite var3388 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1159 var1038 (Iterator_next/-1124697587 var2461)) ; Statement: $r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2461!1 Iterator)
(define-const var148 String (cast-from-var1038-to-String var1159)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var3409 (Array Int String) (split/-636890950 var148 " ")) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var148 " ") i) (re.++ (re.* re.all) (str.to_re " ") (re.* re.all))))))
(define-const var737 Int (getLength-Arr-String-1 var3409)) ; Statement: i1 = lengthof r11 
(define-const var2895 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var2895 var737)) ; Cond: i8 >= i1 
 ; Statement: goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3388!1 Bool (Iterator_hasNext/-1669924200 var2461!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= (ite var3388!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1159!1 var1038 (Iterator_next/-1124697587 var2461!1)) ; Statement: $r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2461!2 Iterator)
(define-const var148!1 String (cast-from-var1038-to-String var1159!1)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var3409!1 (Array Int String) (split/-636890950 var148!1 " ")) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var148!1 " ") i) (re.++ (re.* re.all) (str.to_re " ") (re.* re.all))))))
(define-const var737!1 Int (getLength-Arr-String-1 var3409!1)) ; Statement: i1 = lengthof r11 
(define-const var2895!1 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var2895!1 var737!1)) ; Cond: i8 >= i1 
 ; Statement: goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3388!2 Bool (Iterator_hasNext/-1669924200 var2461!2)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var3388!2 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1311 var1757 var1757-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var1311 var1005!1 var742)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var1311!1 var1757)
(declare-const var1005!2 var3209)
(declare-const var742!1 var3804)
;(assert (var2077_add/328494887 (cast-from-var3463-to-var2077 var2002!1) (cast-from-var1757-to-var1038 var1311!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var2002!2 var3463)
(declare-const var1311!2 var1757)
(define-const var237!1 Int (+ var237 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var237!1 var2820)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3463-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var638_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var3548_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var3804-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var3209-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var3804_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var2077_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1038-to-String=([java.lang.Object], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1757-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var2077_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3463-to-var2077=([java.util.ArrayList], java.util.List), cast-from-var1757-to-var1038=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object)}
; {var3909=org.apache.poi.xssf.usermodel.XSSFSheet, var2046=r1, var3463=java.util.ArrayList, var2002=$r20, var638=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var3659=$r2, var3548=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var3662=r3, var3804=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var1482=r4, var2820=i0, var237=i7, var742=r5, var3209=org.apache.poi.ss.util.CellRangeAddressList, var1005=$r21, var2077=java.util.List, var3831=r7, var2461=r18, var3388=$z0, var1038=java.lang.Object, var1159=$r9, var148=r10, var3409=r11, var737=i1, var2895=i8, var1757=org.apache.poi.xssf.usermodel.XSSFDataValidation, var1311=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3909, r1=var2046, java.util.ArrayList=var3463, $r20=var2002, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var638, $r2=var3659, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var3548, r3=var3662, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var3804, r4=var1482, i0=var2820, i7=var237, r5=var742, org.apache.poi.ss.util.CellRangeAddressList=var3209, $r21=var1005, java.util.List=var2077, r7=var3831, r18=var2461, $z0=var3388, java.lang.Object=var1038, $r9=var1159, r10=var148, r11=var3409, i1=var737, i8=var2895, org.apache.poi.xssf.usermodel.XSSFDataValidation=var1757, $r25=var1311}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>();	r10 = (java.lang.String) $r9;	r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ");	i1 = lengthof r11;	i8 = 0;	if i8 >= i1 goto (branch);	goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>();	r10 = (java.lang.String) $r9;	r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ");	i1 = lengthof r11;	i8 = 0;	if i8 >= i1 goto (branch);	goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 16