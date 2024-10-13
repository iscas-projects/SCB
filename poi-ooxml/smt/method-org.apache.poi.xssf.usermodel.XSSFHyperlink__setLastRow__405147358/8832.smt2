(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2689 0)
(declare-sort var3300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstRow/-1763861190 (var2689) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFirstColumn/-120690960 (var2689) Int)
(declare-fun var3300_convertNumToColString/-652442921 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLastColumn/-36294728 (var2689) Int)
(declare-fun setCellRange/-197802071 (var2689 String) void)
(declare-const null-var2689 var2689)
(declare-const null-Int Int)
(declare-const var589 var2689) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink 
(assert (not (= var589 null-var2689)))
(declare-const var1991 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1991 null-Int)))
(assert true)
(define-const var836 Int (getFirstRow/-1763861190 var589)) ; Statement: i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstRow()>() 
 ; Statement: if i0 >= i5 goto $r1 = new java.lang.StringBuilder 
(assert (>= var1991 var836)) ; Cond: i0 >= i5 
(define-const var1864 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1864)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1864!1 String)
(assert (= var1864!1 ""))
(assert true)
(define-const var2952 Int (getFirstColumn/-120690960 var589)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstColumn()>() 
(define-const var2634 String (var3300_convertNumToColString/-652442921 var2952)) ; Statement: $r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i1) 
(assert true)
(define-const var2161 String (append/672562846 var1864!1 var2634)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1864!2 String)
(assert (= var1864!2 (str.++ var1864!1 var2634)))
(define-const var3712 Int (+ var836 1)) ; Statement: $i2 = i5 + 1 
(assert true)
(define-const var1617 String (append/-1001720160 var2161 var3712)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2161!1 String)
(assert (str.prefixof var2161 var2161!1))
(assert true)
(define-const var2162 String (toString/-2075883882 var1617)) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1513 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1513)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1513!1 String)
(assert (= var1513!1 ""))
(assert true)
(define-const var2139 Int (getLastColumn/-36294728 var589)) ; Statement: $i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastColumn()>() 
(define-const var1938 String (var3300_convertNumToColString/-652442921 var2139)) ; Statement: $r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i3) 
(assert true)
(define-const var1610 String (append/672562846 var1513!1 var1938)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1513!2 String)
(assert (= var1513!2 (str.++ var1513!1 var1938)))
(define-const var3975 Int (+ var1991 1)) ; Statement: $i4 = i0 + 1 
(assert true)
(define-const var682 String (append/-1001720160 var1610 var3975)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1610!1 String)
(assert (str.prefixof var1610 var1610!1))
(assert true)
(define-const var215 String (toString/-2075883882 var682)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var680 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var680)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var680!1 String)
(assert (= var680!1 ""))
(assert true)
(define-const var2331 String (append/672562846 var680!1 var2162)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var680!2 String)
(assert (= var680!2 (str.++ var680!1 var2162)))
(assert true)
(define-const var625 String (append/672562846 var2331 ":")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2331!1 String)
(assert (= var2331!1 (str.++ var2331 ":")))
(assert true)
(define-const var2297 String (append/672562846 var625 var215)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var625!1 String)
(assert (= var625!1 (str.++ var625 var215)))
(assert true)
(define-const var2785 String (toString/-2075883882 var2297)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setCellRange/-197802071 var589 var2785)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13) 

(declare-const var589!1 var2689)
(declare-const var2785!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstRow/-1763861190=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFirstColumn/-120690960=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), var3300_convertNumToColString/-652442921=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLastColumn/-36294728=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), setCellRange/-197802071=([org.apache.poi.xssf.usermodel.XSSFHyperlink, java.lang.String], void)}
; {var2689=org.apache.poi.xssf.usermodel.XSSFHyperlink, var589=r0, var1991=i0, var836=i5, var1864=$r1, var2952=$i1, var3300=org.apache.poi.ss.util.CellReference, var2634=$r2, var2161=$r3, var3712=$i2, var1617=$r4, var2162=$r14, var1513=$r5, var2139=$i3, var1938=$r6, var1610=$r7, var3975=$i4, var682=$r8, var215=$r15, var680=$r9, var2331=$r10, var625=$r11, var2297=$r12, var2785=$r13}
; {org.apache.poi.xssf.usermodel.XSSFHyperlink=var2689, r0=var589, i0=var1991, i5=var836, $r1=var1864, $i1=var2952, org.apache.poi.ss.util.CellReference=var3300, $r2=var2634, $r3=var2161, $i2=var3712, $r4=var1617, $r14=var2162, $r5=var1513, $i3=var2139, $r6=var1938, $r7=var1610, $i4=var3975, $r8=var682, $r15=var215, $r9=var680, $r10=var2331, $r11=var625, $r12=var2297, $r13=var2785}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink;	i0 := @parameter0: int;	i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstRow()>();	if i0 >= i5 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstColumn()>();	$r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i1);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i2 = i5 + 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastColumn()>();	$r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>($i3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i4 = i0 + 1;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13);	return
;block_num 2