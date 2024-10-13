(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1126 0)
(declare-sort var3358 0)
(declare-sort var1874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sheets/-433134786 (var1126) var3358)
(declare-fun var3358_size/-959786421 (var3358) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1874-init () var1874)
(declare-fun <init>/875830710 (var1874 String) void)
(declare-const null-var1126 var1126)
(declare-const null-Int Int)
(declare-const var3468 var1126) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var3468 null-var1126)))
(declare-const var2660 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var2660 null-Int)))
(define-const var949 var3358 (sheets/-433134786 var3468)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets> 
(define-const var877 Int (var3358_size/-959786421 var949)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var2847 Int (- var877 1)) ; Statement: i1 = $i0 - 1 
 ; Statement: if i2 < 0 goto $r14 = new java.lang.StringBuilder 
(assert (< var2660 0)) ; Cond: i2 < 0 
(define-const var2295 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2295)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2295!1 String)
(assert (= var2295!1 ""))
(assert true)
(define-const var3 String (append/672562846 var2295!1 "(0..")) ; Statement: $r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(0..") 
(declare-const var2295!2 String)
(assert (= var2295!2 (str.++ var2295!1 "(0..")))
(assert true)
(define-const var1928 String (append/-1001720160 var3 var2847)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3!1 String)
(assert (str.prefixof var3 var3!1))
(assert true)
(define-const var945 String (append/672562846 var1928 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1928!1 String)
(assert (= var1928!1 (str.++ var1928 ")")))
(assert true)
(define-const var1533 String (toString/-2075883882 var945)) ; Statement: r13 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3675 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 != $i4 goto $r16 = new java.lang.IllegalArgumentException 
(assert (not (= var2847 var3675))) ; Cond: i1 != $i4 
(define-const var1074 var1874 var1874-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var2239 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2239)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2239!1 String)
(assert (= var2239!1 ""))
(assert true)
(define-const var1934 String (append/672562846 var2239!1 "Sheet index (")) ; Statement: $r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet index (") 
(declare-const var2239!2 String)
(assert (= var2239!2 (str.++ var2239!1 "Sheet index (")))
(assert true)
(define-const var1222 String (append/-1001720160 var1934 var2660)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1934!1 String)
(assert (str.prefixof var1934 var1934!1))
(assert true)
(define-const var396 String (append/672562846 var1222 ") is out of range ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is out of range ") 
(declare-const var1222!1 String)
(assert (= var1222!1 (str.++ var1222 ") is out of range ")))
(assert true)
(define-const var537 String (append/672562846 var396 var1533)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13) 
(declare-const var396!1 String)
(assert (= var396!1 (str.++ var396 var1533)))
(assert true)
(define-const var3757 String (toString/-2075883882 var537)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1074 var3757)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1074!1 var1874)
(declare-const var3757!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {sheets/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List), var3358_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-Int-to-Int=([int], int), var1874-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1126=org.apache.poi.xssf.usermodel.XSSFWorkbook, var3468=r0, var2660=i2, var3358=java.util.List, var949=$r1, var877=$i0, var2847=i1, var2295=$r14, var3=$r3, var1928=$r4, var945=$r5, var1533=r13, var3675=$i4, var1874=java.lang.IllegalArgumentException, var1074=$r16, var2239=$r15, var1934=$r8, var1222=$r9, var396=$r10, var537=$r11, var3757=$r12}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var1126, r0=var3468, i2=var2660, java.util.List=var3358, $r1=var949, $i0=var877, i1=var2847, $r14=var2295, $r3=var3, $r4=var1928, $r5=var945, r13=var1533, $i4=var3675, java.lang.IllegalArgumentException=var1874, $r16=var1074, $r15=var2239, $r8=var1934, $r9=var1222, $r10=var396, $r11=var537, $r12=var3757}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	i2 := @parameter0: int;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	i1 = $i0 - 1;	if i2 < 0 goto $r14 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(0..");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r13 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$i4 = (int) -1;	if i1 != $i4 goto $r16 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sheet index (");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") is out of range ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r13);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r16
;block_num 3