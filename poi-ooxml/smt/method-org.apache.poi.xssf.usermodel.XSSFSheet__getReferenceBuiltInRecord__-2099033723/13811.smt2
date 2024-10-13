(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3126 0)
(declare-sort var359 0)
(declare-sort var528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var359-init () var359)
(declare-fun <init>/-949075851 (var359 String Int Int Bool Bool) void)
(declare-fun var528_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var359) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1795 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1795 null-String)))
(declare-const var3780 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3780 null-Int)))
(declare-const var2743 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2743 null-Int)))
(declare-const var639 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var639 null-Int)))
(declare-const var3059 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3059 null-Int)))
(define-const var2769 var359 var359-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2769 var1795 0 var3780 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var2769!1 var359)
(declare-const var1795!1 String)
(declare-const var2448 Int)
(declare-const var3780!1 Int)
(declare-const var61 Int)
(declare-const var61!1 Int)
(define-const var2682 var359 var359-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2682 var1795!1 0 var2743 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var2682!1 var359)
(declare-const var1795!2 String)
(declare-const var2448!1 Int)
(declare-const var2743!1 Int)
(declare-const var61!2 Int)
(declare-const var61!3 Int)
(define-const var3423 var359 var359-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3423 var1795!2 var639 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var3423!1 var359)
(declare-const var1795!3 String)
(declare-const var639!1 Int)
(declare-const var2448!2 Int)
(declare-const var61!4 Int)
(declare-const var61!5 Int)
(define-const var969 var359 var359-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var969 var1795!3 var3059 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var969!1 var359)
(declare-const var1795!4 String)
(declare-const var3059!1 Int)
(declare-const var2448!3 Int)
(declare-const var61!6 Int)
(declare-const var61!7 Int)
(define-const var193 String (var528_format/1746937582 var1795!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var856 String "") ; Statement: r26 = "" 
(define-const var2835 String "") ; Statement: r27 = "" 
(define-const var1015 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var3780!1 var1015))) ; Cond: i0 != $i7 
(assert true)
(define-const var1126 (Array Int String) (getCellRefParts/105673054 var2769!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3358 String (select var1126 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var1650 (Array Int String) (getCellRefParts/105673054 var2682!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var467 String (select var1650 2)) ; Statement: $r25 = $r7[2] 
(define-const var2910 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2910)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2910!1 String)
(assert (= var2910!1 ""))
(assert true)
(define-const var1154 String (append/672562846 var2910!1 var193)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2910!2 String)
(assert (= var2910!2 (str.++ var2910!1 var193)))
(assert true)
(define-const var1802 String (append/672562846 var1154 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var1154!1 String)
(assert (= var1154!1 (str.++ var1154 "!$")))
(assert true)
(define-const var3926 String (append/672562846 var1802 var3358)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1802!1 String)
(assert (= var1802!1 (str.++ var1802 var3358)))
(assert true)
(define-const var1464 String (append/672562846 var3926 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var3926!1 String)
(assert (= var3926!1 (str.++ var3926 ":$")))
(assert true)
(define-const var2260 String (append/672562846 var1464 var467)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1464!1 String)
(assert (= var1464!1 (str.++ var1464 var467)))
(assert true)
(define-const var856!1 String (toString/-2075883882 var2260)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1135 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var639!1 var1135))) ; Cond: i2 != $i11 
(assert true)
(define-const var802 (Array Int String) (getCellRefParts/105673054 var3423!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2912 String (select var802 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var1709 (Array Int String) (getCellRefParts/105673054 var969!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var196 String (select var1709 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var251 Bool (= var2912 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var251 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3872 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3872)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3872!1 String)
(assert (= var3872!1 ""))
(assert true)
;(assert (append/672562846 var3872!1 var856!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var3872!2 String)
(assert (= var3872!2 (str.++ var3872!1 var856!1)))
(assert true)
(define-const var1462 Int (length/-171891354 var3872!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (not (<= var1462 0))) ; Negate: Cond: $i5 <= 0  
(assert true)
(define-const var1434 Int (length/-134980193 var2835)) ; Statement: $i4 = virtualinvoke r27.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var1434 0)) ; Cond: $i4 <= 0 
(assert true)
;(assert (append/672562846 var3872!2 var2835)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var3872!3 String)
(assert (= var3872!3 (str.++ var3872!2 var2835)))
(assert true)
(define-const var3812 String (toString/-2075883882 var3872!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var359-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var528_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int), length/-134980193=([java.lang.String], int)}
; {var1795=r1, var3126=null_type, var3780=i0, var2743=i1, var639=i2, var3059=i3, var359=org.apache.poi.ss.util.CellReference, var2769=$r30, var2448=0, var61=1, var2682=$r31, var3423=$r32, var969=$r33, var528=org.apache.poi.ss.formula.SheetNameFormatter, var193=r5, var856=r26, var2835=r27, var1015=$i7, var1126=$r6, var3358=$r24, var1650=$r7, var467=$r25, var2910=$r34, var1154=$r9, var1802=$r10, var3926=$r11, var1464=$r12, var2260=$r13, var1135=$i11, var802=$r14, var2912=$r22, var1709=$r15, var196=$r23, var251=$z0, var3872=$r36, var1462=$i5, var1434=$i4, var3812=$r29}
; {r1=var1795, null_type=var3126, i0=var3780, i1=var2743, i2=var639, i3=var3059, org.apache.poi.ss.util.CellReference=var359, $r30=var2769, 0=var2448, 1=var61, $r31=var2682, $r32=var3423, $r33=var969, org.apache.poi.ss.formula.SheetNameFormatter=var528, r5=var193, r26=var856, r27=var2835, $i7=var1015, $r6=var1126, $r24=var3358, $r7=var1650, $r25=var467, $r34=var2910, $r9=var1154, $r10=var1802, $r11=var3926, $r12=var1464, $r13=var2260, $i11=var1135, $r14=var802, $r22=var2912, $r15=var1709, $r23=var196, $z0=var251, $r36=var3872, $i5=var1462, $i4=var1434, $r29=var3812}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$i4 = virtualinvoke r27.<java.lang.String: int length()>();	if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7