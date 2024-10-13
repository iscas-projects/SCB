(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3222 0)
(declare-sort var1495 0)
(declare-sort var3788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1495-init () var1495)
(declare-fun <init>/-949075851 (var1495 String Int Int Bool Bool) void)
(declare-fun var3788_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1801 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1801 null-String)))
(declare-const var1268 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1268 null-Int)))
(declare-const var1655 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1655 null-Int)))
(declare-const var3005 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var3005 null-Int)))
(declare-const var3308 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var3308 null-Int)))
(define-const var1934 var1495 var1495-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1934 var1801 0 var1268 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var1934!1 var1495)
(declare-const var1801!1 String)
(declare-const var2556 Int)
(declare-const var1268!1 Int)
(declare-const var2136 Int)
(declare-const var2136!1 Int)
(define-const var2391 var1495 var1495-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var2391 var1801!1 0 var1655 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var2391!1 var1495)
(declare-const var1801!2 String)
(declare-const var2556!1 Int)
(declare-const var1655!1 Int)
(declare-const var2136!2 Int)
(declare-const var2136!3 Int)
(define-const var3026 var1495 var1495-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3026 var1801!2 var3005 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var3026!1 var1495)
(declare-const var1801!3 String)
(declare-const var3005!1 Int)
(declare-const var2556!2 Int)
(declare-const var2136!4 Int)
(declare-const var2136!5 Int)
(define-const var448 var1495 var1495-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var448 var1801!3 var3308 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var448!1 var1495)
(declare-const var1801!4 String)
(declare-const var3308!1 Int)
(declare-const var2556!3 Int)
(declare-const var2136!6 Int)
(declare-const var2136!7 Int)
(define-const var742 String (var3788_format/1746937582 var1801!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var536 String "") ; Statement: r26 = "" 
(define-const var2912 String "") ; Statement: r27 = "" 
(define-const var2434 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var1268!1 var2434)))) ; Negate: Cond: i0 != $i7  
(define-const var2379 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (= var1655!1 var2379)) ; Cond: i1 == $i9 
(define-const var323 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var3005!1 var323)))) ; Negate: Cond: i2 != $i11  
(define-const var2900 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i3 == $i13 goto $r36 = new java.lang.StringBuilder 
(assert (= var3308!1 var2900)) ; Cond: i3 == $i13 
(define-const var1139 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1139)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1139!1 String)
(assert (= var1139!1 ""))
(assert true)
;(assert (append/672562846 var1139!1 var536)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var1139!2 String)
(assert (= var1139!2 (str.++ var1139!1 var536)))
(assert true)
(define-const var812 Int (length/-171891354 var1139!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (not (<= var812 0))) ; Negate: Cond: $i5 <= 0  
(assert true)
(define-const var2568 Int (length/-134980193 var2912)) ; Statement: $i4 = virtualinvoke r27.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var2568 0)) ; Cond: $i4 <= 0 
(assert true)
;(assert (append/672562846 var1139!2 var2912)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var1139!3 String)
(assert (= var1139!3 (str.++ var1139!2 var2912)))
(assert true)
(define-const var2910 String (toString/-2075883882 var1139!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1495-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var3788_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1801=r1, var3222=null_type, var1268=i0, var1655=i1, var3005=i2, var3308=i3, var1495=org.apache.poi.ss.util.CellReference, var1934=$r30, var2556=0, var2136=1, var2391=$r31, var3026=$r32, var448=$r33, var3788=org.apache.poi.ss.formula.SheetNameFormatter, var742=r5, var536=r26, var2912=r27, var2434=$i7, var2379=$i9, var323=$i11, var2900=$i13, var1139=$r36, var812=$i5, var2568=$i4, var2910=$r29}
; {r1=var1801, null_type=var3222, i0=var1268, i1=var1655, i2=var3005, i3=var3308, org.apache.poi.ss.util.CellReference=var1495, $r30=var1934, 0=var2556, 1=var2136, $r31=var2391, $r32=var3026, $r33=var448, org.apache.poi.ss.formula.SheetNameFormatter=var3788, r5=var742, r26=var536, r27=var2912, $i7=var2434, $i9=var2379, $i11=var323, $i13=var2900, $r36=var1139, $i5=var812, $i4=var2568, $r29=var2910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i13 = (int) -1;	if i3 == $i13 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$i4 = virtualinvoke r27.<java.lang.String: int length()>();	if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7