(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1638 0)
(declare-sort var3650 0)
(declare-sort var1712 0)
(declare-sort var1237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1237-init () var1237)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3650) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1760802295 (var1237 String var1712) void)
(declare-const null-String String)
(declare-const null-var3650 var3650)
(declare-const null-var1712 var1712)
(declare-const var2470 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2470 null-String)))
(declare-const var1503 var3650) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1503 null-var3650)))
(declare-const var2717 var1712) ; Statement: r7 := @parameter2: java.lang.Throwable 
(assert (not (= var2717 null-var1712)))
(define-const var3146 var1237 var1237-init) ; Statement: $r0 = new org.apache.poi.ooxml.POIXMLException 
(define-const var3300 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3300)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3300!1 String)
(assert (= var3300!1 ""))
(assert true)
(define-const var3012 String (append/-1031950772 var3300!1 var1503)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3300!2 String)
(assert (str.prefixof var3300!1 var3300!2))
(assert true)
(define-const var1277 String (append/672562846 var3012 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3012!1 String)
(assert (= var3012!1 (str.++ var3012 ": ")))
(assert true)
(define-const var1890 String (append/672562846 var1277 var2470)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1277!1 String)
(assert (= var1277!1 (str.++ var1277 var2470)))
(assert true)
(define-const var493 String (toString/-2075883882 var1890)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1760802295 var3146 var493 var2717)) ; Statement: specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7) 

(declare-const var3146!1 var1237)
(declare-const var493!1 String)
(declare-const var2717!1 var1712)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1237-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1760802295=([org.apache.poi.ooxml.POIXMLException, java.lang.String, java.lang.Throwable], void)}
; {var2470=r4, var1638=null_type, var3650=java.lang.Object, var1503=r2, var1712=java.lang.Throwable, var2717=r7, var1237=org.apache.poi.ooxml.POIXMLException, var3146=$r0, var3300=$r1, var3012=$r3, var1277=$r5, var1890=$r6, var493=$r8}
; {r4=var2470, null_type=var1638, java.lang.Object=var3650, r2=var1503, java.lang.Throwable=var1712, r7=var2717, org.apache.poi.ooxml.POIXMLException=var1237, $r0=var3146, $r1=var3300, $r3=var3012, $r5=var1277, $r6=var1890, $r8=var493}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	r7 := @parameter2: java.lang.Throwable;	$r0 = new org.apache.poi.ooxml.POIXMLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String,java.lang.Throwable)>($r8, r7);	return $r0
;block_num 1