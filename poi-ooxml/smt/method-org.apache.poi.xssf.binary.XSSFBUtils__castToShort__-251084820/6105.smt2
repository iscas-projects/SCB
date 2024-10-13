(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3500-init () var3500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1934569527 (var3500 String) void)
(declare-const null-Int Int)
(declare-const var2026 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2026 null-Int)))
 ; Statement: if i0 >= 32767 goto $r7 = new org.apache.poi.ooxml.POIXMLException 
(assert (>= var2026 32767)) ; Cond: i0 >= 32767 
(define-const var560 var3500 var3500-init) ; Statement: $r7 = new org.apache.poi.ooxml.POIXMLException 
(define-const var3364 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3364)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3364!1 String)
(assert (= var3364!1 ""))
(assert true)
(define-const var1397 String (append/672562846 var3364!1 "val (")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("val (") 
(declare-const var3364!2 String)
(assert (= var3364!2 (str.++ var3364!1 "val (")))
(assert true)
(define-const var1494 String (append/-1001720160 var1397 var2026)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1397!1 String)
(assert (str.prefixof var1397 var1397!1))
(assert true)
(define-const var742 String (append/672562846 var1494 ") can\u0027t be cast to short")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") can\'t be cast to short") 
(declare-const var1494!1 String)
(assert (= var1494!1 (str.++ var1494 ") can\u0027t be cast to short")))
(assert true)
(define-const var1344 String (toString/-2075883882 var742)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1934569527 var560 var1344)) ; Statement: specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r5) 

(declare-const var560!1 var3500)
(declare-const var1344!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3500-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1934569527=([org.apache.poi.ooxml.POIXMLException, java.lang.String], void)}
; {var2026=i0, var3500=org.apache.poi.ooxml.POIXMLException, var560=$r7, var3364=$r6, var1397=$r2, var1494=$r3, var742=$r4, var1344=$r5}
; {i0=var2026, org.apache.poi.ooxml.POIXMLException=var3500, $r7=var560, $r6=var3364, $r2=var1397, $r3=var1494, $r4=var742, $r5=var1344}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	if i0 >= 32767 goto $r7 = new org.apache.poi.ooxml.POIXMLException;	$r7 = new org.apache.poi.ooxml.POIXMLException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("val (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") can\'t be cast to short");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2