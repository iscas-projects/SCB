(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2376 0)
(declare-sort var1906 0)
(declare-sort var84 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun category/1069855069 (var2376) var1906)
(declare-fun var1906_sizeOfPtArray/10542862 (var1906) Int)
(declare-fun var84-init () var84)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var84 String) void)
(declare-const null-var2376 var2376)
(declare-const null-Int Int)
(declare-const var3154 var2376) ; Statement: r0 := @this: org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1 
(assert (not (= var3154 null-var2376)))
(declare-const var1470 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1470 null-Int)))
(define-const var3478 var1906 (category/1069855069 var3154)) ; Statement: $r1 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category> 
(define-const var42 Int (var1906_sizeOfPtArray/10542862 var3478)) ; Statement: $i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: int sizeOfPtArray()>() 
 ; Statement: if $i1 > i0 goto $r2 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category> 
(assert (not (> var42 var1470))) ; Negate: Cond: $i1 > i0  
(define-const var1205 var84 var84-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var295 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var295)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var295!1 String)
(assert (= var295!1 ""))
(assert true)
(define-const var2563 String (append/672562846 var295!1 "Cannot access 0-based index ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot access 0-based index ") 
(declare-const var295!2 String)
(assert (= var295!2 (str.++ var295!1 "Cannot access 0-based index ")))
(assert true)
(define-const var2981 String (append/-1001720160 var2563 var1470)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2563!1 String)
(assert (str.prefixof var2563 var2563!1))
(assert true)
(define-const var618 String (append/672562846 var2981 " in point-array with ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in point-array with ") 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 " in point-array with ")))
(define-const var3224 var1906 (category/1069855069 var3154)) ; Statement: $r9 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category> 
(define-const var2768 Int (var1906_sizeOfPtArray/10542862 var3224)) ; Statement: $i2 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: int sizeOfPtArray()>() 
(assert true)
(define-const var3119 String (append/-1001720160 var618 var2768)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var618!1 String)
(assert (str.prefixof var618 var618!1))
(assert true)
(define-const var564 String (append/672562846 var3119 " items")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" items") 
(declare-const var3119!1 String)
(assert (= var3119!1 (str.++ var3119 " items")))
(assert true)
(define-const var3320 String (toString/-2075883882 var564)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1205 var3320)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var1205!1 var84)
(declare-const var3320!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {category/1069855069=([org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1], org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData), var1906_sizeOfPtArray/10542862=([org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData], int), var84-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2376=org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1, var3154=r0, var1470=i0, var1906=org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData, var3478=$r1, var42=$i1, var84=java.lang.IllegalArgumentException, var1205=$r5, var295=$r6, var2563=$r7, var2981=$r8, var618=$r10, var3224=$r9, var2768=$i2, var3119=$r11, var564=$r12, var3320=$r13}
; {org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1=var2376, r0=var3154, i0=var1470, org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData=var1906, $r1=var3478, $i1=var42, java.lang.IllegalArgumentException=var84, $r5=var1205, $r6=var295, $r7=var2563, $r8=var2981, $r10=var618, $r9=var3224, $i2=var2768, $r11=var3119, $r12=var564, $r13=var3320}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category>;	$i1 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: int sizeOfPtArray()>();	if $i1 > i0 goto $r2 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category>;	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot access 0-based index ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in point-array with ");	$r9 = r0.<org.apache.poi.xddf.usermodel.chart.XDDFDataSourcesFactory$1: org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData category>;	$i2 = interfaceinvoke $r9.<org.openxmlformats.schemas.drawingml.x2006.chart.CTNumData: int sizeOfPtArray()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" items");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2