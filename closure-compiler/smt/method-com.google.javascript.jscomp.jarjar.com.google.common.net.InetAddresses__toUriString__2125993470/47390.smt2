(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var506 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1709_toAddrString/1425377219 (var506) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var506 var506)
(declare-const var2366 var506) ; Statement: r0 := @parameter0: java.net.InetAddress 
(assert (not (= var2366 null-var506)))
(define-const var2628 Bool false) ; Statement: $z0 = r0 instanceof java.net.Inet6Address 
 ; Statement: if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0) 
(assert (not (= (ite var2628 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3289 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3289)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3289!1 String)
(assert (= var3289!1 ""))
(assert true)
(define-const var1474 String (append/672562846 var3289!1 "[")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3289!2 String)
(assert (= var3289!2 (str.++ var3289!1 "[")))
(define-const var3278 String (var1709_toAddrString/1425377219 var2366)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0) 
(assert true)
(define-const var1082 String (append/672562846 var1474 var3278)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1474!1 String)
(assert (= var1474!1 (str.++ var1474 var3278)))
(assert true)
(define-const var3490 String (append/672562846 var1082 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1082!1 String)
(assert (= var1082!1 (str.++ var1082 "]")))
(assert true)
(define-const var2183 String (toString/-2075883882 var3490)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1709_toAddrString/1425377219=([java.net.InetAddress], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var506=java.net.InetAddress, var2366=r0, var2628=$z0, var3289=$r2, var1474=$r4, var1709=com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses, var3278=$r3, var1082=$r5, var3490=$r6, var2183=$r7}
; {java.net.InetAddress=var506, r0=var2366, $z0=var2628, $r2=var3289, $r4=var1474, com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses=var1709, $r3=var3278, $r5=var1082, $r6=var3490, $r7=var2183}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.InetAddress;	$z0 = r0 instanceof java.net.Inet6Address;	if $z0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: java.lang.String toAddrString(java.net.InetAddress)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2