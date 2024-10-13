(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2735 0)
(declare-sort var3726 0)
(declare-sort var3690 0)
(declare-sort var2274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRow/322202787 (var2735 Int) var3726)
(declare-fun var3690_getOutlineLevel/1805630710 (var3690) Int)
(declare-fun cast-from-var3726-to-var3690 (var3726) var3690)
(declare-fun var2274-init () var2274)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2274 String) void)
(declare-const null-var2735 var2735)
(declare-const null-Int Int)
(declare-const var1195 var2735) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFSheet 
(assert (not (= var1195 null-var2735)))
(declare-const var1464 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1464 null-Int)))
(assert true)
(define-const var1505 var3726 (getRow/322202787 var1195 var1464)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.streaming.SXSSFRow getRow(int)>(i0) 
(define-const var617 Int (var3690_getOutlineLevel/1805630710 (cast-from-var3726-to-var3690 var1505))) ; Statement: i1 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Row: int getOutlineLevel()>() 
 ; Statement: if i1 != 0 goto i5 = i0 
(assert (not (not (= var617 0)))) ; Negate: Cond: i1 != 0  
(define-const var67 var2274 var2274-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var1316 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1316)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1316!1 String)
(assert (= var1316!1 ""))
(assert true)
(define-const var3856 String (append/672562846 var1316!1 "Outline level is zero for the row (")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Outline level is zero for the row (") 
(declare-const var1316!2 String)
(assert (= var1316!2 (str.++ var1316!1 "Outline level is zero for the row (")))
(assert true)
(define-const var2003 String (append/-1001720160 var3856 var1464)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3856!1 String)
(assert (str.prefixof var3856 var3856!1))
(assert true)
(define-const var1135 String (append/672562846 var2003 ").")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").") 
(declare-const var2003!1 String)
(assert (= var2003!1 (str.++ var2003 ").")))
(assert true)
(define-const var1830 String (toString/-2075883882 var1135)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var67 var1830)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var67!1 var2274)
(declare-const var1830!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getRow/322202787=([org.apache.poi.xssf.streaming.SXSSFSheet, int], org.apache.poi.xssf.streaming.SXSSFRow), var3690_getOutlineLevel/1805630710=([org.apache.poi.ss.usermodel.Row], int), cast-from-var3726-to-var3690=([org.apache.poi.xssf.streaming.SXSSFRow], org.apache.poi.ss.usermodel.Row), var2274-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2735=org.apache.poi.xssf.streaming.SXSSFSheet, var1195=r0, var1464=i0, var3726=org.apache.poi.xssf.streaming.SXSSFRow, var1505=r1, var3690=org.apache.poi.ss.usermodel.Row, var617=i1, var2274=java.lang.IllegalArgumentException, var67=$r11, var1316=$r10, var3856=$r6, var2003=$r7, var1135=$r8, var1830=$r9}
; {org.apache.poi.xssf.streaming.SXSSFSheet=var2735, r0=var1195, i0=var1464, org.apache.poi.xssf.streaming.SXSSFRow=var3726, r1=var1505, org.apache.poi.ss.usermodel.Row=var3690, i1=var617, java.lang.IllegalArgumentException=var2274, $r11=var67, $r10=var1316, $r6=var3856, $r7=var2003, $r8=var1135, $r9=var1830}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFSheet;	i0 := @parameter0: int;	r1 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.streaming.SXSSFRow getRow(int)>(i0);	i1 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Row: int getOutlineLevel()>();	if i1 != 0 goto i5 = i0;	$r11 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Outline level is zero for the row (");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(").");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r11
;block_num 2