(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2224 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSheetIndex/33662570 (var2224 String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2224 var2224)
(declare-const null-String String)
(declare-const var2126 var2224) ; Statement: r7 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var2126 null-var2224)))
(declare-const var2674 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2674 null-String)))
(define-const var3886 Int 2) ; Statement: i9 = 2 
(define-const var3638 String var2674) ; Statement: r17 = r0 
(assert true)
(define-const var1710 Int (lastIndexOf/-1292097097 var2674 40)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(40) 
 ; Statement: if i0 <= 0 goto $i11 = i9 
(assert (<= var1710 0)) ; Cond: i0 <= 0 
(define-const var3465 Int var3886) ; Statement: $i11 = i9 
(define-const var3886!1 Int (+ var3886 1)) ; Statement: i9 = i9 + 1 
(define-const var2115 String (Int_toString/1350422511 var3465)) ; Statement: $r19 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i11) 
(assert true)
(define-const var319 Int (length/-134980193 var3638)) ; Statement: $i12 = virtualinvoke r17.<java.lang.String: int length()>() 
(assert true)
(define-const var1259 Int (length/-134980193 var2115)) ; Statement: $i13 = virtualinvoke $r19.<java.lang.String: int length()>() 
(define-const var2573 Int (+ var319 var1259)) ; Statement: $i14 = $i12 + $i13 
(define-const var718 Int (+ var2573 2)) ; Statement: $i15 = $i14 + 2 
 ; Statement: if $i15 >= 31 goto $r22 = new java.lang.StringBuilder 
(assert (not (>= var718 31))) ; Negate: Cond: $i15 >= 31  
(define-const var3298 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3298)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3298!1 String)
(assert (= var3298!1 ""))
(assert true)
(define-const var3052 String (append/672562846 var3298!1 var3638)) ; Statement: $r9 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17) 
(declare-const var3298!2 String)
(assert (= var3298!2 (str.++ var3298!1 var3638)))
(assert true)
(define-const var792 String (append/672562846 var3052 " (")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3052!1 String)
(assert (= var3052!1 (str.++ var3052 " (")))
(assert true)
(define-const var2148 String (append/672562846 var792 var2115)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var792!1 String)
(assert (= var792!1 (str.++ var792 var2115)))
(assert true)
(define-const var1889 String (append/672562846 var2148 ")")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2148!1 String)
(assert (= var2148!1 (str.++ var2148 ")")))
(assert true)
(define-const var1205 String (toString/-2075883882 var1889)) ; Statement: r20 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $i4 = virtualinvoke r7.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(java.lang.String)>(r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var210 Int (getSheetIndex/33662570 var2126 var1205)) ; Statement: $i4 = virtualinvoke r7.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(java.lang.String)>(r20) 
(define-const var1255 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i17 = (int) -1 
 ; Statement: if $i4 != $i17 goto (branch) 
(assert (not (not (= var210 var1255)))) ; Negate: Cond: $i4 != $i17  
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), Int_toString/1350422511=([int], java.lang.String), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSheetIndex/33662570=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2224=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2126=r7, var2674=r0, var3410=null_type, var3886=i9, var3638=r17, var1710=i0, var3465=$i11, var2115=$r19, var319=$i12, var1259=$i13, var2573=$i14, var718=$i15, var3298=$r21, var3052=$r9, var792=$r10, var2148=$r11, var1889=$r12, var1205=r20, var210=$i4, var1255=$i17}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var2224, r7=var2126, r0=var2674, null_type=var3410, i9=var3886, r17=var3638, i0=var1710, $i11=var3465, $r19=var2115, $i12=var319, $i13=var1259, $i14=var2573, $i15=var718, $r21=var3298, $r9=var3052, $r10=var792, $r11=var2148, $r12=var1889, r20=var1205, $i4=var210, $i17=var1255}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r0 := @parameter0: java.lang.String;	i9 = 2;	r17 = r0;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(40);	if i0 <= 0 goto $i11 = i9;	$i11 = i9;	i9 = i9 + 1;	$r19 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i11);	$i12 = virtualinvoke r17.<java.lang.String: int length()>();	$i13 = virtualinvoke $r19.<java.lang.String: int length()>();	$i14 = $i12 + $i13;	$i15 = $i14 + 2;	if $i15 >= 31 goto $r22 = new java.lang.StringBuilder;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r17);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r20 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $i4 = virtualinvoke r7.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(java.lang.String)>(r20)];	$i4 = virtualinvoke r7.<org.apache.poi.xssf.usermodel.XSSFWorkbook: int getSheetIndex(java.lang.String)>(r20);	$i17 = (int) -1;	if $i4 != $i17 goto (branch);	return r20
;block_num 5