(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3518 0)
(declare-sort var1664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun componentType/-1269821407 (var3518) ClassObject)
(declare-fun var1664_typeToString/1757896956 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3518 var3518)
(declare-const var3411 var3518) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl 
(assert (not (= var3411 null-var3518)))
(define-const var3660 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3660)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3660!1 String)
(assert (= var3660!1 ""))
(define-const var671 ClassObject (componentType/-1269821407 var3411)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl: java.lang.reflect.Type componentType> 
(define-const var3607 String (var1664_typeToString/1757896956 var671)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r2) 
(assert true)
(define-const var973 String (append/672562846 var3660!1 var3607)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3660!2 String)
(assert (= var3660!2 (str.++ var3660!1 var3607)))
(assert true)
(define-const var2166 String (append/672562846 var973 "[]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]") 
(declare-const var973!1 String)
(assert (= var973!1 (str.++ var973 "[]")))
(assert true)
(define-const var3008 String (toString/-2075883882 var2166)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), componentType/-1269821407=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl], java.lang.reflect.Type), var1664_typeToString/1757896956=([java.lang.reflect.Type], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3518=com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl, var3411=r1, var3660=$r0, var671=$r2, var1664=com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types, var3607=$r3, var973=$r4, var2166=$r5, var3008=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl=var3518, r1=var3411, $r0=var3660, $r2=var671, com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types=var1664, $r3=var3607, $r4=var973, $r5=var2166, $r6=var3008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl: java.lang.reflect.Type componentType>;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.$Gson$Types: java.lang.String typeToString(java.lang.reflect.Type)>($r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1