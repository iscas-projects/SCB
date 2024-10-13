(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var1590 0)
(declare-sort var3981 0)
(declare-sort var2532 0)
(declare-sort var1193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedGroups/-44828506 (var1047) var3981)
(declare-fun var3981_get/1088891777 (var3981 var2532) var2532)
(declare-fun cast-from-String-to-var2532 (String) var2532)
(declare-fun cast-from-var2532-to-Int (var2532) Int)
(declare-fun var1193-init () var1193)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1193 String) void)
(declare-const null-var1047 var1047)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1511 var1047) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher 
(assert (not (= var1511 null-var1047)))
(declare-const var2930 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2930 null-String)))
(define-const var3114 var3981 (namedGroups/-44828506 var1511)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups> 
(define-const var3582 var2532 (var3981_get/1088891777 var3114 (cast-from-String-to-var2532 var2930))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3779 Int (cast-from-var2532-to-Int var3582)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var3779 null-Int)))) ; Negate: Cond: r4 != null  
(define-const var2284 var1193 var1193-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var280 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var280)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var280!1 String)
(assert (= var280!1 ""))
(assert true)
(define-const var2342 String (append/672562846 var280!1 "group \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("group \'") 
(declare-const var280!2 String)
(assert (= var280!2 (str.++ var280!1 "group \u0027")))
(assert true)
(define-const var54 String (append/672562846 var2342 var2930)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2342!1 String)
(assert (= var2342!1 (str.++ var2342 var2930)))
(assert true)
(define-const var2335 String (append/672562846 var54 "\u0027 not found")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found") 
(declare-const var54!1 String)
(assert (= var54!1 (str.++ var54 "\u0027 not found")))
(assert true)
(define-const var3015 String (toString/-2075883882 var2335)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2284 var3015)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2284!1 var1193)
(declare-const var3015!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {namedGroups/-44828506=([com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher], java.util.Map), var3981_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2532=([java.lang.String], java.lang.Object), cast-from-var2532-to-Int=([java.lang.Object], java.lang.Integer), var1193-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1047=com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher, var1511=r0, var2930=r1, var1590=null_type, var3981=java.util.Map, var3114=$r2, var2532=java.lang.Object, var3582=$r3, var3779=r4, var1193=java.lang.IllegalArgumentException, var2284=$r5, var280=$r6, var2342=$r7, var54=$r8, var2335=$r9, var3015=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher=var1047, r0=var1511, r1=var2930, null_type=var1590, java.util.Map=var3981, $r2=var3114, java.lang.Object=var2532, $r3=var3582, r4=var3779, java.lang.IllegalArgumentException=var1193, $r5=var2284, $r6=var280, $r7=var2342, $r8=var54, $r9=var2335, $r10=var3015}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Matcher: java.util.Map namedGroups>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("group \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2