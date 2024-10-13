(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3524 0)
(declare-sort var2813 0)
(declare-sort var2861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2813-init () var2813)
(declare-fun <init>/-949075851 (var2813 String Int Int Bool Bool) void)
(declare-fun var2861_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var2813) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2858 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2858 null-String)))
(declare-const var3698 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3698 null-Int)))
(declare-const var1353 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1353 null-Int)))
(declare-const var2970 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2970 null-Int)))
(declare-const var1732 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var1732 null-Int)))
(define-const var1837 var2813 var2813-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1837 var2858 0 var3698 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var1837!1 var2813)
(declare-const var2858!1 String)
(declare-const var630 Int)
(declare-const var3698!1 Int)
(declare-const var2777 Int)
(declare-const var2777!1 Int)
(define-const var1361 var2813 var2813-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1361 var2858!1 0 var1353 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var1361!1 var2813)
(declare-const var2858!2 String)
(declare-const var630!1 Int)
(declare-const var1353!1 Int)
(declare-const var2777!2 Int)
(declare-const var2777!3 Int)
(define-const var1365 var2813 var2813-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1365 var2858!2 var2970 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var1365!1 var2813)
(declare-const var2858!3 String)
(declare-const var2970!1 Int)
(declare-const var630!2 Int)
(declare-const var2777!4 Int)
(declare-const var2777!5 Int)
(define-const var155 var2813 var2813-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var155 var2858!3 var1732 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var155!1 var2813)
(declare-const var2858!4 String)
(declare-const var1732!1 Int)
(declare-const var630!3 Int)
(declare-const var2777!6 Int)
(declare-const var2777!7 Int)
(define-const var948 String (var2861_format/1746937582 var2858!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var1601 String "") ; Statement: r26 = "" 
(define-const var1910 String "") ; Statement: r27 = "" 
(define-const var2136 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var3698!1 var2136)))) ; Negate: Cond: i0 != $i7  
(define-const var3480 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (not (= var1353!1 var3480))) ; Negate: Cond: i1 == $i9  
(assert true)
(define-const var574 (Array Int String) (getCellRefParts/105673054 var1837!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3872 String (select var574 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var93 (Array Int String) (getCellRefParts/105673054 var1361!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1596 String (select var93 2)) ; Statement: $r25 = $r7[2] 
(define-const var670 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var670)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var670!1 String)
(assert (= var670!1 ""))
(assert true)
(define-const var2916 String (append/672562846 var670!1 var948)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var670!2 String)
(assert (= var670!2 (str.++ var670!1 var948)))
(assert true)
(define-const var1056 String (append/672562846 var2916 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var2916!1 String)
(assert (= var2916!1 (str.++ var2916 "!$")))
(assert true)
(define-const var2517 String (append/672562846 var1056 var3872)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1056!1 String)
(assert (= var1056!1 (str.++ var1056 var3872)))
(assert true)
(define-const var1533 String (append/672562846 var2517 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var2517!1 String)
(assert (= var2517!1 (str.++ var2517 ":$")))
(assert true)
(define-const var3249 String (append/672562846 var1533 var1596)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1533!1 String)
(assert (= var1533!1 (str.++ var1533 var1596)))
(assert true)
(define-const var1601!1 String (toString/-2075883882 var3249)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1279 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var2970!1 var1279))) ; Cond: i2 != $i11 
(assert true)
(define-const var1095 (Array Int String) (getCellRefParts/105673054 var1365!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var1030 String (select var1095 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var899 (Array Int String) (getCellRefParts/105673054 var155!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2464 String (select var899 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var1326 Bool (= var1030 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var1326 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1306 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1306)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1306!1 String)
(assert (= var1306!1 ""))
(assert true)
;(assert (append/672562846 var1306!1 var1601!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var1306!2 String)
(assert (= var1306!2 (str.++ var1306!1 var1601!1)))
(assert true)
(define-const var3695 Int (length/-171891354 var1306!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var3695 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var1306!2 var1910)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var1306!3 String)
(assert (= var1306!3 (str.++ var1306!2 var1910)))
(assert true)
(define-const var10 String (toString/-2075883882 var1306!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var2813-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var2861_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int)}
; {var2858=r1, var3524=null_type, var3698=i0, var1353=i1, var2970=i2, var1732=i3, var2813=org.apache.poi.ss.util.CellReference, var1837=$r30, var630=0, var2777=1, var1361=$r31, var1365=$r32, var155=$r33, var2861=org.apache.poi.ss.formula.SheetNameFormatter, var948=r5, var1601=r26, var1910=r27, var2136=$i7, var3480=$i9, var574=$r6, var3872=$r24, var93=$r7, var1596=$r25, var670=$r34, var2916=$r9, var1056=$r10, var2517=$r11, var1533=$r12, var3249=$r13, var1279=$i11, var1095=$r14, var1030=$r22, var899=$r15, var2464=$r23, var1326=$z0, var1306=$r36, var3695=$i5, var10=$r29}
; {r1=var2858, null_type=var3524, i0=var3698, i1=var1353, i2=var2970, i3=var1732, org.apache.poi.ss.util.CellReference=var2813, $r30=var1837, 0=var630, 1=var2777, $r31=var1361, $r32=var1365, $r33=var155, org.apache.poi.ss.formula.SheetNameFormatter=var2861, r5=var948, r26=var1601, r27=var1910, $i7=var2136, $i9=var3480, $r6=var574, $r24=var3872, $r7=var93, $r25=var1596, $r34=var670, $r9=var2916, $r10=var1056, $r11=var2517, $r12=var1533, $r13=var3249, $i11=var1279, $r14=var1095, $r22=var1030, $r15=var899, $r23=var2464, $z0=var1326, $r36=var1306, $i5=var3695, $r29=var10}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7