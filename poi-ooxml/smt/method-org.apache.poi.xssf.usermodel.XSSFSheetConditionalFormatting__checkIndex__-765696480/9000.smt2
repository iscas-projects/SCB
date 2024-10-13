(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var2190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumConditionalFormattings/14027170 (var3389) Int)
(declare-fun var2190-init () var2190)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2190 String) void)
(declare-const null-var3389 var3389)
(declare-const null-Int Int)
(declare-const var2946 var3389) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting 
(assert (not (= var2946 null-var3389)))
(declare-const var878 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var878 null-Int)))
(assert true)
(define-const var1687 Int (getNumConditionalFormattings/14027170 var2946)) ; Statement: i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting: int getNumConditionalFormattings()>() 
 ; Statement: if i1 < 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (< var878 0)) ; Cond: i1 < 0 
(define-const var1293 var2190 var2190-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var2699 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2699)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2699!1 String)
(assert (= var2699!1 ""))
(assert true)
(define-const var1657 String (append/672562846 var2699!1 "Specified CF index ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified CF index ") 
(declare-const var2699!2 String)
(assert (= var2699!2 (str.++ var2699!1 "Specified CF index ")))
(assert true)
(define-const var1910 String (append/-1001720160 var1657 var878)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1657!1 String)
(assert (str.prefixof var1657 var1657!1))
(assert true)
(define-const var2835 String (append/672562846 var1910 " is outside the allowable range (0..")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is outside the allowable range (0..") 
(declare-const var1910!1 String)
(assert (= var1910!1 (str.++ var1910 " is outside the allowable range (0..")))
(define-const var44 Int (- var1687 1)) ; Statement: $i2 = i0 - 1 
(assert true)
(define-const var2936 String (append/-1001720160 var2835 var44)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2835!1 String)
(assert (str.prefixof var2835 var2835!1))
(assert true)
(define-const var3162 String (append/672562846 var2936 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2936!1 String)
(assert (= var2936!1 (str.++ var2936 ")")))
(assert true)
(define-const var1245 String (toString/-2075883882 var3162)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1293 var1245)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1293!1 var2190)
(declare-const var1245!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumConditionalFormattings/14027170=([org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting], int), var2190-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3389=org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting, var2946=r0, var878=i1, var1687=i0, var2190=java.lang.IllegalArgumentException, var1293=$r1, var2699=$r2, var1657=$r3, var1910=$r4, var2835=$r5, var44=$i2, var2936=$r6, var3162=$r7, var1245=$r8}
; {org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting=var3389, r0=var2946, i1=var878, i0=var1687, java.lang.IllegalArgumentException=var2190, $r1=var1293, $r2=var2699, $r3=var1657, $r4=var1910, $r5=var2835, $i2=var44, $r6=var2936, $r7=var3162, $r8=var1245}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting;	i1 := @parameter0: int;	i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting: int getNumConditionalFormattings()>();	if i1 < 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Specified CF index ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is outside the allowable range (0..");	$i2 = i0 - 1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2