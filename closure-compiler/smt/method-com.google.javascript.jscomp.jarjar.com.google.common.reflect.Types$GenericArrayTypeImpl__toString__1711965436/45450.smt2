(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var2578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun componentType/-409687452 (var478) ClassObject)
(declare-fun var2578_toString/128917371 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var478 var478)
(declare-const var1116 var478) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$GenericArrayTypeImpl 
(assert (not (= var1116 null-var478)))
(define-const var990 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var990)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var990!1 String)
(assert (= var990!1 ""))
(define-const var1304 ClassObject (componentType/-409687452 var1116)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$GenericArrayTypeImpl: java.lang.reflect.Type componentType> 
(define-const var2205 String (var2578_toString/128917371 var1304)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: java.lang.String toString(java.lang.reflect.Type)>($r2) 
(assert true)
(define-const var2199 String (append/672562846 var990!1 var2205)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var990!2 String)
(assert (= var990!2 (str.++ var990!1 var2205)))
(assert true)
(define-const var1753 String (append/672562846 var2199 "[]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]") 
(declare-const var2199!1 String)
(assert (= var2199!1 (str.++ var2199 "[]")))
(assert true)
(define-const var112 String (toString/-2075883882 var1753)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), componentType/-409687452=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$GenericArrayTypeImpl], java.lang.reflect.Type), var2578_toString/128917371=([java.lang.reflect.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var478=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$GenericArrayTypeImpl, var1116=r1, var990=$r0, var1304=$r2, var2578=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types, var2205=$r3, var2199=$r4, var1753=$r5, var112=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$GenericArrayTypeImpl=var478, r1=var1116, $r0=var990, $r2=var1304, com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types=var2578, $r3=var2205, $r4=var2199, $r5=var1753, $r6=var112}
;seq <java.lang.StringBuilder: void <init>()>;	<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: java.lang.String toString(java.lang.reflect.Type)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$GenericArrayTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types$GenericArrayTypeImpl: java.lang.reflect.Type componentType>;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.Types: java.lang.String toString(java.lang.reflect.Type)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1