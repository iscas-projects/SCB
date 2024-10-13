(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1752 0)
(declare-sort var2797 0)
(declare-sort var2141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAbsolute/-1391432365 (var1752) Bool)
(declare-fun var2797-init () var2797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2141) String)
(declare-fun cast-from-var1752-to-var2141 (var1752) var2141)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-937058452 (var2797 String) void)
(declare-const null-var1752 var1752)
(declare-const var3630 var1752) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var3630 null-var1752)))
(assert true)
(define-const var332 Bool (isAbsolute/-1391432365 var3630)) ; Statement: $z0 = virtualinvoke r0.<java.net.URI: boolean isAbsolute()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var332 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3908 var2797 var2797-init) ; Statement: $r1 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException 
(define-const var1989 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1989)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1989!1 String)
(assert (= var1989!1 ""))
(assert true)
(define-const var2851 String (append/672562846 var1989!1 "Absolute URI forbidden: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Absolute URI forbidden: ") 
(declare-const var1989!2 String)
(assert (= var1989!2 (str.++ var1989!1 "Absolute URI forbidden: ")))
(assert true)
(define-const var1807 String (append/-1031950772 var2851 (cast-from-var1752-to-var2141 var3630))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2851!1 String)
(assert (str.prefixof var2851 var2851!1))
(assert true)
(define-const var2186 String (toString/-2075883882 var1807)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-937058452 var3908 var2186)) ; Statement: specialinvoke $r1.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r5) 

(declare-const var3908!1 var2797)
(declare-const var2186!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isAbsolute/-1391432365=([java.net.URI], boolean), var2797-init=([], org.apache.poi.openxml4j.exceptions.InvalidFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1752-to-var2141=([java.net.URI], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-937058452=([org.apache.poi.openxml4j.exceptions.InvalidFormatException, java.lang.String], void)}
; {var1752=java.net.URI, var3630=r0, var332=$z0, var2797=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var3908=$r1, var1989=$r2, var2851=$r3, var2141=java.lang.Object, var1807=$r4, var2186=$r5}
; {java.net.URI=var1752, r0=var3630, $z0=var332, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var2797, $r1=var3908, $r2=var1989, $r3=var2851, java.lang.Object=var2141, $r4=var1807, $r5=var2186}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URI;	$z0 = virtualinvoke r0.<java.net.URI: boolean isAbsolute()>();	if $z0 == 0 goto return;	$r1 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Absolute URI forbidden: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2