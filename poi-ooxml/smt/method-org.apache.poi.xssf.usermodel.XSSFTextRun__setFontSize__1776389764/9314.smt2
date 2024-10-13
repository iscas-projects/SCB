(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1297 0)
(declare-sort var1943 0)
(declare-sort var574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRPr/943492056 (var1297) var1943)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var574-init () var574)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var574 String) void)
(declare-const null-var1297 var1297)
(declare-const null-Float64 Float64)
(declare-const var2900 var1297) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFTextRun 
(assert (not (= var2900 null-var1297)))
(declare-const var1179 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var1179 null-Float64)))
(assert true)
(define-const var3297 var1943 (getRPr/943492056 var2900)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFTextRun: org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties getRPr()>() 
(define-const var1736 Int (ite (fp.gt var1179 ((_ to_fp 11 53) #xbff0000000000000)) 1 (ite (fp.lt var1179 ((_ to_fp 11 53) #xbff0000000000000)) (- 1) 0))) ; Statement: $b0 = d0 cmpl -1.0 
 ; Statement: if $b0 != 0 goto $b1 = d0 cmpg 1.0 
(assert (not (= var1736 0))) ; Cond: $b0 != 0 
(define-const var1060 Int (ite (fp.gt var1179 ((_ to_fp 11 53) #x3ff0000000000000)) 1 (ite (fp.lt var1179 ((_ to_fp 11 53) #x3ff0000000000000)) (- 1) 0))) ; Statement: $b1 = d0 cmpg 1.0 
(define-const var294 Int (cast-from-Int-to-Int var1060)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 >= 0 goto $d1 = 100.0 * d0 
(assert (not (>= var294 0))) ; Negate: Cond: $i3 >= 0  
(define-const var53 var574 var574-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var147 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var147)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var147!1 String)
(assert (= var147!1 ""))
(assert true)
(define-const var2492 String (append/672562846 var147!1 "Minimum font size is 1pt but was ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Minimum font size is 1pt but was ") 
(declare-const var147!2 String)
(assert (= var147!2 (str.++ var147!1 "Minimum font size is 1pt but was ")))
(assert true)
(define-const var792 String (append/33611274 var2492 var1179)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var2492!1 String)
(assert (str.prefixof var2492 var2492!1))
(assert true)
(define-const var427 String (toString/-2075883882 var792)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var53 var427)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var53!1 var574)
(declare-const var427!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getRPr/943492056=([org.apache.poi.xssf.usermodel.XSSFTextRun], org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties), cast-from-Int-to-Int=([byte], int), var574-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1297=org.apache.poi.xssf.usermodel.XSSFTextRun, var2900=r0, var1179=d0, var1943=org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties, var3297=r1, var1736=$b0, var1060=$b1, var294=$i3, var574=java.lang.IllegalArgumentException, var53=$r8, var147=$r7, var2492=$r4, var792=$r5, var427=$r6}
; {org.apache.poi.xssf.usermodel.XSSFTextRun=var1297, r0=var2900, d0=var1179, org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties=var1943, r1=var3297, $b0=var1736, $b1=var1060, $i3=var294, java.lang.IllegalArgumentException=var574, $r8=var53, $r7=var147, $r4=var2492, $r5=var792, $r6=var427}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFTextRun;	d0 := @parameter0: double;	r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFTextRun: org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties getRPr()>();	$b0 = d0 cmpl -1.0;	if $b0 != 0 goto $b1 = d0 cmpg 1.0;	$b1 = d0 cmpg 1.0;	$i3 = (int) $b1;	if $i3 >= 0 goto $d1 = 100.0 * d0;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Minimum font size is 1pt but was ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 3