(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1063 0)
(declare-sort var3714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lowerBound/-761736775 (var1063) ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3714_typeToString/1757896956 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1063 var1063)
(declare-const null-ClassObject ClassObject)
(declare-const var3981 var1063) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl 
(assert (not (= var3981 null-var1063)))
(define-const var1408 ClassObject (lowerBound/-761736775 var3981)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type upperBound> 
(assert (not (= var1408 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var3506 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3506)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3506!1 String)
(assert (= var3506!1 ""))
(assert true)
(define-const var3054 String (append/672562846 var3506!1 "? super ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("? super ") 
(declare-const var3506!2 String)
(assert (= var3506!2 (str.++ var3506!1 "? super ")))
(define-const var2088 ClassObject (lowerBound/-761736775 var3981)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound> 
(define-const var3495 String (var3714_typeToString/1757896956 var2088)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r10) 
(assert true)
(define-const var3794 String (append/672562846 var3054 var3495)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3054!1 String)
(assert (= var3054!1 (str.++ var3054 var3495)))
(assert true)
(define-const var2731 String (toString/-2075883882 var3794)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {lowerBound/-761736775=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl], java.lang.reflect.Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3714_typeToString/1757896956=([java.lang.reflect.Type], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1063=com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl, var3981=r0, var1408=$r1, var3506=$r9, var3054=$r12, var2088=$r10, var3714=com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types, var3495=$r11, var3794=$r13, var2731=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl=var1063, r0=var3981, $r1=var1408, $r9=var3506, $r12=var3054, $r10=var2088, com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types=var3714, $r11=var3495, $r13=var3794, $r14=var2731}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type upperBound>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("? super ");	$r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$WildcardTypeImpl: java.lang.reflect.Type lowerBound>;	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 2