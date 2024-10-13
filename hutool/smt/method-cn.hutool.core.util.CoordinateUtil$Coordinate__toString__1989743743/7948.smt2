(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lng/483273759 (var939) Float64)
(declare-fun append/33611274 (String Float64) String)
(declare-fun lat/483273759 (var939) Float64)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var939 var939)
(declare-const var3389 var939) ; Statement: r1 := @this: cn.hutool.core.util.CoordinateUtil$Coordinate 
(assert (not (= var3389 null-var939)))
(define-const var1212 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true)
(define-const var2910 String (append/672562846 var1212!1 "Coordinate{lng=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Coordinate{lng=") 
(declare-const var1212!2 String)
(assert (= var1212!2 (str.++ var1212!1 "Coordinate{lng=")))
(define-const var2572 Float64 (lng/483273759 var3389)) ; Statement: $d0 = r1.<cn.hutool.core.util.CoordinateUtil$Coordinate: double lng> 
(assert true)
(define-const var1536 String (append/33611274 var2910 var2572)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var2910!1 String)
(assert (str.prefixof var2910 var2910!1))
(assert true)
(define-const var2569 String (append/672562846 var1536 ", lat=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", lat=") 
(declare-const var1536!1 String)
(assert (= var1536!1 (str.++ var1536 ", lat=")))
(define-const var2490 Float64 (lat/483273759 var3389)) ; Statement: $d1 = r1.<cn.hutool.core.util.CoordinateUtil$Coordinate: double lat> 
(assert true)
(define-const var1526 String (append/33611274 var2569 var2490)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1) 
(declare-const var2569!1 String)
(assert (str.prefixof var2569 var2569!1))
(assert true)
(define-const var692 String (append/-1166366385 var1526 125)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1526!1 String)
(assert (str.prefixof var1526 var1526!1))
(assert true)
(define-const var3690 String (toString/-2075883882 var692)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lng/483273759=([cn.hutool.core.util.CoordinateUtil$Coordinate], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), lat/483273759=([cn.hutool.core.util.CoordinateUtil$Coordinate], double), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var939=cn.hutool.core.util.CoordinateUtil$Coordinate, var3389=r1, var1212=$r0, var2910=$r2, var2572=$d0, var1536=$r3, var2569=$r4, var2490=$d1, var1526=$r5, var692=$r6, var3690=$r7}
; {cn.hutool.core.util.CoordinateUtil$Coordinate=var939, r1=var3389, $r0=var1212, $r2=var2910, $d0=var2572, $r3=var1536, $r4=var2569, $d1=var2490, $r5=var1526, $r6=var692, $r7=var3690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.util.CoordinateUtil$Coordinate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Coordinate{lng=");	$d0 = r1.<cn.hutool.core.util.CoordinateUtil$Coordinate: double lng>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", lat=");	$d1 = r1.<cn.hutool.core.util.CoordinateUtil$Coordinate: double lat>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1