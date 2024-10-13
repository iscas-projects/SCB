(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var289 0)
(declare-sort var1106 0)
(declare-sort var1739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$to/-1283778806 (var289) ClassObject)
(declare-fun var1106-init () var1106)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1739) String)
(declare-fun cast-from-ClassObject-to-var1739 (ClassObject) var1739)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1106 String) void)
(declare-const null-var289 var289)
(declare-const null-ClassObject ClassObject)
(declare-const var2713 var289) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1 
(assert (not (= var2713 null-var289)))
(declare-const var931 ClassObject) ; Statement: r4 := @parameter0: java.lang.Class 
(assert (not (= var931 null-ClassObject)))
(define-const var3400 ClassObject (val$to/-1283778806 var2713)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1: java.lang.reflect.Type val$to> 
(define-const var889 Bool true) ; Statement: $z0 = $r1 instanceof java.lang.reflect.WildcardType 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (= (ite var889 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1472 var1106 var1106-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1949 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1949)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1949!1 String)
(assert (= var1949!1 ""))
(assert true)
(define-const var1252 String (append/672562846 var1949!1 "No type mapping from ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No type mapping from ") 
(declare-const var1949!2 String)
(assert (= var1949!2 (str.++ var1949!1 "No type mapping from ")))
(assert true)
(define-const var141 String (append/-1031950772 var1252 (cast-from-ClassObject-to-var1739 var931))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var1252!1 String)
(assert (str.prefixof var1252 var1252!1))
(assert true)
(define-const var2115 String (append/672562846 var141 " to ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ") 
(declare-const var141!1 String)
(assert (= var141!1 (str.++ var141 " to ")))
(define-const var3766 ClassObject (val$to/-1283778806 var2713)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1: java.lang.reflect.Type val$to> 
(assert true)
(define-const var102 String (append/-1031950772 var2115 (cast-from-ClassObject-to-var1739 var3766))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2115!1 String)
(assert (str.prefixof var2115 var2115!1))
(assert true)
(define-const var1925 String (toString/-2075883882 var102)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1472 var1925)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1472!1 var1106)
(declare-const var1925!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {val$to/-1283778806=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1], java.lang.reflect.Type), var1106-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1739=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var289=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1, var2713=r0, var931=r4, var3400=$r1, var889=$z0, var1106=java.lang.IllegalArgumentException, var1472=$r2, var1949=$r3, var1252=$r5, var1739=java.lang.Object, var141=$r6, var2115=$r8, var3766=$r7, var102=$r9, var1925=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1=var289, r0=var2713, r4=var931, $r1=var3400, $z0=var889, java.lang.IllegalArgumentException=var1106, $r2=var1472, $r3=var1949, $r5=var1252, java.lang.Object=var1739, $r6=var141, $r8=var2115, $r7=var3766, $r9=var102, $r10=var1925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1;	r4 := @parameter0: java.lang.Class;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1: java.lang.reflect.Type val$to>;	$z0 = $r1 instanceof java.lang.reflect.WildcardType;	if $z0 == 0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No type mapping from ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to ");	$r7 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeResolver$1: java.lang.reflect.Type val$to>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r2
;block_num 2