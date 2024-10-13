(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var1675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1675-init () var1675)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1675 String) void)
(declare-const null-var1471 var1471)
(declare-const null-Float64 Float64)
(declare-const var1881 var1471) ; Statement: r5 := @this: org.apache.poi.xddf.usermodel.chart.XDDFChartAxis 
(assert (not (= var1881 null-var1471)))
(declare-const var111 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var111 null-Float64)))
(define-const var1558 Int (ite (fp.gt var111 ((_ to_fp 11 53) #x4000000000000000)) 1 (ite (fp.lt var111 ((_ to_fp 11 53) #x4000000000000000)) (- 1) 0))) ; Statement: $b0 = d0 cmpg 2.0 
(define-const var2694 Int (cast-from-Int-to-Int var1558)) ; Statement: $i2 = (int) $b0 
 ; Statement: if $i2 < 0 goto $r10 = new java.lang.IllegalArgumentException 
(assert (< var2694 0)) ; Cond: $i2 < 0 
(define-const var2930 var1675 var1675-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var2583 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2583)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2583!1 String)
(assert (= var2583!1 ""))
(assert true)
(define-const var3667 String (append/672562846 var2583!1 "Axis log base must be between 2 and 1000 (inclusive), got: ")) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Axis log base must be between 2 and 1000 (inclusive), got: ") 
(declare-const var2583!2 String)
(assert (= var2583!2 (str.++ var2583!1 "Axis log base must be between 2 and 1000 (inclusive), got: ")))
(assert true)
(define-const var3816 String (append/33611274 var3667 var111)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0) 
(declare-const var3667!1 String)
(assert (str.prefixof var3667 var3667!1))
(assert true)
(define-const var2960 String (toString/-2075883882 var3816)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2930 var2960)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4) 

(declare-const var2930!1 var1675)
(declare-const var2960!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1675-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1471=org.apache.poi.xddf.usermodel.chart.XDDFChartAxis, var1881=r5, var111=d0, var1558=$b0, var2694=$i2, var1675=java.lang.IllegalArgumentException, var2930=$r10, var2583=$r9, var3667=$r2, var3816=$r3, var2960=$r4}
; {org.apache.poi.xddf.usermodel.chart.XDDFChartAxis=var1471, r5=var1881, d0=var111, $b0=var1558, $i2=var2694, java.lang.IllegalArgumentException=var1675, $r10=var2930, $r9=var2583, $r2=var3667, $r3=var3816, $r4=var2960}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.apache.poi.xddf.usermodel.chart.XDDFChartAxis;	d0 := @parameter0: double;	$b0 = d0 cmpg 2.0;	$i2 = (int) $b0;	if $i2 < 0 goto $r10 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Axis log base must be between 2 and 1000 (inclusive), got: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>(d0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r4);	throw $r10
;block_num 2