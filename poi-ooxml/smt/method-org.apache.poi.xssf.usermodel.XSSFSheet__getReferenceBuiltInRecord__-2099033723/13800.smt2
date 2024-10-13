(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3999 0)
(declare-sort var1165 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1165-init () var1165)
(declare-fun <init>/-949075851 (var1165 String Int Int Bool Bool) void)
(declare-fun var389_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var1165) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1847 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1847 null-String)))
(declare-const var2982 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2982 null-Int)))
(declare-const var1292 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1292 null-Int)))
(declare-const var2261 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2261 null-Int)))
(declare-const var3127 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3127 null-Int)))
(define-const var399 var1165 var1165-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var399 var1847 0 var2982 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var399!1 var1165)
(declare-const var1847!1 String)
(declare-const var188 Int)
(declare-const var2982!1 Int)
(declare-const var3018 Int)
(declare-const var3018!1 Int)
(define-const var2187 var1165 var1165-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2187 var1847!1 0 var1292 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var2187!1 var1165)
(declare-const var1847!2 String)
(declare-const var188!1 Int)
(declare-const var1292!1 Int)
(declare-const var3018!2 Int)
(declare-const var3018!3 Int)
(define-const var2543 var1165 var1165-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2543 var1847!2 var2261 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var2543!1 var1165)
(declare-const var1847!3 String)
(declare-const var2261!1 Int)
(declare-const var188!2 Int)
(declare-const var3018!4 Int)
(declare-const var3018!5 Int)
(define-const var1793 var1165 var1165-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1793 var1847!3 var3127 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var1793!1 var1165)
(declare-const var1847!4 String)
(declare-const var3127!1 Int)
(declare-const var188!3 Int)
(declare-const var3018!6 Int)
(declare-const var3018!7 Int)
(define-const var3700 String (var389_format/1746937582 var1847!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var1767 String "") ; Statement: r26 = "" 
(define-const var3739 String "") ; Statement: r27 = "" 
(define-const var3545 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var2982!1 var3545))) ; Cond: i0 != $i7 
(assert true)
(define-const var3608 (Array Int String) (getCellRefParts/105673054 var399!1)) ; Statement: $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2189 String (select var3608 2)) ; Statement: $r24 = $r6[2] 
(assert true)
(define-const var1021 (Array Int String) (getCellRefParts/105673054 var2187!1)) ; Statement: $r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var2366 String (select var1021 2)) ; Statement: $r25 = $r7[2] 
(define-const var1522 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1522)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1522!1 String)
(assert (= var1522!1 ""))
(assert true)
(define-const var3109 String (append/672562846 var1522!1 var3700)) ; Statement: $r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1522!2 String)
(assert (= var1522!2 (str.++ var1522!1 var3700)))
(assert true)
(define-const var1393 String (append/672562846 var3109 "!$")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$") 
(declare-const var3109!1 String)
(assert (= var3109!1 (str.++ var3109 "!$")))
(assert true)
(define-const var1436 String (append/672562846 var1393 var2189)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1393!1 String)
(assert (= var1393!1 (str.++ var1393 var2189)))
(assert true)
(define-const var3850 String (append/672562846 var1436 ":$")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$") 
(declare-const var1436!1 String)
(assert (= var1436!1 (str.++ var1436 ":$")))
(assert true)
(define-const var394 String (append/672562846 var3850 var2366)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var3850!1 String)
(assert (= var3850!1 (str.++ var3850 var2366)))
(assert true)
(define-const var1767!1 String (toString/-2075883882 var394)) ; Statement: r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var3222 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var2261!1 var3222)))) ; Negate: Cond: i2 != $i11  
(define-const var2643 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 == $i13 goto $r36 = new java.lang.StringBuilder 
(assert (= var3127!1 var2643)) ; Cond: i3 == $i13 
(define-const var2102 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2102)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2102!1 String)
(assert (= var2102!1 ""))
(assert true)
;(assert (append/672562846 var2102!1 var1767!1)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2102!2 String)
(assert (= var2102!2 (str.++ var2102!1 var1767!1)))
(assert true)
(define-const var1486 Int (length/-171891354 var2102!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var1486 0)) ; Cond: $i5 <= 0 
(assert true)
;(assert (append/672562846 var2102!2 var3739)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var2102!3 String)
(assert (= var2102!3 (str.++ var2102!2 var3739)))
(assert true)
(define-const var1822 String (toString/-2075883882 var2102!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1165-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var389_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), length/-171891354=([java.lang.StringBuilder], int)}
; {var1847=r1, var3999=null_type, var2982=i0, var1292=i1, var2261=i2, var3127=i3, var1165=org.apache.poi.ss.util.CellReference, var399=$r30, var188=0, var3018=1, var2187=$r31, var2543=$r32, var1793=$r33, var389=org.apache.poi.ss.formula.SheetNameFormatter, var3700=r5, var1767=r26, var3739=r27, var3545=$i7, var3608=$r6, var2189=$r24, var1021=$r7, var2366=$r25, var1522=$r34, var3109=$r9, var1393=$r10, var1436=$r11, var3850=$r12, var394=$r13, var3222=$i11, var2643=$i13, var2102=$r36, var1486=$i5, var1822=$r29}
; {r1=var1847, null_type=var3999, i0=var2982, i1=var1292, i2=var2261, i3=var3127, org.apache.poi.ss.util.CellReference=var1165, $r30=var399, 0=var188, 1=var3018, $r31=var2187, $r32=var2543, $r33=var1793, org.apache.poi.ss.formula.SheetNameFormatter=var389, r5=var3700, r26=var1767, r27=var3739, $i7=var3545, $r6=var3608, $r24=var2189, $r7=var1021, $r25=var2366, $r34=var1522, $r9=var3109, $r10=var1393, $r11=var1436, $r12=var3850, $r13=var394, $i11=var3222, $i13=var2643, $r36=var2102, $i5=var1486, $r29=var1822}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r24 = $r6[2];	$r7 = virtualinvoke $r31.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r25 = $r7[2];	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!$");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":$");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	r26 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i13 = (int) -1;	if i3 == $i13 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 6