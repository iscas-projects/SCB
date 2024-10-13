(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3606 0)
(declare-sort var1476 0)
(declare-sort var3666 0)
(declare-sort var1296 0)
(declare-sort var219 0)
(declare-sort var383 0)
(declare-sort var2973 0)
(declare-sort var3314 0)
(declare-sort var1633 0)
(declare-sort var652 0)
(declare-sort var3209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1476-init () var1476)
(declare-fun <init>/-325640736 (var1476) void)
(declare-fun worksheet/-1100774885 (var3606) var3666)
(declare-fun var3666_getDataValidations/-1117421477 (var3666) var1296)
(declare-fun var1296_getDataValidationArray/-796787524 (var1296) (Array Int var219))
(declare-fun getLength-Arr-var219-1 ((Array Int var219)) Int)
(declare-fun var383-init () var383)
(declare-fun <init>/-655612680 (var383) void)
(declare-fun var219_getSqref/624999073 (var219) var2973)
(declare-fun var2973_iterator/-912451715 (var2973) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3314)
(declare-fun cast-from-var3314-to-String (var3314) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1633-init () var1633)
(declare-fun <init>/-1289332233 (var1633 String) void)
(declare-fun var652-init () var652)
(declare-fun getRow/79195701 (var1633) Int)
(declare-fun getCol/1474631132 (var1633) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/1037535432 (var652 Int Int Int Int) void)
(declare-fun addCellRangeAddress/-1640976635 (var383 var652) void)
(declare-fun var3209-init () var3209)
(declare-fun <init>/1746928616 (var3209 var383 var219) void)
(declare-fun var2973_add/328494887 (var2973 var3314) Bool)
(declare-fun cast-from-var1476-to-var2973 (var1476) var2973)
(declare-fun cast-from-var3209-to-var3314 (var3209) var3314)
(declare-const null-var3606 var3606)
(declare-const null-var1296 var1296)
(declare-const var2977 var3606) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2977 null-var3606)))
(define-const var2252 var1476 var1476-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2252)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var2252!1 var1476)
(define-const var1030 var3666 (worksheet/-1100774885 var2977)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var1973 var1296 (var3666_getDataValidations/-1117421477 var1030)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var1973 null-var1296))) ; Negate: Cond: r3 == null  
(define-const var2236 (Array Int var219) (var1296_getDataValidationArray/-796787524 var1973)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var1161 Int (getLength-Arr-var219-1 var2236)) ; Statement: i0 = lengthof r4 
(define-const var2653 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var2653 var1161))) ; Negate: Cond: i7 >= i0  
(define-const var2388 var219 (select var2236 var2653)) ; Statement: r5 = r4[i7] 
(define-const var2813 var383 var383-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var2813)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var2813!1 var383)
(define-const var1323 var2973 (var219_getSqref/624999073 var2388)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var3051 Iterator (var2973_iterator/-912451715 var1323)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var465 Bool (Iterator_hasNext/-1669924200 var3051)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= (ite var465 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3828 var3314 (Iterator_next/-1124697587 var3051)) ; Statement: $r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var3051!1 Iterator)
(define-const var654 String (cast-from-var3314-to-String var3828)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var3158 (Array Int String) (split/-636890950 var654 " ")) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var654 " ") i) (re.++ (re.* re.all) (str.to_re " ") (re.* re.all))))))
(define-const var2482 Int (getLength-Arr-String-1 var3158)) ; Statement: i1 = lengthof r11 
(define-const var3889 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (not (>= var3889 var2482))) ; Negate: Cond: i8 >= i1  
(define-const var182 String (select var3158 var3889)) ; Statement: r12 = r11[i8] 
(assert true)
(define-const var1190 (Array Int String) (split/-636890950 var182 ":")) ; Statement: r13 = virtualinvoke r12.<java.lang.String: java.lang.String[] split(java.lang.String)>(":") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var182 ":") i) (re.++ (re.* re.all) (str.to_re ":") (re.* re.all))))))
(define-const var3398 var1633 var1633-init) ; Statement: $r22 = new org.apache.poi.ss.util.CellReference 
(define-const var530 String (select var1190 0)) ; Statement: $r15 = r13[0] 
(assert true)
;(assert (<init>/-1289332233 var3398 var530)) ; Statement: specialinvoke $r22.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>($r15) 

(declare-const var3398!1 var1633)
(declare-const var530!1 String)
(define-const var2700 Int (getLength-Arr-String-1 var1190)) ; Statement: $i2 = lengthof r13 
 ; Statement: if $i2 <= 1 goto $r19 = $r22 
(assert (not (<= var2700 1))) ; Negate: Cond: $i2 <= 1  
(define-const var1574 var1633 var1633-init) ; Statement: $r23 = new org.apache.poi.ss.util.CellReference 
(define-const var2971 var1633 var1574) ; Statement: $r19 = $r23 
(define-const var101 String (select var1190 1)) ; Statement: $r17 = r13[1] 
(assert true)
;(assert (<init>/-1289332233 var1574 var101)) ; Statement: specialinvoke $r23.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>($r17) 

(declare-const var1574!1 var1633)
(declare-const var101!1 String)
 ; Statement: goto [?= $r24 = new org.apache.poi.ss.util.CellRangeAddress] 
(assert true) ; Non Conditional
(define-const var367 var652 var652-init) ; Statement: $r24 = new org.apache.poi.ss.util.CellRangeAddress 
(assert true)
(define-const var3477 Int (getRow/79195701 var3398!1)) ; Statement: $i6 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: int getRow()>() 
(assert true)
(define-const var197 Int (getRow/79195701 var2971)) ; Statement: $i5 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: int getRow()>() 
(assert true)
(define-const var747 Int (getCol/1474631132 var3398!1)) ; Statement: $s4 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: short getCol()>() 
(assert true)
(define-const var167 Int (getCol/1474631132 var2971)) ; Statement: $s3 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: short getCol()>() 
(define-const var757 Int (cast-from-Int-to-Int var747)) ; Statement: $i9 = (int) $s4 
(define-const var3765 Int (cast-from-Int-to-Int var167)) ; Statement: $i10 = (int) $s3 
(assert true)
;(assert (<init>/1037535432 var367 var3477 var197 var757 var3765)) ; Statement: specialinvoke $r24.<org.apache.poi.ss.util.CellRangeAddress: void <init>(int,int,int,int)>($i6, $i5, $i9, $i10) 

(declare-const var367!1 var652)
(declare-const var3477!1 Int)
(declare-const var197!1 Int)
(declare-const var757!1 Int)
(declare-const var3765!1 Int)
(assert true)
;(assert (addCellRangeAddress/-1640976635 var2813!1 var367!1)) ; Statement: virtualinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void addCellRangeAddress(org.apache.poi.ss.util.CellRangeAddress)>($r24) 

(declare-const var2813!2 var383)
(declare-const var367!2 var652)
(define-const var3889!1 Int (+ var3889 1)) ; Statement: i8 = i8 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var3889!1 var2482)) ; Cond: i8 >= i1 
 ; Statement: goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var465!1 Bool (Iterator_hasNext/-1669924200 var3051!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var465!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3239 var3209 var3209-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var3239 var2813!2 var2388)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var3239!1 var3209)
(declare-const var2813!3 var383)
(declare-const var2388!1 var219)
;(assert (var2973_add/328494887 (cast-from-var1476-to-var2973 var2252!1) (cast-from-var3209-to-var3314 var3239!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var2252!2 var1476)
(declare-const var3239!2 var3209)
(define-const var2653!1 Int (+ var2653 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var2653!1 var1161)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1476-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var3666_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var1296_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var219-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var383-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var219_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var2973_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3314-to-String=([java.lang.Object], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1633-init=([], org.apache.poi.ss.util.CellReference), <init>/-1289332233=([org.apache.poi.ss.util.CellReference, java.lang.String], void), var652-init=([], org.apache.poi.ss.util.CellRangeAddress), getRow/79195701=([org.apache.poi.ss.util.CellReference], int), getCol/1474631132=([org.apache.poi.ss.util.CellReference], short), cast-from-Int-to-Int=([short], int), <init>/1037535432=([org.apache.poi.ss.util.CellRangeAddress, int, int, int, int], void), addCellRangeAddress/-1640976635=([org.apache.poi.ss.util.CellRangeAddressList, org.apache.poi.ss.util.CellRangeAddress], void), var3209-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var2973_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1476-to-var2973=([java.util.ArrayList], java.util.List), cast-from-var3209-to-var3314=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object)}
; {var3606=org.apache.poi.xssf.usermodel.XSSFSheet, var2977=r1, var1476=java.util.ArrayList, var2252=$r20, var3666=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var1030=$r2, var1296=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var1973=r3, var219=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var2236=r4, var1161=i0, var2653=i7, var2388=r5, var383=org.apache.poi.ss.util.CellRangeAddressList, var2813=$r21, var2973=java.util.List, var1323=r7, var3051=r18, var465=$z0, var3314=java.lang.Object, var3828=$r9, var654=r10, var3158=r11, var2482=i1, var3889=i8, var182=r12, var1190=r13, var1633=org.apache.poi.ss.util.CellReference, var3398=$r22, var530=$r15, var2700=$i2, var1574=$r23, var2971=$r19, var101=$r17, var652=org.apache.poi.ss.util.CellRangeAddress, var367=$r24, var3477=$i6, var197=$i5, var747=$s4, var167=$s3, var757=$i9, var3765=$i10, var3209=org.apache.poi.xssf.usermodel.XSSFDataValidation, var3239=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3606, r1=var2977, java.util.ArrayList=var1476, $r20=var2252, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var3666, $r2=var1030, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var1296, r3=var1973, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var219, r4=var2236, i0=var1161, i7=var2653, r5=var2388, org.apache.poi.ss.util.CellRangeAddressList=var383, $r21=var2813, java.util.List=var2973, r7=var1323, r18=var3051, $z0=var465, java.lang.Object=var3314, $r9=var3828, r10=var654, r11=var3158, i1=var2482, i8=var3889, r12=var182, r13=var1190, org.apache.poi.ss.util.CellReference=var1633, $r22=var3398, $r15=var530, $i2=var2700, $r23=var1574, $r19=var2971, $r17=var101, org.apache.poi.ss.util.CellRangeAddress=var652, $r24=var367, $i6=var3477, $i5=var197, $s4=var747, $s3=var167, $i9=var757, $i10=var3765, org.apache.poi.xssf.usermodel.XSSFDataValidation=var3209, $r25=var3239}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>();	r10 = (java.lang.String) $r9;	r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ");	i1 = lengthof r11;	i8 = 0;	if i8 >= i1 goto (branch);	r12 = r11[i8];	r13 = virtualinvoke r12.<java.lang.String: java.lang.String[] split(java.lang.String)>(":");	$r22 = new org.apache.poi.ss.util.CellReference;	$r15 = r13[0];	specialinvoke $r22.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>($r15);	$i2 = lengthof r13;	if $i2 <= 1 goto $r19 = $r22;	$r23 = new org.apache.poi.ss.util.CellReference;	$r19 = $r23;	$r17 = r13[1];	specialinvoke $r23.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>($r17);	goto [?= $r24 = new org.apache.poi.ss.util.CellRangeAddress];	$r24 = new org.apache.poi.ss.util.CellRangeAddress;	$i6 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: int getRow()>();	$i5 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: int getRow()>();	$s4 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: short getCol()>();	$s3 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: short getCol()>();	$i9 = (int) $s4;	$i10 = (int) $s3;	specialinvoke $r24.<org.apache.poi.ss.util.CellRangeAddress: void <init>(int,int,int,int)>($i6, $i5, $i9, $i10);	virtualinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void addCellRangeAddress(org.apache.poi.ss.util.CellRangeAddress)>($r24);	i8 = i8 + 1;	goto [?= (branch)];	if i8 >= i1 goto (branch);	goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 16