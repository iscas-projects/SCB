(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRowNum/1704846828 (var3695) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setRowNum/-740950274 (var3695 Int) void)
(declare-fun iterator/929392829 (var3695) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3695 var3695)
(declare-const null-Int Int)
(declare-const var2627 var3695) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRow 
(assert (not (= var2627 null-var3695)))
(declare-const var1291 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1291 null-Int)))
(assert true)
(define-const var2518 Int (getRowNum/1704846828 var2627)) ; Statement: i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: int getRowNum()>() 
(define-const var3505 Int (+ var2518 var1291)) ; Statement: i2 = i0 + i1 
(define-const var2624 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2624)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2624!1 String)
(assert (= var2624!1 ""))
(assert true)
(define-const var3740 String (append/672562846 var2624!1 "Row[rownum=")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Row[rownum=") 
(declare-const var2624!2 String)
(assert (= var2624!2 (str.++ var2624!1 "Row[rownum=")))
(assert true)
(define-const var3391 String (append/-1001720160 var3740 var2518)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3740!1 String)
(assert (str.prefixof var3740 var3740!1))
(assert true)
(define-const var3552 String (append/672562846 var3391 "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] contains cell(s) included in a multi-cell array formula. You cannot change part of an array.") 
(declare-const var3391!1 String)
(assert (= var3391!1 (str.++ var3391 "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array.")))
(assert true)
(define-const var3232 String (toString/-2075883882 var3552)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setRowNum/-740950274 var2627 var3505)) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: void setRowNum(int)>(i2) 

(declare-const var2627!1 var3695)
(declare-const var3505!1 Int)
(assert true)
(define-const var3683 Iterator (iterator/929392829 var2627!1)) ; Statement: r6 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2429 Bool (Iterator_hasNext/-1669924200 var3683)) ; Statement: $z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2429 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getRowNum/1704846828=([org.apache.poi.xssf.usermodel.XSSFRow], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setRowNum/-740950274=([org.apache.poi.xssf.usermodel.XSSFRow, int], void), iterator/929392829=([org.apache.poi.xssf.usermodel.XSSFRow], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3695=org.apache.poi.xssf.usermodel.XSSFRow, var2627=r0, var1291=i1, var2518=i0, var3505=i2, var2624=$r1, var3740=$r2, var3391=$r3, var3552=$r4, var3232=r5, var3683=r6, var2429=$z0}
; {org.apache.poi.xssf.usermodel.XSSFRow=var3695, r0=var2627, i1=var1291, i0=var2518, i2=var3505, $r1=var2624, $r2=var3740, $r3=var3391, $r4=var3552, r5=var3232, r6=var3683, $z0=var2429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRow;	i1 := @parameter0: int;	i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: int getRowNum()>();	i2 = i0 + i1;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Row[rownum=");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] contains cell(s) included in a multi-cell array formula. You cannot change part of an array.");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: void setRowNum(int)>(i2);	r6 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRow: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r6.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 3