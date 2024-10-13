(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var753 0)
(declare-sort var2593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastRow/-55588494 (var753) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFirstColumn/-120690960 (var753) Int)
(declare-fun var2593_convertNumToColString/-652442921 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLastColumn/-36294728 (var753) Int)
(declare-fun setCellRange/-197802071 (var753 String) void)
(declare-const null-var753 var753)
(declare-const null-Int Int)
(declare-const var808 var753) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink 
(assert (not (= var808 null-var753)))
(declare-const var1660 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1660 null-Int)))
(assert true)
(define-const var2275 Int (getLastRow/-55588494 var808)) ; Statement: i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastRow()>() 
 ; Statement: if i0 <= i5 goto $r1 = new java.lang.StringBuilder 
(assert (<= var1660 var2275)) ; Cond: i0 <= i5 
(define-const var615 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var615)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var615!1 String)
(assert (= var615!1 ""))
(assert true)
(define-const var3890 Int (getFirstColumn/-120690960 var808)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstColumn()>() 
(define-const var498 String (var2593_convertNumToColString/-652442921 var3890)) ; Statement: $r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i1) 
(assert true)
(define-const var91 String (append/672562846 var615!1 var498)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var615!2 String)
(assert (= var615!2 (str.++ var615!1 var498)))
(define-const var1737 Int (+ var1660 1)) ; Statement: $i2 = i0 + 1 
(assert true)
(define-const var1092 String (append/-1001720160 var91 var1737)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var91!1 String)
(assert (str.prefixof var91 var91!1))
(assert true)
(define-const var724 String (toString/-2075883882 var1092)) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2269 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2269)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2269!1 String)
(assert (= var2269!1 ""))
(assert true)
(define-const var3851 Int (getLastColumn/-36294728 var808)) ; Statement: $i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastColumn()>() 
(define-const var281 String (var2593_convertNumToColString/-652442921 var3851)) ; Statement: $r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i3) 
(assert true)
(define-const var3830 String (append/672562846 var2269!1 var281)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2269!2 String)
(assert (= var2269!2 (str.++ var2269!1 var281)))
(define-const var3457 Int (+ var2275 1)) ; Statement: $i4 = i5 + 1 
(assert true)
(define-const var853 String (append/-1001720160 var3830 var3457)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var3830!1 String)
(assert (str.prefixof var3830 var3830!1))
(assert true)
(define-const var1051 String (toString/-2075883882 var853)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1550 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1550)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1550!1 String)
(assert (= var1550!1 ""))
(assert true)
(define-const var1544 String (append/672562846 var1550!1 var724)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1550!2 String)
(assert (= var1550!2 (str.++ var1550!1 var724)))
(assert true)
(define-const var3594 String (append/672562846 var1544 ":")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1544!1 String)
(assert (= var1544!1 (str.++ var1544 ":")))
(assert true)
(define-const var2137 String (append/672562846 var3594 var1051)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3594!1 String)
(assert (= var3594!1 (str.++ var3594 var1051)))
(assert true)
(define-const var1873 String (toString/-2075883882 var2137)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setCellRange/-197802071 var808 var1873)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13) 

(declare-const var808!1 var753)
(declare-const var1873!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastRow/-55588494=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFirstColumn/-120690960=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), var2593_convertNumToColString/-652442921=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLastColumn/-36294728=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), setCellRange/-197802071=([org.apache.poi.xssf.usermodel.XSSFHyperlink, java.lang.String], void)}
; {var753=org.apache.poi.xssf.usermodel.XSSFHyperlink, var808=r0, var1660=i0, var2275=i5, var615=$r1, var3890=$i1, var2593=org.apache.poi.ss.util.CellReference, var498=$r2, var91=$r3, var1737=$i2, var1092=$r4, var724=$r14, var2269=$r5, var3851=$i3, var281=$r6, var3830=$r7, var3457=$i4, var853=$r8, var1051=$r15, var1550=$r9, var1544=$r10, var3594=$r11, var2137=$r12, var1873=$r13}
; {org.apache.poi.xssf.usermodel.XSSFHyperlink=var753, r0=var808, i0=var1660, i5=var2275, $r1=var615, $i1=var3890, org.apache.poi.ss.util.CellReference=var2593, $r2=var498, $r3=var91, $i2=var1737, $r4=var1092, $r14=var724, $r5=var2269, $i3=var3851, $r6=var281, $r7=var3830, $i4=var3457, $r8=var853, $r15=var1051, $r9=var1550, $r10=var1544, $r11=var3594, $r12=var2137, $r13=var1873}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink;	i0 := @parameter0: int;	i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastRow()>();	if i0 <= i5 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstColumn()>();	$r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i1);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i2 = i0 + 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastColumn()>();	$r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i4 = i5 + 1;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13);	return
;block_num 2