(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3805 0)
(declare-sort var562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var562-init () var562)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun numOfCells/-351645110 (var3805) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var562 String) void)
(declare-const null-var3805 var3805)
(declare-const null-Int Int)
(declare-const var1930 var3805) ; Statement: r2 := @this: org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$AbstractCellRangeDataSource 
(assert (not (= var1930 null-var3805)))
(declare-const var632 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var632 null-Int)))
 ; Statement: if i0 < 0 goto $r17 = new java.lang.IndexOutOfBoundsException 
(assert (< var632 0)) ; Cond: i0 < 0 
(define-const var2464 var562 var562-init) ; Statement: $r17 = new java.lang.IndexOutOfBoundsException 
(define-const var742 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var742)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var742!1 String)
(assert (= var742!1 ""))
(assert true)
(define-const var2941 String (append/672562846 var742!1 "Index must be between 0 and ")) ; Statement: $r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index must be between 0 and ") 
(declare-const var742!2 String)
(assert (= var742!2 (str.++ var742!1 "Index must be between 0 and ")))
(define-const var3339 Int (numOfCells/-351645110 var1930)) ; Statement: $i1 = r2.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$AbstractCellRangeDataSource: int numOfCells> 
(define-const var3469 Int (- var3339 1)) ; Statement: $i2 = $i1 - 1 
(assert true)
(define-const var908 String (append/-1001720160 var2941 var3469)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2941!1 String)
(assert (str.prefixof var2941 var2941!1))
(assert true)
(define-const var1997 String (append/672562846 var908 " (inclusive), given: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (inclusive), given: ") 
(declare-const var908!1 String)
(assert (= var908!1 (str.++ var908 " (inclusive), given: ")))
(assert true)
(define-const var2050 String (append/-1001720160 var1997 var632)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1997!1 String)
(assert (str.prefixof var1997 var1997!1))
(assert true)
(define-const var3102 String (toString/-2075883882 var2050)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var2464 var3102)) ; Statement: specialinvoke $r17.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7) 

(declare-const var2464!1 var562)
(declare-const var3102!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var562-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), numOfCells/-351645110=([org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$AbstractCellRangeDataSource], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var3805=org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$AbstractCellRangeDataSource, var1930=r2, var632=i0, var562=java.lang.IndexOutOfBoundsException, var2464=$r17, var742=$r16, var2941=$r3, var3339=$i1, var3469=$i2, var908=$r4, var1997=$r5, var2050=$r6, var3102=$r7}
; {org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$AbstractCellRangeDataSource=var3805, r2=var1930, i0=var632, java.lang.IndexOutOfBoundsException=var562, $r17=var2464, $r16=var742, $r3=var2941, $i1=var3339, $i2=var3469, $r4=var908, $r5=var1997, $r6=var2050, $r7=var3102}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$AbstractCellRangeDataSource;	i0 := @parameter0: int;	if i0 < 0 goto $r17 = new java.lang.IndexOutOfBoundsException;	$r17 = new java.lang.IndexOutOfBoundsException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index must be between 0 and ");	$i1 = r2.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$AbstractCellRangeDataSource: int numOfCells>;	$i2 = $i1 - 1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (inclusive), given: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r7);	throw $r17
;block_num 2