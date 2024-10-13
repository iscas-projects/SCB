(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var51 0)
(declare-sort var2617 0)
(declare-sort var3612 0)
(declare-sort var3731 0)
(declare-sort var3925 0)
(declare-sort var582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3612) void)
(declare-fun cast-from-var51-to-var3612 (var51) var3612)
(declare-fun matcher/468719934 (var3731 String) var3925)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var3925) Bool)
(declare-fun var582-init () var582)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-937058452 (var582 String) void)
(declare-const null-var51 var51)
(declare-const null-String String)
(declare-const var51-patternTypeSubType var3731)
(declare-const var3438 var51) ; Statement: r0 := @this: org.apache.poi.openxml4j.opc.internal.ContentType 
(assert (not (= var3438 null-var51)))
(declare-const var2892 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2892 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var51-to-var3612 var3438))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3438!1 var51)
(define-const var3448 var3731 var51-patternTypeSubType) ; Statement: $r2 = <org.apache.poi.openxml4j.opc.internal.ContentType: java.util.regex.Pattern patternTypeSubType> 
(assert true)
(define-const var1496 var3925 (matcher/468719934 var3448 (cast-from-String-to-String var2892))) ; Statement: r20 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(assert true)
(define-const var2518 Bool (matches/-149940873 var1496)) ; Statement: $z0 = virtualinvoke r20.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r20.<java.util.regex.Matcher: boolean matches()>() 
(assert (not (= (ite var2518 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3702 Bool (matches/-149940873 var1496)) ; Statement: $z1 = virtualinvoke r20.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z1 != 0 goto $i0 = virtualinvoke r20.<java.util.regex.Matcher: int groupCount()>() 
(assert (not (not (= (ite var3702 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var692 var582 var582-init) ; Statement: $r13 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException 
(define-const var363 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var363)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var363!1 String)
(assert (= var363!1 ""))
(assert true)
(define-const var3269 String (append/672562846 var363!1 "The specified content type \u0027")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The specified content type \'") 
(declare-const var363!2 String)
(assert (= var363!2 (str.++ var363!1 "The specified content type \u0027")))
(assert true)
(define-const var3080 String (append/672562846 var3269 var2892)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3269!1 String)
(assert (= var3269!1 (str.++ var3269 var2892)))
(assert true)
(define-const var2786 String (append/672562846 var3080 "\u0027 is not compliant with RFC 2616: malformed content type.")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not compliant with RFC 2616: malformed content type.") 
(declare-const var3080!1 String)
(assert (= var3080!1 (str.++ var3080 "\u0027 is not compliant with RFC 2616: malformed content type.")))
(assert true)
(define-const var806 String (toString/-2075883882 var2786)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-937058452 var692 var806)) ; Statement: specialinvoke $r13.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r18) 

(declare-const var692!1 var582)
(declare-const var806!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var51-to-var3612=([org.apache.poi.openxml4j.opc.internal.ContentType], java.lang.Object), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var582-init=([], org.apache.poi.openxml4j.exceptions.InvalidFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-937058452=([org.apache.poi.openxml4j.exceptions.InvalidFormatException, java.lang.String], void)}
; {var51=org.apache.poi.openxml4j.opc.internal.ContentType, var3438=r0, var2892=r1, var2617=null_type, var3612=java.lang.Object, var3731=java.util.regex.Pattern, var3448=$r2, var3925=java.util.regex.Matcher, var1496=r20, var2518=$z0, var3702=$z1, var582=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var692=$r13, var363=$r14, var3269=$r15, var3080=$r16, var2786=$r17, var806=$r18}
; {org.apache.poi.openxml4j.opc.internal.ContentType=var51, r0=var3438, r1=var2892, null_type=var2617, java.lang.Object=var3612, java.util.regex.Pattern=var3731, $r2=var3448, java.util.regex.Matcher=var3925, r20=var1496, $z0=var2518, $z1=var3702, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var582, $r13=var692, $r14=var363, $r15=var3269, $r16=var3080, $r17=var2786, $r18=var806}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.openxml4j.opc.internal.ContentType;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = <org.apache.poi.openxml4j.opc.internal.ContentType: java.util.regex.Pattern patternTypeSubType>;	r20 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	$z0 = virtualinvoke r20.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $z1 = virtualinvoke r20.<java.util.regex.Matcher: boolean matches()>();	$z1 = virtualinvoke r20.<java.util.regex.Matcher: boolean matches()>();	if $z1 != 0 goto $i0 = virtualinvoke r20.<java.util.regex.Matcher: int groupCount()>();	$r13 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The specified content type \'");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not compliant with RFC 2616: malformed content type.");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 3