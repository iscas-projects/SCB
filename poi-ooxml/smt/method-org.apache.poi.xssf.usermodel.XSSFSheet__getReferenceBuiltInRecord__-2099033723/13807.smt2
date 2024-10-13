(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2142 0)
(declare-sort var2265 0)
(declare-sort var600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2265-init () var2265)
(declare-fun <init>/-949075851 (var2265 String Int Int Bool Bool) void)
(declare-fun var600_format/1746937582 (String) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getCellRefParts/105673054 (var2265) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1913 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1913 null-String)))
(declare-const var1065 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1065 null-Int)))
(declare-const var3573 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3573 null-Int)))
(declare-const var733 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var733 null-Int)))
(declare-const var2673 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var2673 null-Int)))
(define-const var943 var2265 var2265-init) ; Statement: $r30 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var943 var1913 0 var1065 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1) 

(declare-const var943!1 var2265)
(declare-const var1913!1 String)
(declare-const var3878 Int)
(declare-const var1065!1 Int)
(declare-const var240 Int)
(declare-const var240!1 Int)
(define-const var3339 var2265 var2265-init) ; Statement: $r31 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3339 var1913!1 0 var3573 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1) 

(declare-const var3339!1 var2265)
(declare-const var1913!2 String)
(declare-const var3878!1 Int)
(declare-const var3573!1 Int)
(declare-const var240!2 Int)
(declare-const var240!3 Int)
(define-const var3879 var2265 var2265-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var3879 var1913!2 var733 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1) 

(declare-const var3879!1 var2265)
(declare-const var1913!3 String)
(declare-const var733!1 Int)
(declare-const var3878!2 Int)
(declare-const var240!4 Int)
(declare-const var240!5 Int)
(define-const var1835 var2265 var2265-init) ; Statement: $r33 = new org.apache.poi.ss.util.CellReference 
(assert true)
;(assert (<init>/-949075851 var1835 var1913!3 var2673 0 (ite (= 1 1) true false) (ite (= 1 1) true false))) ; Statement: specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1) 

(declare-const var1835!1 var2265)
(declare-const var1913!4 String)
(declare-const var2673!1 Int)
(declare-const var3878!3 Int)
(declare-const var240!6 Int)
(declare-const var240!7 Int)
(define-const var1637 String (var600_format/1746937582 var1913!4)) ; Statement: r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1) 
(define-const var623 String "") ; Statement: r26 = "" 
(define-const var270 String "") ; Statement: r27 = "" 
(define-const var949 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (not (= var1065!1 var949)))) ; Negate: Cond: i0 != $i7  
(define-const var1285 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i1 == $i9 goto $i11 = (int) -1 
(assert (= var3573!1 var1285)) ; Cond: i1 == $i9 
(define-const var1670 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(assert (not (= var733!1 var1670))) ; Cond: i2 != $i11 
(assert true)
(define-const var78 (Array Int String) (getCellRefParts/105673054 var3879!1)) ; Statement: $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3357 String (select var78 1)) ; Statement: $r22 = $r14[1] 
(assert true)
(define-const var2870 (Array Int String) (getCellRefParts/105673054 var1835!1)) ; Statement: $r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>() 
(define-const var3394 String (select var2870 1)) ; Statement: $r23 = $r15[1] 
(assert true)
(define-const var1703 Bool (= var3357 "0")) ; Statement: $z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 != 0 goto $r36 = new java.lang.StringBuilder 
(assert (not (= (ite var1703 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2576 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2576)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2576!1 String)
(assert (= var2576!1 ""))
(assert true)
;(assert (append/672562846 var2576!1 var623)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26) 
(declare-const var2576!2 String)
(assert (= var2576!2 (str.++ var2576!1 var623)))
(assert true)
(define-const var2621 Int (length/-171891354 var2576!2)) ; Statement: $i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (not (<= var2621 0))) ; Negate: Cond: $i5 <= 0  
(assert true)
(define-const var1294 Int (length/-134980193 var270)) ; Statement: $i4 = virtualinvoke r27.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(assert (<= var1294 0)) ; Cond: $i4 <= 0 
(assert true)
;(assert (append/672562846 var2576!2 var270)) ; Statement: virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27) 
(declare-const var2576!3 String)
(assert (= var2576!3 (str.++ var2576!2 var270)))
(assert true)
(define-const var2008 String (toString/-2075883882 var2576!3)) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var2265-init=([], org.apache.poi.ss.util.CellReference), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), var600_format/1746937582=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), getCellRefParts/105673054=([org.apache.poi.ss.util.CellReference], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1913=r1, var2142=null_type, var1065=i0, var3573=i1, var733=i2, var2673=i3, var2265=org.apache.poi.ss.util.CellReference, var943=$r30, var3878=0, var240=1, var3339=$r31, var3879=$r32, var1835=$r33, var600=org.apache.poi.ss.formula.SheetNameFormatter, var1637=r5, var623=r26, var270=r27, var949=$i7, var1285=$i9, var1670=$i11, var78=$r14, var3357=$r22, var2870=$r15, var3394=$r23, var1703=$z0, var2576=$r36, var2621=$i5, var1294=$i4, var2008=$r29}
; {r1=var1913, null_type=var2142, i0=var1065, i1=var3573, i2=var733, i3=var2673, org.apache.poi.ss.util.CellReference=var2265, $r30=var943, 0=var3878, 1=var240, $r31=var3339, $r32=var3879, $r33=var1835, org.apache.poi.ss.formula.SheetNameFormatter=var600, r5=var1637, r26=var623, r27=var270, $i7=var949, $i9=var1285, $i11=var1670, $r14=var78, $r22=var3357, $r15=var2870, $r23=var3394, $z0=var1703, $r36=var2576, $i5=var2621, $i4=var1294, $r29=var2008}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i2 := @parameter3: int;	i3 := @parameter4: int;	$r30 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r30.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i0, 1, 1);	$r31 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r31.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, 0, i1, 1, 1);	$r32 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i2, 0, 1, 1);	$r33 = new org.apache.poi.ss.util.CellReference;	specialinvoke $r33.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>(r1, i3, 0, 1, 1);	r5 = staticinvoke <org.apache.poi.ss.formula.SheetNameFormatter: java.lang.String format(java.lang.String)>(r1);	r26 = "";	r27 = "";	$i7 = (int) -1;	if i0 != $i7 goto $r6 = virtualinvoke $r30.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$i9 = (int) -1;	if i1 == $i9 goto $i11 = (int) -1;	$i11 = (int) -1;	if i2 != $i11 goto $r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r14 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r22 = $r14[1];	$r15 = virtualinvoke $r33.<org.apache.poi.ss.util.CellReference: java.lang.String[] getCellRefParts()>();	$r23 = $r15[1];	$z0 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 != 0 goto $r36 = new java.lang.StringBuilder;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r26);	$i5 = virtualinvoke $r36.<java.lang.StringBuilder: int length()>();	if $i5 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$i4 = virtualinvoke r27.<java.lang.String: int length()>();	if $i4 <= 0 goto virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r27);	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 7