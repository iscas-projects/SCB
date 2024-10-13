(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2496 0)
(declare-sort var3921 0)
(declare-sort var2823 0)
(declare-sort var3556 0)
(declare-sort var1712 0)
(declare-sort var1236 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var3921 String) var3556)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var3556) Bool)
(declare-fun var1712-init () var1712)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1236) String)
(declare-fun cast-from-var3921-to-var1236 (var3921) var1236)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1712 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2823-FUNCTION_SIGNATURE_PATTERN var3921)
(declare-const var615 ClassObject) ; Statement: r8 := @parameter0: java.lang.Class 
(assert (not (= var615 null-ClassObject)))
(declare-const var2279 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2279 null-String)))
(define-const var1060 var3921 var2823-FUNCTION_SIGNATURE_PATTERN) ; Statement: $r1 = <freemarker.ext.jsp.TaglibMethodUtil: java.util.regex.Pattern FUNCTION_SIGNATURE_PATTERN> 
(assert true)
(define-const var3661 var3556 (matcher/468719934 var1060 (cast-from-String-to-String var2279))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var1370 Bool (matches/-149940873 var3661)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto r3 = virtualinvoke r2.<java.util.regex.Matcher: java.lang.String group(int)>(3) 
(assert (not (not (= (ite var1370 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3039 var1712 var1712-init) ; Statement: $r70 = new java.lang.IllegalArgumentException 
(define-const var949 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var949)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var949!1 String)
(assert (= var949!1 ""))
(assert true)
(define-const var79 String (append/672562846 var949!1 "Invalid function signature (doesn\u0027t match this pattern: ")) ; Statement: $r53 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid function signature (doesn\'t match this pattern: ") 
(declare-const var949!2 String)
(assert (= var949!2 (str.++ var949!1 "Invalid function signature (doesn\u0027t match this pattern: ")))
(define-const var2689 var3921 var2823-FUNCTION_SIGNATURE_PATTERN) ; Statement: $r52 = <freemarker.ext.jsp.TaglibMethodUtil: java.util.regex.Pattern FUNCTION_SIGNATURE_PATTERN> 
(assert true)
(define-const var3898 String (append/-1031950772 var79 (cast-from-var3921-to-var1236 var2689))) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r52) 
(declare-const var79!1 String)
(assert (str.prefixof var79 var79!1))
(assert true)
(define-const var2169 String (append/672562846 var3898 ")")) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3898!1 String)
(assert (= var3898!1 (str.++ var3898 ")")))
(assert true)
(define-const var3724 String (toString/-2075883882 var2169)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3039 var3724)) ; Statement: specialinvoke $r70.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r56) 

(declare-const var3039!1 var1712)
(declare-const var3724!1 String)
 ; Statement: throw $r70 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var1712-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3921-to-var1236=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var615=r8, var2279=r0, var2496=null_type, var3921=java.util.regex.Pattern, var2823=freemarker.ext.jsp.TaglibMethodUtil, var1060=$r1, var3556=java.util.regex.Matcher, var3661=r2, var1370=$z0, var1712=java.lang.IllegalArgumentException, var3039=$r70, var949=$r69, var79=$r53, var2689=$r52, var1236=java.lang.Object, var3898=$r54, var2169=$r55, var3724=$r56}
; {r8=var615, r0=var2279, null_type=var2496, java.util.regex.Pattern=var3921, freemarker.ext.jsp.TaglibMethodUtil=var2823, $r1=var1060, java.util.regex.Matcher=var3556, r2=var3661, $z0=var1370, java.lang.IllegalArgumentException=var1712, $r70=var3039, $r69=var949, $r53=var79, $r52=var2689, java.lang.Object=var1236, $r54=var3898, $r55=var2169, $r56=var3724}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.String;	$r1 = <freemarker.ext.jsp.TaglibMethodUtil: java.util.regex.Pattern FUNCTION_SIGNATURE_PATTERN>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto r3 = virtualinvoke r2.<java.util.regex.Matcher: java.lang.String group(int)>(3);	$r70 = new java.lang.IllegalArgumentException;	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r53 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid function signature (doesn\'t match this pattern: ");	$r52 = <freemarker.ext.jsp.TaglibMethodUtil: java.util.regex.Pattern FUNCTION_SIGNATURE_PATTERN>;	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r52);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r70.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r56);	throw $r70
;block_num 2