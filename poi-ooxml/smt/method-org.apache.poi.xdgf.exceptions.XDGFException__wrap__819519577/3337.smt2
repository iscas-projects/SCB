(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3609 0)
(declare-sort var2457 0)
(declare-sort var3680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2457-init () var2457)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3680) String)
(declare-fun cast-from-var2457-to-var3680 (var2457) var3680)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCause/-638798464 (var3680) var3680)
(declare-fun <init>/1760802295 (var2457 String var3680) void)
(declare-const null-String String)
(declare-const null-var2457 var2457)
(declare-const null-var3680 var3680)
(declare-const var1472 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1472 null-String)))
(declare-const var3203 var2457) ; Statement: r4 := @parameter1: org.apache.poi.ooxml.POIXMLException 
(assert (not (= var3203 null-var2457)))
(define-const var411 var2457 var2457-init) ; Statement: $r0 = new org.apache.poi.ooxml.POIXMLException 
(define-const var3914 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3914)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3914!1 String)
(assert (= var3914!1 ""))
(assert true)
(define-const var396 String (append/672562846 var3914!1 var1472)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3914!2 String)
(assert (= var3914!2 (str.++ var3914!1 var1472)))
(assert true)
(define-const var2918 String (append/672562846 var396 ": ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var396!1 String)
(assert (= var396!1 (str.++ var396 ": ")))
(assert true)
(define-const var2882 String (getMessage/849299655 (cast-from-var2457-to-var3680 var3203))) ; Statement: $r5 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>() 
(assert true)
(define-const var3678 String (append/672562846 var2918 var2882)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2918!1 String)
(assert (= var2918!1 (str.++ var2918 var2882)))
(assert true)
(define-const var2445 String (toString/-2075883882 var3678)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3412 var3680 (getCause/-638798464 (cast-from-var2457-to-var3680 var3203))) ; Statement: $r8 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
 ; Statement: if $r8 != null goto $r10 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
(assert (not (= var3412 null-var3680))) ; Cond: $r8 != null 
(assert true)
(define-const var2969 var3680 (getCause/-638798464 (cast-from-var2457-to-var3680 var3203))) ; Statement: $r10 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1760802295 var411 var2445 var2969)) ; Statement: specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r10) 

(declare-const var411!1 var2457)
(declare-const var2445!1 String)
(declare-const var2969!1 var3680)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2457-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2457-to-var3680=([org.apache.poi.ooxml.POIXMLException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), <init>/1760802295=([org.apache.poi.ooxml.POIXMLException, java.lang.String, java.lang.Throwable], void)}
; {var1472=r2, var3609=null_type, var2457=org.apache.poi.ooxml.POIXMLException, var3203=r4, var411=$r0, var3914=$r1, var396=$r3, var2918=$r6, var3680=java.lang.Throwable, var2882=$r5, var3678=$r7, var2445=$r9, var3412=$r8, var2969=$r10}
; {r2=var1472, null_type=var3609, org.apache.poi.ooxml.POIXMLException=var2457, r4=var3203, $r0=var411, $r1=var3914, $r3=var396, $r6=var2918, java.lang.Throwable=var3680, $r5=var2882, $r7=var3678, $r9=var2445, $r8=var3412, $r10=var2969}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r4 := @parameter1: org.apache.poi.ooxml.POIXMLException;	$r0 = new org.apache.poi.ooxml.POIXMLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r5 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	if $r8 != null goto $r10 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	$r10 = virtualinvoke r4.<org.apache.poi.ooxml.POIXMLException: java.lang.Throwable getCause()>();	specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r10);	return $r0
;block_num 3