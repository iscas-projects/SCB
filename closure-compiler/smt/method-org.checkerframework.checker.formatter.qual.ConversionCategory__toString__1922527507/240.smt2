(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2088 0)
(declare-sort var3468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/1633728430 (var3468) String)
(declare-fun cast-from-var2088-to-var3468 (var2088) var3468)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun types/1970091451 (var2088) (Array Int ClassObject))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2088 var2088)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2374 var2088) ; Statement: r1 := @this: org.checkerframework.checker.formatter.qual.ConversionCategory 
(assert (not (= var2374 null-var2088)))
(define-const var2138 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2138)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2138!1 String)
(assert (= var2138!1 ""))
(assert true)
(define-const var3023 String (name/1633728430 (cast-from-var2088-to-var3468 var2374))) ; Statement: $r2 = virtualinvoke r1.<org.checkerframework.checker.formatter.qual.ConversionCategory: java.lang.String name()>() 
(assert true)
;(assert (append/672562846 var2138!1 var3023)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2138!2 String)
(assert (= var2138!2 (str.++ var2138!1 var3023)))
(assert true)
;(assert (append/672562846 var2138!2 " conversion category")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" conversion category") 
(declare-const var2138!3 String)
(assert (= var2138!3 (str.++ var2138!2 " conversion category")))
(define-const var2146 (Array Int ClassObject) (types/1970091451 var2374)) ; Statement: $r3 = r1.<org.checkerframework.checker.formatter.qual.ConversionCategory: java.lang.Class[] types> 
 ; Statement: if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2146 null-__Array__Int__ClassObject__)) ; Cond: $r3 == null 
(assert true)
(define-const var1249 String (toString/-2075883882 var2138!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2088-to-var3468=([org.checkerframework.checker.formatter.qual.ConversionCategory], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), types/1970091451=([org.checkerframework.checker.formatter.qual.ConversionCategory], java.lang.Class[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2088=org.checkerframework.checker.formatter.qual.ConversionCategory, var2374=r1, var2138=$r0, var3468=java.lang.Enum, var3023=$r2, var2146=$r3, var1249=$r4}
; {org.checkerframework.checker.formatter.qual.ConversionCategory=var2088, r1=var2374, $r0=var2138, java.lang.Enum=var3468, $r2=var3023, $r3=var2146, $r4=var1249}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.checkerframework.checker.formatter.qual.ConversionCategory;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.checkerframework.checker.formatter.qual.ConversionCategory: java.lang.String name()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" conversion category");	$r3 = r1.<org.checkerframework.checker.formatter.qual.ConversionCategory: java.lang.Class[] types>;	if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2