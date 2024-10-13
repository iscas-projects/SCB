(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var833 0)
(declare-sort var3500 0)
(declare-sort var146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRow/322202787 (var833 Int) var3500)
(declare-fun var146-init () var146)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var146 String) void)
(declare-const null-var833 var833)
(declare-const null-Int Int)
(declare-const null-var3500 var3500)
(declare-const var3709 var833) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFSheet 
(assert (not (= var3709 null-var833)))
(declare-const var940 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var940 null-Int)))
(assert true)
(define-const var477 var3500 (getRow/322202787 var3709 var940)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.streaming.SXSSFRow getRow(int)>(i0) 
 ; Statement: if r1 != null goto i1 = specialinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int findStartOfRowOutlineGroup(int)>(i0) 
(assert (not (not (= var477 null-var3500)))) ; Negate: Cond: r1 != null  
(define-const var1645 var146 var146-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1306 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1306)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1306!1 String)
(assert (= var1306!1 ""))
(assert true)
(define-const var1057 String (append/672562846 var1306!1 "Invalid row number(")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number(") 
(declare-const var1306!2 String)
(assert (= var1306!2 (str.++ var1306!1 "Invalid row number(")))
(assert true)
(define-const var1147 String (append/-1001720160 var1057 var940)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1057!1 String)
(assert (str.prefixof var1057 var1057!1))
(assert true)
(define-const var2338 String (append/672562846 var1147 "). Row does not exist.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Row does not exist.") 
(declare-const var1147!1 String)
(assert (= var1147!1 (str.++ var1147 "). Row does not exist.")))
(assert true)
(define-const var1730 String (toString/-2075883882 var2338)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1645 var1730)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1645!1 var146)
(declare-const var1730!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getRow/322202787=([org.apache.poi.xssf.streaming.SXSSFSheet, int], org.apache.poi.xssf.streaming.SXSSFRow), var146-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var833=org.apache.poi.xssf.streaming.SXSSFSheet, var3709=r0, var940=i0, var3500=org.apache.poi.xssf.streaming.SXSSFRow, var477=r1, var146=java.lang.IllegalArgumentException, var1645=$r6, var1306=$r7, var1057=$r8, var1147=$r9, var2338=$r10, var1730=$r11}
; {org.apache.poi.xssf.streaming.SXSSFSheet=var833, r0=var3709, i0=var940, org.apache.poi.xssf.streaming.SXSSFRow=var3500, r1=var477, java.lang.IllegalArgumentException=var146, $r6=var1645, $r7=var1306, $r8=var1057, $r9=var1147, $r10=var2338, $r11=var1730}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFSheet;	i0 := @parameter0: int;	r1 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.streaming.SXSSFRow getRow(int)>(i0);	if r1 != null goto i1 = specialinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int findStartOfRowOutlineGroup(int)>(i0);	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid row number(");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Row does not exist.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2