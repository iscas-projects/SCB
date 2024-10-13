(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3963 0)
(declare-sort var1910 0)
(declare-sort var2066 0)
(declare-sort var2975 0)
(declare-sort var3287 0)
(declare-sort var1172 0)
(declare-sort var67 0)
(declare-sort var2649 0)
(declare-sort var1899 0)
(declare-sort var3410 0)
(declare-sort var2793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1910-init () var1910)
(declare-fun <init>/-325640736 (var1910) void)
(declare-fun worksheet/-1100774885 (var3963) var2066)
(declare-fun var2066_getDataValidations/-1117421477 (var2066) var2975)
(declare-fun var2975_getDataValidationArray/-796787524 (var2975) (Array Int var3287))
(declare-fun getLength-Arr-var3287-1 ((Array Int var3287)) Int)
(declare-fun var1172-init () var1172)
(declare-fun <init>/-655612680 (var1172) void)
(declare-fun var3287_getSqref/624999073 (var3287) var67)
(declare-fun var67_iterator/-912451715 (var67) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2649)
(declare-fun cast-from-var2649-to-String (var2649) String)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1899-init () var1899)
(declare-fun <init>/-1289332233 (var1899 String) void)
(declare-fun var3410-init () var3410)
(declare-fun getRow/79195701 (var1899) Int)
(declare-fun getCol/1474631132 (var1899) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/1037535432 (var3410 Int Int Int Int) void)
(declare-fun addCellRangeAddress/-1640976635 (var1172 var3410) void)
(declare-fun var2793-init () var2793)
(declare-fun <init>/1746928616 (var2793 var1172 var3287) void)
(declare-fun var67_add/328494887 (var67 var2649) Bool)
(declare-fun cast-from-var1910-to-var67 (var1910) var67)
(declare-fun cast-from-var2793-to-var2649 (var2793) var2649)
(declare-const null-var3963 var3963)
(declare-const null-var2975 var2975)
(declare-const var156 var3963) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var156 null-var3963)))
(define-const var1328 var1910 var1910-init) ; Statement: $r20 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1328)) ; Statement: specialinvoke $r20.<java.util.ArrayList: void <init>()>() 

(declare-const var1328!1 var1910)
(define-const var828 var2066 (worksheet/-1100774885 var156)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet> 
(define-const var3853 var2975 (var2066_getDataValidations/-1117421477 var828)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>() 
 ; Statement: if r3 == null goto return $r20 
(assert (not (= var3853 null-var2975))) ; Negate: Cond: r3 == null  
(define-const var301 (Array Int var3287) (var2975_getDataValidationArray/-796787524 var3853)) ; Statement: r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>() 
(define-const var3788 Int (getLength-Arr-var3287-1 var301)) ; Statement: i0 = lengthof r4 
(define-const var837 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (not (>= var837 var3788))) ; Negate: Cond: i7 >= i0  
(define-const var2567 var3287 (select var301 var837)) ; Statement: r5 = r4[i7] 
(define-const var222 var1172 var1172-init) ; Statement: $r21 = new org.apache.poi.ss.util.CellRangeAddressList 
(assert true)
;(assert (<init>/-655612680 var222)) ; Statement: specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>() 

(declare-const var222!1 var1172)
(define-const var654 var67 (var3287_getSqref/624999073 var2567)) ; Statement: r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>() 
(define-const var1629 Iterator (var67_iterator/-912451715 var654)) ; Statement: r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var969 Bool (Iterator_hasNext/-1669924200 var1629)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= (ite var969 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var988 var2649 (Iterator_next/-1124697587 var1629)) ; Statement: $r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1629!1 Iterator)
(define-const var2656 String (cast-from-var2649-to-String var988)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var2989 (Array Int String) (split/-636890950 var2656 " ")) ; Statement: r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var2656 " ") i) (re.++ (re.* re.all) (str.to_re " ") (re.* re.all))))))
(define-const var2957 Int (getLength-Arr-String-1 var2989)) ; Statement: i1 = lengthof r11 
(define-const var3285 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (not (>= var3285 var2957))) ; Negate: Cond: i8 >= i1  
(define-const var1998 String (select var2989 var3285)) ; Statement: r12 = r11[i8] 
(assert true)
(define-const var1382 (Array Int String) (split/-636890950 var1998 ":")) ; Statement: r13 = virtualinvoke r12.<java.lang.String: java.lang.String[] split(java.lang.String)>(":") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1998 ":") i) (re.++ (re.* re.all) (str.to_re ":") (re.* re.all))))))
(define-const var3575 var1899 var1899-init) ; Statement: $r22 = new org.apache.poi.ss.util.CellReference 
(define-const var2970 String (select var1382 0)) ; Statement: $r15 = r13[0] 
(assert true)
;(assert (<init>/-1289332233 var3575 var2970)) ; Statement: specialinvoke $r22.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>($r15) 

(declare-const var3575!1 var1899)
(declare-const var2970!1 String)
(define-const var2423 Int (getLength-Arr-String-1 var1382)) ; Statement: $i2 = lengthof r13 
 ; Statement: if $i2 <= 1 goto $r19 = $r22 
(assert (<= var2423 1)) ; Cond: $i2 <= 1 
(define-const var2515 var1899 var3575!1) ; Statement: $r19 = $r22 
(assert true) ; Non Conditional
(define-const var2302 var3410 var3410-init) ; Statement: $r24 = new org.apache.poi.ss.util.CellRangeAddress 
(assert true)
(define-const var3996 Int (getRow/79195701 var3575!1)) ; Statement: $i6 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: int getRow()>() 
(assert true)
(define-const var2079 Int (getRow/79195701 var2515)) ; Statement: $i5 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: int getRow()>() 
(assert true)
(define-const var2068 Int (getCol/1474631132 var3575!1)) ; Statement: $s4 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: short getCol()>() 
(assert true)
(define-const var488 Int (getCol/1474631132 var2515)) ; Statement: $s3 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: short getCol()>() 
(define-const var3356 Int (cast-from-Int-to-Int var2068)) ; Statement: $i9 = (int) $s4 
(define-const var1226 Int (cast-from-Int-to-Int var488)) ; Statement: $i10 = (int) $s3 
(assert true)
;(assert (<init>/1037535432 var2302 var3996 var2079 var3356 var1226)) ; Statement: specialinvoke $r24.<org.apache.poi.ss.util.CellRangeAddress: void <init>(int,int,int,int)>($i6, $i5, $i9, $i10) 

(declare-const var2302!1 var3410)
(declare-const var3996!1 Int)
(declare-const var2079!1 Int)
(declare-const var3356!1 Int)
(declare-const var1226!1 Int)
(assert true)
;(assert (addCellRangeAddress/-1640976635 var222!1 var2302!1)) ; Statement: virtualinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void addCellRangeAddress(org.apache.poi.ss.util.CellRangeAddress)>($r24) 

(declare-const var222!2 var1172)
(declare-const var2302!2 var3410)
(define-const var3285!1 Int (+ var3285 1)) ; Statement: i8 = i8 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var3285!1 var2957)) ; Cond: i8 >= i1 
 ; Statement: goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var969!1 Bool (Iterator_hasNext/-1669924200 var1629!1)) ; Statement: $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (= (ite var969!1 1 0) 0)) ; Cond: $z0 == 0 
(define-const var470 var2793 var2793-init) ; Statement: $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert true)
;(assert (<init>/1746928616 var470 var222!2 var2567)) ; Statement: specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5) 

(declare-const var470!1 var2793)
(declare-const var222!3 var1172)
(declare-const var2567!1 var3287)
;(assert (var67_add/328494887 (cast-from-var1910-to-var67 var1328!1) (cast-from-var2793-to-var2649 var470!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var1328!2 var1910)
(declare-const var470!2 var2793)
(define-const var837!1 Int (+ var837 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return $r20 
(assert (>= var837!1 var3788)) ; Cond: i7 >= i0 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var1910-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), worksheet/-1100774885=([org.apache.poi.xssf.usermodel.XSSFSheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet), var2066_getDataValidations/-1117421477=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations), var2975_getDataValidationArray/-796787524=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]), getLength-Arr-var3287-1=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[]], int), var1172-init=([], org.apache.poi.ss.util.CellRangeAddressList), <init>/-655612680=([org.apache.poi.ss.util.CellRangeAddressList], void), var3287_getSqref/624999073=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], java.util.List), var67_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2649-to-String=([java.lang.Object], java.lang.String), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1899-init=([], org.apache.poi.ss.util.CellReference), <init>/-1289332233=([org.apache.poi.ss.util.CellReference, java.lang.String], void), var3410-init=([], org.apache.poi.ss.util.CellRangeAddress), getRow/79195701=([org.apache.poi.ss.util.CellReference], int), getCol/1474631132=([org.apache.poi.ss.util.CellReference], short), cast-from-Int-to-Int=([short], int), <init>/1037535432=([org.apache.poi.ss.util.CellRangeAddress, int, int, int, int], void), addCellRangeAddress/-1640976635=([org.apache.poi.ss.util.CellRangeAddressList, org.apache.poi.ss.util.CellRangeAddress], void), var2793-init=([], org.apache.poi.xssf.usermodel.XSSFDataValidation), <init>/1746928616=([org.apache.poi.xssf.usermodel.XSSFDataValidation, org.apache.poi.ss.util.CellRangeAddressList, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation], void), var67_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var1910-to-var67=([java.util.ArrayList], java.util.List), cast-from-var2793-to-var2649=([org.apache.poi.xssf.usermodel.XSSFDataValidation], java.lang.Object)}
; {var3963=org.apache.poi.xssf.usermodel.XSSFSheet, var156=r1, var1910=java.util.ArrayList, var1328=$r20, var2066=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet, var828=$r2, var2975=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations, var3853=r3, var3287=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var301=r4, var3788=i0, var837=i7, var2567=r5, var1172=org.apache.poi.ss.util.CellRangeAddressList, var222=$r21, var67=java.util.List, var654=r7, var1629=r18, var969=$z0, var2649=java.lang.Object, var988=$r9, var2656=r10, var2989=r11, var2957=i1, var3285=i8, var1998=r12, var1382=r13, var1899=org.apache.poi.ss.util.CellReference, var3575=$r22, var2970=$r15, var2423=$i2, var2515=$r19, var3410=org.apache.poi.ss.util.CellRangeAddress, var2302=$r24, var3996=$i6, var2079=$i5, var2068=$s4, var488=$s3, var3356=$i9, var1226=$i10, var2793=org.apache.poi.xssf.usermodel.XSSFDataValidation, var470=$r25}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var3963, r1=var156, java.util.ArrayList=var1910, $r20=var1328, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet=var2066, $r2=var828, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations=var2975, r3=var3853, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var3287, r4=var301, i0=var3788, i7=var837, r5=var2567, org.apache.poi.ss.util.CellRangeAddressList=var1172, $r21=var222, java.util.List=var67, r7=var654, r18=var1629, $z0=var969, java.lang.Object=var2649, $r9=var988, r10=var2656, r11=var2989, i1=var2957, i8=var3285, r12=var1998, r13=var1382, org.apache.poi.ss.util.CellReference=var1899, $r22=var3575, $r15=var2970, $i2=var2423, $r19=var2515, org.apache.poi.ss.util.CellRangeAddress=var3410, $r24=var2302, $i6=var3996, $i5=var2079, $s4=var2068, $s3=var488, $i9=var3356, $i10=var1226, org.apache.poi.xssf.usermodel.XSSFDataValidation=var2793, $r25=var470}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	$r20 = new java.util.ArrayList;	specialinvoke $r20.<java.util.ArrayList: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet worksheet>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorksheet: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations getDataValidations()>();	if r3 == null goto return $r20;	r4 = interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidations: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation[] getDataValidationArray()>();	i0 = lengthof r4;	i7 = 0;	if i7 >= i0 goto return $r20;	r5 = r4[i7];	$r21 = new org.apache.poi.ss.util.CellRangeAddressList;	specialinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void <init>()>();	r7 = interfaceinvoke r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: java.util.List getSqref()>();	r18 = interfaceinvoke r7.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r9 = interfaceinvoke r18.<java.util.Iterator: java.lang.Object next()>();	r10 = (java.lang.String) $r9;	r11 = virtualinvoke r10.<java.lang.String: java.lang.String[] split(java.lang.String)>(" ");	i1 = lengthof r11;	i8 = 0;	if i8 >= i1 goto (branch);	r12 = r11[i8];	r13 = virtualinvoke r12.<java.lang.String: java.lang.String[] split(java.lang.String)>(":");	$r22 = new org.apache.poi.ss.util.CellReference;	$r15 = r13[0];	specialinvoke $r22.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String)>($r15);	$i2 = lengthof r13;	if $i2 <= 1 goto $r19 = $r22;	$r19 = $r22;	$r24 = new org.apache.poi.ss.util.CellRangeAddress;	$i6 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: int getRow()>();	$i5 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: int getRow()>();	$s4 = virtualinvoke $r22.<org.apache.poi.ss.util.CellReference: short getCol()>();	$s3 = virtualinvoke $r19.<org.apache.poi.ss.util.CellReference: short getCol()>();	$i9 = (int) $s4;	$i10 = (int) $s3;	specialinvoke $r24.<org.apache.poi.ss.util.CellRangeAddress: void <init>(int,int,int,int)>($i6, $i5, $i9, $i10);	virtualinvoke $r21.<org.apache.poi.ss.util.CellRangeAddressList: void addCellRangeAddress(org.apache.poi.ss.util.CellRangeAddress)>($r24);	i8 = i8 + 1;	goto [?= (branch)];	if i8 >= i1 goto (branch);	goto [?= $z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r25 = new org.apache.poi.xssf.usermodel.XSSFDataValidation;	specialinvoke $r25.<org.apache.poi.xssf.usermodel.XSSFDataValidation: void <init>(org.apache.poi.ss.util.CellRangeAddressList,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation)>($r21, r5);	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r25);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto return $r20;	return $r20
;block_num 16