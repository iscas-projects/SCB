(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var516 0)
(declare-sort var3864 0)
(declare-sort var318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3864-init () var3864)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var318) String)
(declare-fun cast-from-var3864-to-var318 (var3864) var318)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCause/-638798464 (var318) var318)
(declare-fun <init>/1760802295 (var3864 String var318) void)
(declare-const null-String String)
(declare-const null-var3864 var3864)
(declare-const null-var318 var318)
(declare-const var2202 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2202 null-String)))
(declare-const var1366 var3864) ; Statement: r4 := @parameter1: org.apache.poi.ooxml.POIXMLException 
(assert (not (= var1366 null-var3864)))
(define-const var1930 var3864 var3864-init) ; Statement: $r0 = new org.apache.poi.ooxml.POIXMLException 
(define-const var2955 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2955)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2955!1 String)
(assert (= var2955!1 ""))
(assert true)
(define-const var1021 String (append/672562846 var2955!1 var2202)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2955!2 String)
(assert (= var2955!2 (str.++ var2955!1 var2202)))
(assert true)
(define-const var423 String (append/672562846 var1021 ": ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1021!1 String)
(assert (= var1021!1 (str.++ var1021 ": ")))
(assert true)
(define-const var2976 String (getMessage/849299655 (cast-from-var3864-to-var318 var1366))) ; Statement: $r5 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>() 
(assert true)
(define-const var298 String (append/672562846 var423 var2976)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var423!1 String)
(assert (= var423!1 (str.++ var423 var2976)))
(assert true)
(define-const var1386 String (toString/-2075883882 var298)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3733 var318 (getCause/-638798464 (cast-from-var3864-to-var318 var1366))) ; Statement: $r8 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
 ; Statement: if $r8 != null goto $r10 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
(assert (not (not (= var3733 null-var318)))) ; Negate: Cond: $r8 != null  
(define-const var2419 var318 (cast-from-var3864-to-var318 var1366)) ; Statement: $r10 = r4 
 ; Statement: goto [?= specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1760802295 var1930 var1386 var2419)) ; Statement: specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r10) 

(declare-const var1930!1 var3864)
(declare-const var1386!1 String)
(declare-const var2419!1 var318)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3864-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3864-to-var318=([org.apache.poi.ooxml.POIXMLException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), <init>/1760802295=([org.apache.poi.ooxml.POIXMLException, java.lang.String, java.lang.Throwable], void)}
; {var2202=r2, var516=null_type, var3864=org.apache.poi.ooxml.POIXMLException, var1366=r4, var1930=$r0, var2955=$r1, var1021=$r3, var423=$r6, var318=java.lang.Throwable, var2976=$r5, var298=$r7, var1386=$r9, var3733=$r8, var2419=$r10}
; {r2=var2202, null_type=var516, org.apache.poi.ooxml.POIXMLException=var3864, r4=var1366, $r0=var1930, $r1=var2955, $r3=var1021, $r6=var423, java.lang.Throwable=var318, $r5=var2976, $r7=var298, $r9=var1386, $r8=var3733, $r10=var2419}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r4 := @parameter1: org.apache.poi.ooxml.POIXMLException;	$r0 = new org.apache.poi.ooxml.POIXMLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r5 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	if $r8 != null goto $r10 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	$r10 = r4;	goto [?= specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r10)];	specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r10);	return $r0
;block_num 3