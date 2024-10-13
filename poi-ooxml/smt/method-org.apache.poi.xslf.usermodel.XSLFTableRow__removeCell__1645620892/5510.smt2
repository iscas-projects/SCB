(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3256 0)
(declare-sort var1046 0)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _row/1667328528 (var3256) var1046)
(declare-fun var1046_sizeOfTcArray/-481887812 (var1046) Int)
(declare-fun var3422-init () var3422)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3422 String) void)
(declare-const null-var3256 var3256)
(declare-const null-Int Int)
(declare-const var1297 var3256) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTableRow 
(assert (not (= var1297 null-var3256)))
(declare-const var1061 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1061 null-Int)))
(define-const var3374 var1046 (_row/1667328528 var1297)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row> 
(define-const var1247 Int (var1046_sizeOfTcArray/-481887812 var3374)) ; Statement: $i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: int sizeOfTcArray()>() 
 ; Statement: if $i1 >= i0 goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row> 
(assert (not (>= var1247 var1061))) ; Negate: Cond: $i1 >= i0  
(define-const var2196 var3422 var3422-init) ; Statement: $r5 = new java.lang.IndexOutOfBoundsException 
(define-const var3229 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3229)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3229!1 String)
(assert (= var3229!1 ""))
(assert true)
(define-const var2513 String (append/672562846 var3229!1 "Cannot remove cell at ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot remove cell at ") 
(declare-const var3229!2 String)
(assert (= var3229!2 (str.++ var3229!1 "Cannot remove cell at ")))
(assert true)
(define-const var2273 String (append/-1001720160 var2513 var1061)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2513!1 String)
(assert (str.prefixof var2513 var2513!1))
(assert true)
(define-const var2364 String (append/672562846 var2273 "; row has only ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; row has only ") 
(declare-const var2273!1 String)
(assert (= var2273!1 (str.++ var2273 "; row has only ")))
(define-const var1673 var1046 (_row/1667328528 var1297)) ; Statement: $r9 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row> 
(define-const var1568 Int (var1046_sizeOfTcArray/-481887812 var1673)) ; Statement: $i2 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: int sizeOfTcArray()>() 
(assert true)
(define-const var3948 String (append/-1001720160 var2364 var1568)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2364!1 String)
(assert (str.prefixof var2364 var2364!1))
(assert true)
(define-const var2744 String (append/672562846 var3948 "columns.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columns.") 
(declare-const var3948!1 String)
(assert (= var3948!1 (str.++ var3948 "columns.")))
(assert true)
(define-const var80 String (toString/-2075883882 var2744)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2196 var80)) ; Statement: specialinvoke $r5.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r13) 

(declare-const var2196!1 var3422)
(declare-const var80!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {_row/1667328528=([org.apache.poi.xslf.usermodel.XSLFTableRow], org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow), var1046_sizeOfTcArray/-481887812=([org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow], int), var3422-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3256=org.apache.poi.xslf.usermodel.XSLFTableRow, var1297=r0, var1061=i0, var1046=org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow, var3374=$r1, var1247=$i1, var3422=java.lang.IndexOutOfBoundsException, var2196=$r5, var3229=$r6, var2513=$r7, var2273=$r8, var2364=$r10, var1673=$r9, var1568=$i2, var3948=$r11, var2744=$r12, var80=$r13}
; {org.apache.poi.xslf.usermodel.XSLFTableRow=var3256, r0=var1297, i0=var1061, org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow=var1046, $r1=var3374, $i1=var1247, java.lang.IndexOutOfBoundsException=var3422, $r5=var2196, $r6=var3229, $r7=var2513, $r8=var2273, $r10=var2364, $r9=var1673, $i2=var1568, $r11=var3948, $r12=var2744, $r13=var80}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTableRow;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row>;	$i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: int sizeOfTcArray()>();	if $i1 >= i0 goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row>;	$r5 = new java.lang.IndexOutOfBoundsException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot remove cell at ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; row has only ");	$r9 = r0.<org.apache.poi.xslf.usermodel.XSLFTableRow: org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow _row>;	$i2 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.main.CTTableRow: int sizeOfTcArray()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columns.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2