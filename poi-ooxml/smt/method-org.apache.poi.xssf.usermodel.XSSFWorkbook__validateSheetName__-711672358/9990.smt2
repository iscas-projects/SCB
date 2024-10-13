(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3108 0)
(declare-sort var727 0)
(declare-sort var786 0)
(declare-sort var2715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sheets/-433134786 (var3108) var786)
(declare-fun var786_size/-959786421 (var786) Int)
(declare-fun containsSheet/1643140381 (var3108 String Int) Bool)
(declare-fun var2715-init () var2715)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2715 String) void)
(declare-const null-var3108 var3108)
(declare-const null-String String)
(declare-const var2616 var3108) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var2616 null-var3108)))
(declare-const var1243 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1243 null-String)))
(define-const var2900 var786 (sheets/-433134786 var2616)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets> 
(define-const var2161 Int (var786_size/-959786421 var2900)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(assert true)
(define-const var3654 Bool (containsSheet/1643140381 var2616 var1243 var2161)) ; Statement: $z0 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: boolean containsSheet(java.lang.String,int)>(r1, $i0) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3654 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2845 var2715 var2715-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var746 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var746)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var746!1 String)
(assert (= var746!1 ""))
(assert true)
(define-const var81 String (append/672562846 var746!1 "The workbook already contains a sheet named \u0027")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The workbook already contains a sheet named \'") 
(declare-const var746!2 String)
(assert (= var746!2 (str.++ var746!1 "The workbook already contains a sheet named \u0027")))
(assert true)
(define-const var1129 String (append/672562846 var81 var1243)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var81!1 String)
(assert (= var81!1 (str.++ var81 var1243)))
(assert true)
(define-const var1969 String (append/672562846 var1129 "\u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1129!1 String)
(assert (= var1129!1 (str.++ var1129 "\u0027")))
(assert true)
(define-const var796 String (toString/-2075883882 var1969)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2845 var796)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2845!1 var2715)
(declare-const var796!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {sheets/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], java.util.List), var786_size/-959786421=([java.util.List], int), containsSheet/1643140381=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], boolean), var2715-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3108=org.apache.poi.xssf.usermodel.XSSFWorkbook, var2616=r0, var1243=r1, var727=null_type, var786=java.util.List, var2900=$r2, var2161=$i0, var3654=$z0, var2715=java.lang.IllegalArgumentException, var2845=$r3, var746=$r4, var81=$r5, var1129=$r6, var1969=$r7, var796=$r8}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var3108, r0=var2616, r1=var1243, null_type=var727, java.util.List=var786, $r2=var2900, $i0=var2161, $z0=var3654, java.lang.IllegalArgumentException=var2715, $r3=var2845, $r4=var746, $r5=var81, $r6=var1129, $r7=var1969, $r8=var796}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: java.util.List sheets>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	$z0 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: boolean containsSheet(java.lang.String,int)>(r1, $i0);	if $z0 == 0 goto return;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The workbook already contains a sheet named \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2