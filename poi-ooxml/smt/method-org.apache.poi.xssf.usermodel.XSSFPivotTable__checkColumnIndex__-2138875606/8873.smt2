(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3636 0)
(declare-sort var3567 0)
(declare-sort var1592 0)
(declare-sort var2884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPivotArea/-185497284 (var3636) var3567)
(declare-fun getLastCell/226227030 (var3567) var1592)
(declare-fun getCol/1474631132 (var1592) Int)
(declare-fun getFirstCell/1646459898 (var3567) var1592)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2884-init () var2884)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2884 String) void)
(declare-const null-var3636 var3636)
(declare-const null-Int Int)
(declare-const var1680 var3636) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFPivotTable 
(assert (not (= var1680 null-var3636)))
(declare-const var2586 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var2586 null-Int)))
(assert true)
(define-const var1198 var3567 (getPivotArea/-185497284 var1680)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.apache.poi.ss.util.AreaReference getPivotArea()>() 
(assert true)
(define-const var952 var1592 (getLastCell/226227030 var1198)) ; Statement: $r2 = virtualinvoke r1.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getLastCell()>() 
(assert true)
(define-const var20 Int (getCol/1474631132 var952)) ; Statement: $s1 = virtualinvoke $r2.<org.apache.poi.ss.util.CellReference: short getCol()>() 
(assert true)
(define-const var3696 var1592 (getFirstCell/1646459898 var1198)) ; Statement: $r3 = virtualinvoke r1.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>() 
(assert true)
(define-const var1582 Int (getCol/1474631132 var3696)) ; Statement: $s0 = virtualinvoke $r3.<org.apache.poi.ss.util.CellReference: short getCol()>() 
(define-const var1264 Int (cast-from-Int-to-Int var20)) ; Statement: $i5 = (int) $s1 
(define-const var1096 Int (cast-from-Int-to-Int var1582)) ; Statement: $i6 = (int) $s0 
(define-const var1383 Int (- var1264 var1096)) ; Statement: $i2 = $i5 - $i6 
(define-const var1670 Int (+ var1383 1)) ; Statement: i3 = $i2 + 1 
 ; Statement: if i4 < 0 goto $r12 = new java.lang.IndexOutOfBoundsException 
(assert (< var2586 0)) ; Cond: i4 < 0 
(define-const var1340 var2884 var2884-init) ; Statement: $r12 = new java.lang.IndexOutOfBoundsException 
(define-const var437 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var437)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var437!1 String)
(assert (= var437!1 ""))
(assert true)
(define-const var201 String (append/672562846 var437!1 "Column Index: ")) ; Statement: $r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Column Index: ") 
(declare-const var437!2 String)
(assert (= var437!2 (str.++ var437!1 "Column Index: ")))
(assert true)
(define-const var3326 String (append/-1001720160 var201 var2586)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var201!1 String)
(assert (str.prefixof var201 var201!1))
(assert true)
(define-const var3831 String (append/672562846 var3326 ", Size: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size: ") 
(declare-const var3326!1 String)
(assert (= var3326!1 (str.++ var3326 ", Size: ")))
(assert true)
(define-const var1618 String (append/-1001720160 var3831 var1670)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3831!1 String)
(assert (str.prefixof var3831 var3831!1))
(assert true)
(define-const var3339 String (toString/-2075883882 var1618)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var1340 var3339)) ; Statement: specialinvoke $r12.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r10) 

(declare-const var1340!1 var2884)
(declare-const var3339!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getPivotArea/-185497284=([org.apache.poi.xssf.usermodel.XSSFPivotTable], org.apache.poi.ss.util.AreaReference), getLastCell/226227030=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), getCol/1474631132=([org.apache.poi.ss.util.CellReference], short), getFirstCell/1646459898=([org.apache.poi.ss.util.AreaReference], org.apache.poi.ss.util.CellReference), cast-from-Int-to-Int=([short], int), var2884-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3636=org.apache.poi.xssf.usermodel.XSSFPivotTable, var1680=r0, var2586=i4, var3567=org.apache.poi.ss.util.AreaReference, var1198=r1, var1592=org.apache.poi.ss.util.CellReference, var952=$r2, var20=$s1, var3696=$r3, var1582=$s0, var1264=$i5, var1096=$i6, var1383=$i2, var1670=i3, var2884=java.lang.IndexOutOfBoundsException, var1340=$r12, var437=$r11, var201=$r6, var3326=$r7, var3831=$r8, var1618=$r9, var3339=$r10}
; {org.apache.poi.xssf.usermodel.XSSFPivotTable=var3636, r0=var1680, i4=var2586, org.apache.poi.ss.util.AreaReference=var3567, r1=var1198, org.apache.poi.ss.util.CellReference=var1592, $r2=var952, $s1=var20, $r3=var3696, $s0=var1582, $i5=var1264, $i6=var1096, $i2=var1383, i3=var1670, java.lang.IndexOutOfBoundsException=var2884, $r12=var1340, $r11=var437, $r6=var201, $r7=var3326, $r8=var3831, $r9=var1618, $r10=var3339}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFPivotTable;	i4 := @parameter0: int;	r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFPivotTable: org.apache.poi.ss.util.AreaReference getPivotArea()>();	$r2 = virtualinvoke r1.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getLastCell()>();	$s1 = virtualinvoke $r2.<org.apache.poi.ss.util.CellReference: short getCol()>();	$r3 = virtualinvoke r1.<org.apache.poi.ss.util.AreaReference: org.apache.poi.ss.util.CellReference getFirstCell()>();	$s0 = virtualinvoke $r3.<org.apache.poi.ss.util.CellReference: short getCol()>();	$i5 = (int) $s1;	$i6 = (int) $s0;	$i2 = $i5 - $i6;	i3 = $i2 + 1;	if i4 < 0 goto $r12 = new java.lang.IndexOutOfBoundsException;	$r12 = new java.lang.IndexOutOfBoundsException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Column Index: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", Size: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r10);	throw $r12
;block_num 2