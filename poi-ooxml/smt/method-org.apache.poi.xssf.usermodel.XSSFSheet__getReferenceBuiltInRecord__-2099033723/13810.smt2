(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2566 0)
(declare-sort var1636 0)
(declare-sort var3478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1636-init () var1636)
(declare-fun <init>/-949075851 (var1636 String Int Int Bool Bool) void)
(declare-fun var3478_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var1636) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1027 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1027 null-String)))
(declare-const var921 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var921 null-Int)))
(declare-const var1080 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1080 null-Int)))
(declare-const var1988 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1988 null-Int)))
(declare-const var68 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var68 null-Int)))
(define-const var294 var1636 var1636-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var294 var1027 0 var921 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var294!1 var1636)
(declare-const var1027!1 String)
(declare-const var557 Int)
(declare-const var921!1 Int)
(declare-const var2356 Int)
(declare-const var2356!1 Int)
(define-const var3485 var1636 var1636-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3485 var1027!1 0 var1080 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var3485!1 var1636)
(declare-const var1027!2 String)
(declare-const var557!1 Int)
(declare-const var1080!1 Int)
(declare-const var2356!2 Int)
(declare-const var2356!3 Int)
(define-const var1149 var1636 var1636-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1149 var1027!2 var1988 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var1149!1 var1636)
(declare-const var1027!3 String)
(declare-const var1988!1 Int)
(declare-const var557!2 Int)
(declare-const var2356!4 Int)
(declare-const var2356!5 Int)
(define-const var3169 var1636 var1636-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3169 var1027!3 var68 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var3169!1 var1636)
(declare-const var1027!4 String)
(declare-const var68!1 Int)
(declare-const var557!3 Int)
(declare-const var2356!6 Int)
(declare-const var2356!7 Int)
(define-const var2318 String (var3478_format/1746937582 var1027!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var2539 String "") ; Statement: r26 = "" 
(define-const var1109 String "") ; Statement: r27 = "" 
(define-const var159 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var921!1 var159))) ; Cond: i0 != $i7 
(assert true)
(define-const var1015 (Array Int String) (getCellRefParts/105673054 var294!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var235 String (select var1015 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var2091 (Array Int String) (getCellRefParts/105673054 var3485!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var66 String (select var2091 2)) ; Statement: $r25 = $r7[2] 
(define-const var533 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var533)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var533!1 String)
(assert (= var533!1 ""))
(assert true)
(define-const var1197 String (append/672562846 var533!1 var2318)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var533!2 String)
(assert (= var533!2 (str.++ var533!1 var2318)))
(assert true)
(define-const var2547 String (append/672562846 var1197 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var1197!1 String)
(assert (= var1197!1 (str.++ var1197 "!$")))
(assert true)
(define-const var3576 String (append/672562846 var2547 var235)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var2547!1 String)
(assert (= var2547!1 (str.++ var2547 var235)))
(assert true)
(define-const var332 String (append/672562846 var3576 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 ":$")))
(assert true)
(define-const var3318 String (append/672562846 var332 var66)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var332!1 String)
(assert (= var332!1 (str.++ var332 var66)))
(assert true)
(define-const var2539!1 String (toString/-2075883882 var3318)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1708 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var1988!1 var1708))) ; Cond: i2 != $i11 
(assert true)
(define-const var869 (Array Int String) (getCellRefParts/105673054 var1149!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var834 String (select var869 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var21 (Array Int String) (getCellRefParts/105673054 var3169!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2002 String (select var21 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var2964 Bool (= var834 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (not (= (ite var2964 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1012 Bool (= var2002 "0")) ; Statement: $z1 = virtualinvoke $r23.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z1 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var1012 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1540 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1540)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1540!1 String)
(assert (= var1540!1 ""))
(assert true)
;(assert (append/672562846 var1540!1 var2539!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var1540!2 String)
(assert (= var1540!2 (str.++ var1540!1 var2539!1)))
(assert true)
(define-const var2750 Int (length/-171891354 var1540!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var2750 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var1540!2 var1109)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var1540!3 String)
(assert (= var1540!3 (str.++ var1540!2 var1109)))
(assert true)
(define-const var2203 String (toString/-2075883882 var1540!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1636-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var3478_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int)}
; {var1027=r1, var2566=null_type, var921=i0, var1080=i1, var1988=i2, var68=i3, var1636=org.apache.poi.ss.util.CellReference, var294=$r30, var557=0, var2356=1, var3485=$r31, var1149=$r32, var3169=$r33, var3478=org.apache.poi.ss.formula.SheetNameFormatter, var2318=r5, var2539=r26, var1109=r27, var159=$i7, var1015=$r6, var235=$r24, var2091=$r7, var66=$r25, var533=$r34, var1197=$r9, var2547=$r10, var3576=$r11, var332=$r12, var3318=$r13, var1708=$i11, var869=$r14, var834=$r22, var21=$r15, var2002=$r23, var2964=$z0, var1012=$z1, var1540=$r36, var2750=$i5, var2203=$r29}
; {r1=var1027, null_type=var2566, i0=var921, i1=var1080, i2=var1988, i3=var68, org.apache.poi.ss.util.CellReference=var1636, $r30=var294, 0=var557, 1=var2356, $r31=var3485, $r32=var1149, $r33=var3169, org.apache.poi.ss.formula.SheetNameFormatter=var3478, r5=var2318, r26=var2539, r27=var1109, $i7=var159, $r6=var1015, $r24=var235, $r7=var2091, $r25=var66, $r34=var533, $r9=var1197, $r10=var2547, $r11=var3576, $r12=var332, $r13=var3318, $i11=var1708, $r14=var869, $r22=var834, $r15=var21, $r23=var2002, $z0=var2964, $z1=var1012, $r36=var1540, $i5=var2750, $r29=var2203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$z1 = virtualinvoke $r23.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z1 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7