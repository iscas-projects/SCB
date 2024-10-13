(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3923 0)
(declare-sort var3567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSheetIndex/33662570 (var3923 String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3923 var3923)
(declare-const null-String String)
(declare-const var81 var3923) ; Statement: r7 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var81 null-var3923)))
(declare-const var842 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var842 null-String)))
(define-const var3987 Int 2) ; Statement: i9 = 2 
(define-const var2075 String var842) ; Statement: r17 = r0 
(assert true)
(define-const var2598 Int (lastIndexOf/-1292097097 var842 40)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(40) 
 ; Statement: if i0 <= 0 goto $i11 = i9 
(assert (<= var2598 0)) ; Cond: i0 <= 0 
(define-const var3095 Int var3987) ; Statement: $i11 = i9 
(define-const var3987!1 Int (+ var3987 1)) ; Statement: i9 = i9 + 1 
(define-const var1882 String (Int_toString/1350422511 var3095)) ; Statement: $r19 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i11) 
(assert true)
(define-const var77 Int (length/-134980193 var2075)) ; Statement: $i12 = virtualinvoke r17.<java.lang.String: int length()>() 
(assert true)
(define-const var3509 Int (length/-134980193 var1882)) ; Statement: $i13 = virtualinvoke $r19.<java.lang.String: int length()>() 
(define-const var3647 Int (+ var77 var3509)) ; Statement: $i14 = $i12 + $i13 
(define-const var664 Int (+ var3647 2)) ; Statement: $i15 = $i14 + 2 
 ; Statement: if $i15 >= 31 goto $r22 = new java.lang.StringBuilder 
(assert (>= var664 31)) ; Cond: $i15 >= 31 
(define-const var1182 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1182)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1182!1 String)
(assert (= var1182!1 ""))
(assert true)
(define-const var390 Int (length/-134980193 var1882)) ; Statement: $i1 = virtualinvoke $r19.<java.lang.String: int length()>() 
(define-const var788 Int (- 31 var390)) ; Statement: $i2 = 31 - $i1 
(define-const var1914 Int (- var788 2)) ; Statement: $i3 = $i2 - 2 
(assert (not (and true (and (>= 0 0) (>= (str.len var2075) var1914) (>= var1914 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), Int_toString/1350422511=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSheetIndex/33662570=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3923=org.apache.poi.xssf.usermodel.XSSFWorkbook, var81=r7, var842=r0, var3567=null_type, var3987=i9, var2075=r17, var2598=i0, var3095=$i11, var1882=$r19, var77=$i12, var3509=$i13, var3647=$i14, var664=$i15, var1182=$r22, var390=$i1, var788=$i2, var1914=$i3, var123=$r2, var2094=$r3, var2322=$r4, var359=$r5, var2636=$r6, var1324=r20, var3619=$i4, var1127=$i17}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var3923, r7=var81, r0=var842, null_type=var3567, i9=var3987, r17=var2075, i0=var2598, $i11=var3095, $r19=var1882, $i12=var77, $i13=var3509, $i14=var3647, $i15=var664, $r22=var1182, $i1=var390, $i2=var788, $i3=var1914, $r2=var123, $r3=var2094, $r4=var2322, $r5=var359, $r6=var2636, r20=var1324, $i4=var3619, $i17=var1127}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r0 := @parameter0: java.lang.String;	i9 = 2;	r17 = r0;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(40);	if i0 <= 0 goto $i11 = i9;	$i11 = i9;	i9 = i9 + 1;	$r19 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i11);	$i12 = virtualinvoke r17.<java.lang.String: int length()>();	$i13 = virtualinvoke $r19.<java.lang.String: int length()>();	$i14 = $i12 + $i13;	$i15 = $i14 + 2;	if $i15 >= 31 goto $r22 = new java.lang.StringBuilder;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$i1 = virtualinvoke $r19.<java.lang.String: int length()>();	$i2 = 31 - $i1;	$i3 = $i2 - 2;	$r2 = virtualinvoke r17.<java.lang.String: java.lang.String substring(int,int)>(0, $i3);	$r3 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r20 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$i4 = virtualinvoke r7.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(java.lang.String)>(r20);	$i17 = (int) -1;	if $i4 != $i17 goto (branch);	return r20
;block_num 5