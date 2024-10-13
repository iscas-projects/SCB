(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1618 0)
(declare-sort var1279 0)
(declare-sort var327 0)
(declare-sort var3520 0)
(declare-sort var1765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var327-init () var327)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/650362801 (var1618) var3520)
(declare-fun var3520_access$500/-969700871 (var3520) ClassObject)
(declare-fun append/-1031950772 (String var1765) String)
(declare-fun cast-from-ClassObject-to-var1765 (ClassObject) var1765)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var327 String) void)
(declare-const null-var1618 var1618)
(declare-const null-var1279 var1279)
(declare-const var1702 var1618) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$3 
(assert (not (= var1702 null-var1618)))
(declare-const var2865 var1279) ; Statement: r8 := @parameter0: java.lang.reflect.TypeVariable 
(assert (not (= var2865 null-var1279)))
(define-const var707 var327 var327-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1060 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1060)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1060!1 String)
(assert (= var1060!1 ""))
(define-const var2166 var3520 (this$0/650362801 var1702)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$3: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken this$0> 
(define-const var3781 ClassObject (var3520_access$500/-969700871 var2166)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type access$500(com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)>($r3) 
(assert true)
(define-const var1322 String (append/-1031950772 var1060!1 (cast-from-ClassObject-to-var1765 var3781))) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1060!2 String)
(assert (str.prefixof var1060!1 var1060!2))
(assert true)
(define-const var1868 String (append/672562846 var1322 "contains a type variable and is not safe for the operation")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("contains a type variable and is not safe for the operation") 
(declare-const var1322!1 String)
(assert (= var1322!1 (str.++ var1322 "contains a type variable and is not safe for the operation")))
(assert true)
(define-const var2993 String (toString/-2075883882 var1868)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var707 var2993)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var707!1 var327)
(declare-const var2993!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var327-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/650362801=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$3], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), var3520_access$500/-969700871=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.reflect.Type), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1765=([java.lang.reflect.Type], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1618=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$3, var1702=r2, var1279=java.lang.reflect.TypeVariable, var2865=r8, var327=java.lang.IllegalArgumentException, var707=$r0, var1060=$r1, var3520=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2166=$r3, var3781=$r4, var1765=java.lang.Object, var1322=$r5, var1868=$r6, var2993=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$3=var1618, r2=var1702, java.lang.reflect.TypeVariable=var1279, r8=var2865, java.lang.IllegalArgumentException=var327, $r0=var707, $r1=var1060, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var3520, $r3=var2166, $r4=var3781, java.lang.Object=var1765, $r5=var1322, $r6=var1868, $r7=var2993}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$3;	r8 := @parameter0: java.lang.reflect.TypeVariable;	$r0 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken$3: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken this$0>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: java.lang.reflect.Type access$500(com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)>($r3);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("contains a type variable and is not safe for the operation");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1