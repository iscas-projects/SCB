(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2969 0)
(declare-sort var1144 0)
(declare-sort var2667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1144-init () var1144)
(declare-fun <init>/-949075851 (var1144 String Int Int Bool Bool) void)
(declare-fun var2667_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var1144) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1426 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1426 null-String)))
(declare-const var1690 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1690 null-Int)))
(declare-const var1981 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1981 null-Int)))
(declare-const var1425 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1425 null-Int)))
(declare-const var1027 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var1027 null-Int)))
(define-const var108 var1144 var1144-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var108 var1426 0 var1690 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var108!1 var1144)
(declare-const var1426!1 String)
(declare-const var2555 Int)
(declare-const var1690!1 Int)
(declare-const var1530 Int)
(declare-const var1530!1 Int)
(define-const var3191 var1144 var1144-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3191 var1426!1 0 var1981 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var3191!1 var1144)
(declare-const var1426!2 String)
(declare-const var2555!1 Int)
(declare-const var1981!1 Int)
(declare-const var1530!2 Int)
(declare-const var1530!3 Int)
(define-const var3605 var1144 var1144-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3605 var1426!2 var1425 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var3605!1 var1144)
(declare-const var1426!3 String)
(declare-const var1425!1 Int)
(declare-const var2555!2 Int)
(declare-const var1530!4 Int)
(declare-const var1530!5 Int)
(define-const var3505 var1144 var1144-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3505 var1426!3 var1027 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var3505!1 var1144)
(declare-const var1426!4 String)
(declare-const var1027!1 Int)
(declare-const var2555!3 Int)
(declare-const var1530!6 Int)
(declare-const var1530!7 Int)
(define-const var3229 String (var2667_format/1746937582 var1426!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var3849 String "") ; Statement: r26 = "" 
(define-const var1313 String "") ; Statement: r27 = "" 
(define-const var2658 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var1690!1 var2658))) ; Cond: i0 != $i7 
(assert true)
(define-const var178 (Array Int String) (getCellRefParts/105673054 var108!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var431 String (select var178 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var3986 (Array Int String) (getCellRefParts/105673054 var3191!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3022 String (select var3986 2)) ; Statement: $r25 = $r7[2] 
(define-const var397 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var397)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var397!1 String)
(assert (= var397!1 ""))
(assert true)
(define-const var2005 String (append/672562846 var397!1 var3229)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var397!2 String)
(assert (= var397!2 (str.++ var397!1 var3229)))
(assert true)
(define-const var755 String (append/672562846 var2005 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var2005!1 String)
(assert (= var2005!1 (str.++ var2005 "!$")))
(assert true)
(define-const var3232 String (append/672562846 var755 var431)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var755!1 String)
(assert (= var755!1 (str.++ var755 var431)))
(assert true)
(define-const var27 String (append/672562846 var3232 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var3232!1 String)
(assert (= var3232!1 (str.++ var3232 ":$")))
(assert true)
(define-const var3334 String (append/672562846 var27 var3022)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var27!1 String)
(assert (= var27!1 (str.++ var27 var3022)))
(assert true)
(define-const var3849!1 String (toString/-2075883882 var3334)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1288 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var1425!1 var1288)))) ; Negate: Cond: i2 != $i11  
(define-const var2717 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 == $i13 goto $r36 = new java.lang.StringBuilder 
(assert (= var1027!1 var2717)) ; Cond: i3 == $i13 
(define-const var335 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var335)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var335!1 String)
(assert (= var335!1 ""))
(assert true)
;(assert (append/672562846 var335!1 var3849!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var335!2 String)
(assert (= var335!2 (str.++ var335!1 var3849!1)))
(assert true)
(define-const var2564 Int (length/-171891354 var335!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (not (<= var2564 0))) ; Negate: Cond: $i5 <= 0  
(assert true)
(define-const var1481 Int (length/-134980193 var1313)) ; Statement: $i4 = virtualinvoke r27.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var1481 0)) ; Cond: $i4 <= 0 
(assert true)
;(assert (append/672562846 var335!2 var1313)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var335!3 String)
(assert (= var335!3 (str.++ var335!2 var1313)))
(assert true)
(define-const var3368 String (toString/-2075883882 var335!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1144-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var2667_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int), length/-134980193=([java.lang.String], int)}
; {var1426=r1, var2969=null_type, var1690=i0, var1981=i1, var1425=i2, var1027=i3, var1144=org.apache.poi.ss.util.CellReference, var108=$r30, var2555=0, var1530=1, var3191=$r31, var3605=$r32, var3505=$r33, var2667=org.apache.poi.ss.formula.SheetNameFormatter, var3229=r5, var3849=r26, var1313=r27, var2658=$i7, var178=$r6, var431=$r24, var3986=$r7, var3022=$r25, var397=$r34, var2005=$r9, var755=$r10, var3232=$r11, var27=$r12, var3334=$r13, var1288=$i11, var2717=$i13, var335=$r36, var2564=$i5, var1481=$i4, var3368=$r29}
; {r1=var1426, null_type=var2969, i0=var1690, i1=var1981, i2=var1425, i3=var1027, org.apache.poi.ss.util.CellReference=var1144, $r30=var108, 0=var2555, 1=var1530, $r31=var3191, $r32=var3605, $r33=var3505, org.apache.poi.ss.formula.SheetNameFormatter=var2667, r5=var3229, r26=var3849, r27=var1313, $i7=var2658, $r6=var178, $r24=var431, $r7=var3986, $r25=var3022, $r34=var397, $r9=var2005, $r10=var755, $r11=var3232, $r12=var27, $r13=var3334, $i11=var1288, $i13=var2717, $r36=var335, $i5=var2564, $i4=var1481, $r29=var3368}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i13 = (int) -1;	if i3 == $i13 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$i4 = virtualinvoke r27.<java.lang.String: int length()>();	if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7