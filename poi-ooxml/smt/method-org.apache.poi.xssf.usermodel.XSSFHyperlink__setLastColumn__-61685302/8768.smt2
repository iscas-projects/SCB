(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1397 0)
(declare-sort var1913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstColumn/-120690960 (var1397) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1913_convertNumToColString/-652442921 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFirstRow/-1763861190 (var1397) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLastRow/-55588494 (var1397) Int)
(declare-fun setCellRange/-197802071 (var1397 String) void)
(declare-const null-var1397 var1397)
(declare-const null-Int Int)
(declare-const var3045 var1397) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink 
(assert (not (= var3045 null-var1397)))
(declare-const var3743 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3743 null-Int)))
(assert true)
(define-const var2704 Int (getFirstColumn/-120690960 var3045)) ; Statement: i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstColumn()>() 
 ; Statement: if i0 >= i5 goto $r1 = new java.lang.StringBuilder 
(assert (>= var3743 var2704)) ; Cond: i0 >= i5 
(define-const var795 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var795)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var795!1 String)
(assert (= var795!1 ""))
(define-const var1363 String (var1913_convertNumToColString/-652442921 var2704)) ; Statement: $r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i5) 
(assert true)
(define-const var1382 String (append/672562846 var795!1 var1363)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var795!2 String)
(assert (= var795!2 (str.++ var795!1 var1363)))
(assert true)
(define-const var1940 Int (getFirstRow/-1763861190 var3045)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstRow()>() 
(define-const var1904 Int (+ var1940 1)) ; Statement: $i2 = $i1 + 1 
(assert true)
(define-const var3758 String (append/-1001720160 var1382 var1904)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1382!1 String)
(assert (str.prefixof var1382 var1382!1))
(assert true)
(define-const var486 String (toString/-2075883882 var3758)) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3584 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3584)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3584!1 String)
(assert (= var3584!1 ""))
(define-const var1730 String (var1913_convertNumToColString/-652442921 var3743)) ; Statement: $r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i0) 
(assert true)
(define-const var2554 String (append/672562846 var3584!1 var1730)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3584!2 String)
(assert (= var3584!2 (str.++ var3584!1 var1730)))
(assert true)
(define-const var3075 Int (getLastRow/-55588494 var3045)) ; Statement: $i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastRow()>() 
(define-const var438 Int (+ var3075 1)) ; Statement: $i4 = $i3 + 1 
(assert true)
(define-const var709 String (append/-1001720160 var2554 var438)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2554!1 String)
(assert (str.prefixof var2554 var2554!1))
(assert true)
(define-const var606 String (toString/-2075883882 var709)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3826 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3826)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3826!1 String)
(assert (= var3826!1 ""))
(assert true)
(define-const var0 String (append/672562846 var3826!1 var486)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3826!2 String)
(assert (= var3826!2 (str.++ var3826!1 var486)))
(assert true)
(define-const var1068 String (append/672562846 var0 ":")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var0!1 String)
(assert (= var0!1 (str.++ var0 ":")))
(assert true)
(define-const var2320 String (append/672562846 var1068 var606)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1068!1 String)
(assert (= var1068!1 (str.++ var1068 var606)))
(assert true)
(define-const var3173 String (toString/-2075883882 var2320)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setCellRange/-197802071 var3045 var3173)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13) 

(declare-const var3045!1 var1397)
(declare-const var3173!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstColumn/-120690960=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1913_convertNumToColString/-652442921=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFirstRow/-1763861190=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLastRow/-55588494=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), setCellRange/-197802071=([org.apache.poi.xssf.usermodel.XSSFHyperlink, java.lang.String], void)}
; {var1397=org.apache.poi.xssf.usermodel.XSSFHyperlink, var3045=r0, var3743=i0, var2704=i5, var795=$r1, var1913=org.apache.poi.ss.util.CellReference, var1363=$r2, var1382=$r3, var1940=$i1, var1904=$i2, var3758=$r4, var486=$r14, var3584=$r5, var1730=$r6, var2554=$r7, var3075=$i3, var438=$i4, var709=$r8, var606=$r15, var3826=$r9, var0=$r10, var1068=$r11, var2320=$r12, var3173=$r13}
; {org.apache.poi.xssf.usermodel.XSSFHyperlink=var1397, r0=var3045, i0=var3743, i5=var2704, $r1=var795, org.apache.poi.ss.util.CellReference=var1913, $r2=var1363, $r3=var1382, $i1=var1940, $i2=var1904, $r4=var3758, $r14=var486, $r5=var3584, $r6=var1730, $r7=var2554, $i3=var3075, $i4=var438, $r8=var709, $r15=var606, $r9=var3826, $r10=var0, $r11=var1068, $r12=var2320, $r13=var3173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink;	i0 := @parameter0: int;	i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstColumn()>();	if i0 >= i5 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i5);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstRow()>();	$i2 = $i1 + 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastRow()>();	$i4 = $i3 + 1;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13);	return
;block_num 2