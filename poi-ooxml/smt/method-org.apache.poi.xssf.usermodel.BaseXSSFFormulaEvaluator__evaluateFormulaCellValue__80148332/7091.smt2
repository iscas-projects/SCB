(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2703 0)
(declare-sort var1581 0)
(declare-sort var383 0)
(declare-sort var1103 0)
(declare-sort var3188 0)
(declare-sort var1549 0)
(declare-sort var3359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var383!class ClassObject)
(declare-fun getClass/1258963082 (var1103) ClassObject)
(declare-fun cast-from-var383-to-var1103 (var383) var1103)
(declare-fun var383-init () var383)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3188-init () var3188)
(declare-fun var1581_getSheet/292787143 (var1581) var1549)
(declare-fun var1549_getSheetName/1433762611 (var1549) String)
(declare-fun var1581_getRowIndex/1992794440 (var1581) Int)
(declare-fun var1581_getColumnIndex/1650865118 (var1581) Int)
(declare-fun <init>/-949075851 (var3188 String Int Int Bool Bool) void)
(declare-fun formatAsString/2015852151 (var3188 Bool) String)
(declare-fun append/-1031950772 (String var1103) String)
(declare-fun cast-from-var1581-to-var1103 (var1581) var1103)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var383 String var3359) void)
(declare-fun cast-from-var383-to-var3359 (var383) var3359)
(declare-const null-var2703 var2703)
(declare-const null-var1581 var1581)
(declare-const null-var383 var383)
(declare-const var3735 var2703) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator 
(assert (not (= var3735 null-var2703)))
(declare-const var617 var1581) ; Statement: r1 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var617 null-var1581)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3378 var383) ; Statement: $r28 := @caughtexception 
(assert (not (= var3378 null-var383)))
(assert true)
(define-const var213 ClassObject (getClass/1258963082 (cast-from-var383-to-var1103 var3378))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r29 != class "Ljava/lang/IllegalStateException;" goto throw $r28 
(assert (not (not (= var213 var383!class)))) ; Negate: Cond: $r29 != class "Ljava/lang/IllegalStateException;"  
(define-const var1451 var383 var383-init) ; Statement: $r30 = new java.lang.IllegalStateException 
(define-const var1641 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1641)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1641!1 String)
(assert (= var1641!1 ""))
(assert true)
(define-const var1877 String (append/672562846 var1641!1 "Failed to evaluate cell: ")) ; Statement: $r36 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to evaluate cell: ") 
(declare-const var1641!2 String)
(assert (= var1641!2 (str.++ var1641!1 "Failed to evaluate cell: ")))
(define-const var1286 var3188 var3188-init) ; Statement: $r32 = new org.apache.poi.ss.util.CellReference 
(define-const var483 var1549 (var1581_getSheet/292787143 var617)) ; Statement: $r33 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>() 
(define-const var2103 String (var1549_getSheetName/1433762611 var483)) ; Statement: $r34 = interfaceinvoke $r33.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>() 
(define-const var2776 Int (var1581_getRowIndex/1992794440 var617)) ; Statement: $i4 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Cell: int getRowIndex()>() 
(define-const var3428 Int (var1581_getColumnIndex/1650865118 var617)) ; Statement: $i3 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Cell: int getColumnIndex()>() 
(assert true)
;(assert (<init>/-949075851 var1286 var2103 var2776 var3428 (ite (= 1 0) true false) (ite (= 1 0) true false))) ; Statement: specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>($r34, $i4, $i3, 0, 0) 

(declare-const var1286!1 var3188)
(declare-const var2103!1 String)
(declare-const var2776!1 Int)
(declare-const var3428!1 Int)
(declare-const var494 Int)
(declare-const var494!1 Int)
(assert true)
(define-const var916 String (formatAsString/2015852151 var1286!1 (ite (= 1 1) true false))) ; Statement: $r35 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString(boolean)>(1) 
(assert true)
(define-const var2914 String (append/672562846 var1877 var916)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1877!1 String)
(assert (= var1877!1 (str.++ var1877 var916)))
(assert true)
(define-const var104 String (append/672562846 var2914 ", value: ")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value: ") 
(declare-const var2914!1 String)
(assert (= var2914!1 (str.++ var2914 ", value: ")))
(assert true)
(define-const var2044 String (append/-1031950772 var104 (cast-from-var1581-to-var1103 var617))) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var104!1 String)
(assert (str.prefixof var104 var104!1))
(assert true)
(define-const var1013 String (toString/-2075883882 var2044)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1451 var1013 (cast-from-var383-to-var3359 var3378))) ; Statement: specialinvoke $r30.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r28) 

(declare-const var1451!1 var383)
(declare-const var1013!1 String)
(declare-const var3378!1 var383)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var383-to-var1103=([java.lang.IllegalStateException], java.lang.Object), var383-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3188-init=([], org.apache.poi.ss.util.CellReference), var1581_getSheet/292787143=([org.apache.poi.ss.usermodel.Cell], org.apache.poi.ss.usermodel.Sheet), var1549_getSheetName/1433762611=([org.apache.poi.ss.usermodel.Sheet], java.lang.String), var1581_getRowIndex/1992794440=([org.apache.poi.ss.usermodel.Cell], int), var1581_getColumnIndex/1650865118=([org.apache.poi.ss.usermodel.Cell], int), <init>/-949075851=([org.apache.poi.ss.util.CellReference, java.lang.String, int, int, boolean, boolean], void), formatAsString/2015852151=([org.apache.poi.ss.util.CellReference, boolean], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1581-to-var1103=([org.apache.poi.ss.usermodel.Cell], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void), cast-from-var383-to-var3359=([java.lang.IllegalStateException], java.lang.Throwable)}
; {var2703=org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator, var3735=r0, var1581=org.apache.poi.ss.usermodel.Cell, var617=r1, var383=java.lang.IllegalStateException, var3378=$r28, var1103=java.lang.Object, var213=$r29, var1451=$r30, var1641=$r31, var1877=$r36, var3188=org.apache.poi.ss.util.CellReference, var1286=$r32, var1549=org.apache.poi.ss.usermodel.Sheet, var483=$r33, var2103=$r34, var2776=$i4, var3428=$i3, var494=0, var916=$r35, var2914=$r37, var104=$r38, var2044=$r39, var1013=$r40, var3359=java.lang.Throwable}
; {org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator=var2703, r0=var3735, org.apache.poi.ss.usermodel.Cell=var1581, r1=var617, java.lang.IllegalStateException=var383, $r28=var3378, java.lang.Object=var1103, $r29=var213, $r30=var1451, $r31=var1641, $r36=var1877, org.apache.poi.ss.util.CellReference=var3188, $r32=var1286, org.apache.poi.ss.usermodel.Sheet=var1549, $r33=var483, $r34=var2103, $i4=var2776, $i3=var3428, 0=var494, $r35=var916, $r37=var2914, $r38=var104, $r39=var2044, $r40=var1013, java.lang.Throwable=var3359}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator;	r1 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r28 := @caughtexception;	$r29 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>();	if $r29 != class "Ljava/lang/IllegalStateException;" goto throw $r28;	$r30 = new java.lang.IllegalStateException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to evaluate cell: ");	$r32 = new org.apache.poi.ss.util.CellReference;	$r33 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Cell: org.apache.poi.ss.usermodel.Sheet getSheet()>();	$r34 = interfaceinvoke $r33.<org.apache.poi.ss.usermodel.Sheet: java.lang.String getSheetName()>();	$i4 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Cell: int getRowIndex()>();	$i3 = interfaceinvoke r1.<org.apache.poi.ss.usermodel.Cell: int getColumnIndex()>();	specialinvoke $r32.<org.apache.poi.ss.util.CellReference: void <init>(java.lang.String,int,int,boolean,boolean)>($r34, $i4, $i3, 0, 0);	$r35 = virtualinvoke $r32.<org.apache.poi.ss.util.CellReference: java.lang.String formatAsString(boolean)>(1);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", value: ");	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r40, $r28);	throw $r30
;block_num 3