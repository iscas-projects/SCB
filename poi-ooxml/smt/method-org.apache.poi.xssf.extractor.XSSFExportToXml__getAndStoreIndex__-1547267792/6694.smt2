(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2390 0)
(declare-sort var611 0)
(declare-sort var2505 0)
(declare-sort var2756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun indexMap/-1865755670 (var2390) var2505)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun getOrDefault/-2059137514 (var2505 var2756 var2756) var2756)
(declare-fun cast-from-String-to-var2756 (String) var2756)
(declare-fun cast-from-Int-to-var2756 (Int) var2756)
(declare-fun cast-from-var2756-to-Int (var2756) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-var2390 var2390)
(declare-const null-String String)
(declare-const var2044 var2390) ; Statement: r7 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml 
(assert (not (= var2044 null-var2390)))
(declare-const var2160 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2160 null-String)))
(declare-const var665 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var665 null-String)))
(define-const var3359 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3359)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3359!1 String)
(assert (= var3359!1 ""))
(assert true)
(define-const var1202 String (append/672562846 var3359!1 var2160)) ; Statement: $r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3359!2 String)
(assert (= var3359!2 (str.++ var3359!1 var2160)))
(assert true)
(define-const var2671 String (append/672562846 var1202 "/")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1202!1 String)
(assert (= var1202!1 (str.++ var1202 "/")))
(assert true)
(define-const var2413 String (append/672562846 var2671 var665)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2671!1 String)
(assert (= var2671!1 (str.++ var2671 var665)))
(assert true)
(define-const var3762 String (toString/-2075883882 var2413)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var431 var2505 (indexMap/-1865755670 var2044)) ; Statement: $r8 = r7.<org.apache.poi.xssf.extractor.XSSFExportToXml: java.util.HashMap indexMap> 
(define-const var1888 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(define-const var2080 Int (Int_valueOf/-1371140006 var1888)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(assert true)
(define-const var516 var2756 (getOrDefault/-2059137514 var431 (cast-from-String-to-var2756 var3762) (cast-from-Int-to-var2756 var2080))) ; Statement: $r10 = virtualinvoke $r8.<java.util.HashMap: java.lang.Object getOrDefault(java.lang.Object,java.lang.Object)>(r6, $r9) 
(define-const var636 Int (cast-from-var2756-to-Int var516)) ; Statement: $r11 = (java.lang.Integer) $r10 
(assert true)
(define-const var2479 Int (intValue/-1815674922 var636)) ; Statement: $i0 = virtualinvoke $r11.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), indexMap/-1865755670=([org.apache.poi.xssf.extractor.XSSFExportToXml], java.util.HashMap), cast-from-Int-to-Int=([int], int), Int_valueOf/-1371140006=([int], java.lang.Integer), getOrDefault/-2059137514=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2756=([java.lang.String], java.lang.Object), cast-from-Int-to-var2756=([java.lang.Integer], java.lang.Object), cast-from-var2756-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var2390=org.apache.poi.xssf.extractor.XSSFExportToXml, var2044=r7, var2160=r1, var611=null_type, var665=r3, var3359=$r12, var1202=$r2, var2671=$r4, var2413=$r5, var3762=r6, var2505=java.util.HashMap, var431=$r8, var1888=$i2, var2080=$r9, var2756=java.lang.Object, var516=$r10, var636=$r11, var2479=$i0}
; {org.apache.poi.xssf.extractor.XSSFExportToXml=var2390, r7=var2044, r1=var2160, null_type=var611, r3=var665, $r12=var3359, $r2=var1202, $r4=var2671, $r5=var2413, r6=var3762, java.util.HashMap=var2505, $r8=var431, $i2=var1888, $r9=var2080, java.lang.Object=var2756, $r10=var516, $r11=var636, $i0=var2479}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.poi.xssf.extractor.XSSFExportToXml;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r7.<org.apache.poi.xssf.extractor.XSSFExportToXml: java.util.HashMap indexMap>;	$i2 = (int) -1;	$r9 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r10 = virtualinvoke $r8.<java.util.HashMap: java.lang.Object getOrDefault(java.lang.Object,java.lang.Object)>(r6, $r9);	$r11 = (java.lang.Integer) $r10;	$i0 = virtualinvoke $r11.<java.lang.Integer: int intValue()>();	return $i0
;block_num 1