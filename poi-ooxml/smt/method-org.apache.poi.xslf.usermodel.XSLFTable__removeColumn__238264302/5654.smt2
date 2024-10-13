(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var131 0)
(declare-sort var2365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumberOfColumns/-1205746383 (var131) Int)
(declare-fun var2365-init () var2365)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var2365 String) void)
(declare-const null-var131 var131)
(declare-const null-Int Int)
(declare-const var865 var131) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable 
(assert (not (= var865 null-var131)))
(declare-const var2408 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2408 null-Int)))
(assert true)
(define-const var861 Int (getNumberOfColumns/-1205746383 var865)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>() 
 ; Statement: if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table> 
(assert (not (>= var861 var2408))) ; Negate: Cond: $i1 >= i0  
(define-const var3473 var2365 var2365-init) ; Statement: $r7 = new java.lang.IndexOutOfBoundsException 
(define-const var2921 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2921)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2921!1 String)
(assert (= var2921!1 ""))
(assert true)
(define-const var3675 String (append/672562846 var2921!1 "Cannot remove column at ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot remove column at ") 
(declare-const var2921!2 String)
(assert (= var2921!2 (str.++ var2921!1 "Cannot remove column at ")))
(assert true)
(define-const var1830 String (append/-1001720160 var3675 var2408)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3675!1 String)
(assert (str.prefixof var3675 var3675!1))
(assert true)
(define-const var1078 String (append/672562846 var1830 "; table has only ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ") 
(declare-const var1830!1 String)
(assert (= var1830!1 (str.++ var1830 "; table has only ")))
(assert true)
(define-const var601 Int (getNumberOfColumns/-1205746383 var865)) ; Statement: $i2 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>() 
(assert true)
(define-const var2580 String (append/-1001720160 var1078 var601)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1078!1 String)
(assert (str.prefixof var1078 var1078!1))
(assert true)
(define-const var2489 String (append/672562846 var2580 "columns.")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columns.") 
(declare-const var2580!1 String)
(assert (= var2580!1 (str.++ var2580 "columns.")))
(assert true)
(define-const var1076 String (toString/-2075883882 var2489)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var3473 var1076)) ; Statement: specialinvoke $r7.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r14) 

(declare-const var3473!1 var2365)
(declare-const var1076!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumberOfColumns/-1205746383=([org.apache.poi.xslf.usermodel.XSLFTable], int), var2365-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var131=org.apache.poi.xslf.usermodel.XSLFTable, var865=r0, var2408=i0, var861=$i1, var2365=java.lang.IndexOutOfBoundsException, var3473=$r7, var2921=$r8, var3675=$r9, var1830=$r10, var1078=$r11, var601=$i2, var2580=$r12, var2489=$r13, var1076=$r14}
; {org.apache.poi.xslf.usermodel.XSLFTable=var131, r0=var865, i0=var2408, $i1=var861, java.lang.IndexOutOfBoundsException=var2365, $r7=var3473, $r8=var2921, $r9=var3675, $r10=var1830, $r11=var1078, $i2=var601, $r12=var2580, $r13=var2489, $r14=var1076}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFTable;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>();	if $i1 >= i0 goto $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFTable: org.openxmlformats.schemas.drawingml.x2006.main.CTTable _table>;	$r7 = new java.lang.IndexOutOfBoundsException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot remove column at ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; table has only ");	$i2 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFTable: int getNumberOfColumns()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("columns.");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 2