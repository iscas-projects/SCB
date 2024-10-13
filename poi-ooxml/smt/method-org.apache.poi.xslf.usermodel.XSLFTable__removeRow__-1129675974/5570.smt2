(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3554 0)
(declare-sort var164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumberOfRows/1773522355 (var3554) Int)
(declare-fun var164-init () var164)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var164 String) void)
(declare-const null-var3554 var3554)
(declare-const null-Int Int)
(declare-const var146 var3554) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable 
(assert (not (= var146 null-var3554)))
(declare-const var1137 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1137 null-Int)))
(assert true)
(define-const var3581 Int (getNumberOfRows/1773522355 var146)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>() 
 ; Statement: if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table> 
(assert (not (>= var3581 var1137))) ; Negate: Cond: $i1 >= i0  
(define-const var390 var164 var164-init) ; Statement: $r3 = new java.lang.IndexOutOfBoundsException 
(define-const var1510 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1510)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1510!1 String)
(assert (= var1510!1 ""))
(assert true)
(define-const var3530 String (append/672562846 var1510!1 "Cannot remove row at ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot remove row at ") 
(declare-const var1510!2 String)
(assert (= var1510!2 (str.++ var1510!1 "Cannot remove row at ")))
(assert true)
(define-const var742 String (append/-1001720160 var3530 var1137)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3530!1 String)
(assert (str.prefixof var3530 var3530!1))
(assert true)
(define-const var526 String (append/672562846 var742 "; table has only ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ") 
(declare-const var742!1 String)
(assert (= var742!1 (str.++ var742 "; table has only ")))
(assert true)
(define-const var110 Int (getNumberOfRows/1773522355 var146)) ; Statement: $i2 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>() 
(assert true)
(define-const var2291 String (append/-1001720160 var526 var110)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var526!1 String)
(assert (str.prefixof var526 var526!1))
(assert true)
(define-const var1653 String (append/672562846 var2291 "rows.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rows.") 
(declare-const var2291!1 String)
(assert (= var2291!1 (str.++ var2291 "rows.")))
(assert true)
(define-const var2584 String (toString/-2075883882 var1653)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var390 var2584)) ; Statement: specialinvoke $r3.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r10) 

(declare-const var390!1 var164)
(declare-const var2584!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumberOfRows/1773522355=([org.apache.poi.xslf.usermodel.XSLFTable], int), var164-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3554=org.apache.poi.xslf.usermodel.XSLFTable, var146=r0, var1137=i0, var3581=$i1, var164=java.lang.IndexOutOfBoundsException, var390=$r3, var1510=$r4, var3530=$r5, var742=$r6, var526=$r7, var110=$i2, var2291=$r8, var1653=$r9, var2584=$r10}
; {org.apache.poi.xslf.usermodel.XSLFTable=var3554, r0=var146, i0=var1137, $i1=var3581, java.lang.IndexOutOfBoundsException=var164, $r3=var390, $r4=var1510, $r5=var3530, $r6=var742, $r7=var526, $i2=var110, $r8=var2291, $r9=var1653, $r10=var2584}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>();	if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table>;	$r3 = new java.lang.IndexOutOfBoundsException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot remove row at ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ");	$i2 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfRows()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rows.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2