(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2277 0)
(declare-sort var1330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumberOfRows/1773522355 (var2277) Int)
(declare-fun var1330-init () var1330)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var1330 String) void)
(declare-const null-var2277 var2277)
(declare-const null-Int Int)
(declare-const var156 var2277) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable 
(assert (not (= var156 null-var2277)))
(declare-const var3244 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3244 null-Int)))
(assert true)
(define-const var2957 Int (getNumberOfRows/1773522355 var156)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>() 
 ; Statement: if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table> 
(assert (not (>= var2957 var3244))) ; Negate: Cond: $i1 >= i0  
(define-const var331 var1330 var1330-init) ; Statement: $r5 = new java.lang.IndexOutOfBoundsException 
(define-const var1281 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1281)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1281!1 String)
(assert (= var1281!1 ""))
(assert true)
(define-const var3741 String (append/672562846 var1281!1 "Cannot insert row at ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert row at ") 
(declare-const var1281!2 String)
(assert (= var1281!2 (str.++ var1281!1 "Cannot insert row at ")))
(assert true)
(define-const var2295 String (append/-1001720160 var3741 var3244)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3741!1 String)
(assert (str.prefixof var3741 var3741!1))
(assert true)
(define-const var932 String (append/672562846 var2295 "; table has only ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ") 
(declare-const var2295!1 String)
(assert (= var2295!1 (str.++ var2295 "; table has only ")))
(assert true)
(define-const var505 Int (getNumberOfRows/1773522355 var156)) ; Statement: $i3 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>() 
(assert true)
(define-const var3434 String (append/-1001720160 var932 var505)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var932!1 String)
(assert (str.prefixof var932 var932!1))
(assert true)
(define-const var2695 String (append/672562846 var3434 "rows.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rows.") 
(declare-const var3434!1 String)
(assert (= var3434!1 (str.++ var3434 "rows.")))
(assert true)
(define-const var1357 String (toString/-2075883882 var2695)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var331 var1357)) ; Statement: specialinvoke $r5.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r12) 

(declare-const var331!1 var1330)
(declare-const var1357!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumberOfRows/1773522355=([org.apache.poi.xslf.usermodel.XSLFTable], int), var1330-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var2277=org.apache.poi.xslf.usermodel.XSLFTable, var156=r0, var3244=i0, var2957=$i1, var1330=java.lang.IndexOutOfBoundsException, var331=$r5, var1281=$r6, var3741=$r7, var2295=$r8, var932=$r9, var505=$i3, var3434=$r10, var2695=$r11, var1357=$r12}
; {org.apache.poi.xslf.usermodel.XSLFTable=var2277, r0=var156, i0=var3244, $i1=var2957, java.lang.IndexOutOfBoundsException=var1330, $r5=var331, $r6=var1281, $r7=var3741, $r8=var2295, $r9=var932, $i3=var505, $r10=var3434, $r11=var2695, $r12=var1357}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>();	if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table>;	$r5 = new java.lang.IndexOutOfBoundsException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert row at ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ");	$i3 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rows.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 2