(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1143 0)
(declare-sort var3069 0)
(declare-sort var1707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1707-init () var1707)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3069) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1934569527 (var1707 String) void)
(declare-const null-String String)
(declare-const null-var3069 var3069)
(declare-const var599 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var599 null-String)))
(declare-const var3528 var3069) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3528 null-var3069)))
(define-const var2688 var1707 var1707-init) ; Statement: $r0 = new org.apache.poi.ooxml.POIXMLException 
(define-const var1717 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1717)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1717!1 String)
(assert (= var1717!1 ""))
(assert true)
(define-const var687 String (append/-1031950772 var1717!1 var3528)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1717!2 String)
(assert (str.prefixof var1717!1 var1717!2))
(assert true)
(define-const var3628 String (append/672562846 var687 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var687!1 String)
(assert (= var687!1 (str.++ var687 ": ")))
(assert true)
(define-const var1214 String (append/672562846 var3628 var599)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3628!1 String)
(assert (= var3628!1 (str.++ var3628 var599)))
(assert true)
(define-const var1009 String (toString/-2075883882 var1214)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1934569527 var2688 var1009)) ; Statement: specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r7) 

(declare-const var2688!1 var1707)
(declare-const var1009!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1707-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1934569527=([org.apache.poi.ooxml.POIXMLException, java.lang.String], void)}
; {var599=r4, var1143=null_type, var3069=java.lang.Object, var3528=r2, var1707=org.apache.poi.ooxml.POIXMLException, var2688=$r0, var1717=$r1, var687=$r3, var3628=$r5, var1214=$r6, var1009=$r7}
; {r4=var599, null_type=var1143, java.lang.Object=var3069, r2=var3528, org.apache.poi.ooxml.POIXMLException=var1707, $r0=var2688, $r1=var1717, $r3=var687, $r5=var3628, $r6=var1214, $r7=var1009}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r0 = new org.apache.poi.ooxml.POIXMLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r7);	return $r0
;block_num 1