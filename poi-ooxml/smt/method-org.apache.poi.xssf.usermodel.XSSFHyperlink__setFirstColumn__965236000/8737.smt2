(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var550 0)
(declare-sort var826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastColumn/-36294728 (var550) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var826_convertNumToColString/-652442921 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFirstRow/-1763861190 (var550) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLastRow/-55588494 (var550) Int)
(declare-fun setCellRange/-197802071 (var550 String) void)
(declare-const null-var550 var550)
(declare-const null-Int Int)
(declare-const var3386 var550) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink 
(assert (not (= var3386 null-var550)))
(declare-const var3446 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3446 null-Int)))
(assert true)
(define-const var3703 Int (getLastColumn/-36294728 var3386)) ; Statement: i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastColumn()>() 
 ; Statement: if i0 <= i5 goto $r1 = new java.lang.StringBuilder 
(assert (<= var3446 var3703)) ; Cond: i0 <= i5 
(define-const var3360 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3360)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3360!1 String)
(assert (= var3360!1 ""))
(define-const var3201 String (var826_convertNumToColString/-652442921 var3446)) ; Statement: $r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i0) 
(assert true)
(define-const var234 String (append/672562846 var3360!1 var3201)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3360!2 String)
(assert (= var3360!2 (str.++ var3360!1 var3201)))
(assert true)
(define-const var2554 Int (getFirstRow/-1763861190 var3386)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstRow()>() 
(define-const var1289 Int (+ var2554 1)) ; Statement: $i2 = $i1 + 1 
(assert true)
(define-const var1841 String (append/-1001720160 var234 var1289)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var234!1 String)
(assert (str.prefixof var234 var234!1))
(assert true)
(define-const var2468 String (toString/-2075883882 var1841)) ; Statement: $r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2993 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2993)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2993!1 String)
(assert (= var2993!1 ""))
(define-const var3345 String (var826_convertNumToColString/-652442921 var3703)) ; Statement: $r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i5) 
(assert true)
(define-const var2975 String (append/672562846 var2993!1 var3345)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2993!2 String)
(assert (= var2993!2 (str.++ var2993!1 var3345)))
(assert true)
(define-const var219 Int (getLastRow/-55588494 var3386)) ; Statement: $i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastRow()>() 
(define-const var3564 Int (+ var219 1)) ; Statement: $i4 = $i3 + 1 
(assert true)
(define-const var1332 String (append/-1001720160 var2975 var3564)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2975!1 String)
(assert (str.prefixof var2975 var2975!1))
(assert true)
(define-const var1044 String (toString/-2075883882 var1332)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var30 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var30)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var30!1 String)
(assert (= var30!1 ""))
(assert true)
(define-const var193 String (append/672562846 var30!1 var2468)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var30!2 String)
(assert (= var30!2 (str.++ var30!1 var2468)))
(assert true)
(define-const var2813 String (append/672562846 var193 ":")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var193!1 String)
(assert (= var193!1 (str.++ var193 ":")))
(assert true)
(define-const var973 String (append/672562846 var2813 var1044)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2813!1 String)
(assert (= var2813!1 (str.++ var2813 var1044)))
(assert true)
(define-const var3125 String (toString/-2075883882 var973)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setCellRange/-197802071 var3386 var3125)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13) 

(declare-const var3386!1 var550)
(declare-const var3125!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastColumn/-36294728=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var826_convertNumToColString/-652442921=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFirstRow/-1763861190=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLastRow/-55588494=([org.apache.poi.xssf.usermodel.XSSFHyperlink], int), setCellRange/-197802071=([org.apache.poi.xssf.usermodel.XSSFHyperlink, java.lang.String], void)}
; {var550=org.apache.poi.xssf.usermodel.XSSFHyperlink, var3386=r0, var3446=i0, var3703=i5, var3360=$r1, var826=org.apache.poi.ss.util.CellReference, var3201=$r2, var234=$r3, var2554=$i1, var1289=$i2, var1841=$r4, var2468=$r14, var2993=$r5, var3345=$r6, var2975=$r7, var219=$i3, var3564=$i4, var1332=$r8, var1044=$r15, var30=$r9, var193=$r10, var2813=$r11, var973=$r12, var3125=$r13}
; {org.apache.poi.xssf.usermodel.XSSFHyperlink=var550, r0=var3386, i0=var3446, i5=var3703, $r1=var3360, org.apache.poi.ss.util.CellReference=var826, $r2=var3201, $r3=var234, $i1=var2554, $i2=var1289, $r4=var1841, $r14=var2468, $r5=var2993, $r6=var3345, $r7=var2975, $i3=var219, $i4=var3564, $r8=var1332, $r15=var1044, $r9=var30, $r10=var193, $r11=var2813, $r12=var973, $r13=var3125}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFHyperlink;	i0 := @parameter0: int;	i5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastColumn()>();	if i0 <= i5 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i0);	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$i1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getFirstRow()>();	$i2 = $i1 + 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r14 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <org.apache.poi.ss.util.CellReference: java.lang.String convertNumToColString(int)>(i5);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$i3 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: int getLastRow()>();	$i4 = $i3 + 1;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFHyperlink: void setCellRange(java.lang.String)>($r13);	return
;block_num 2