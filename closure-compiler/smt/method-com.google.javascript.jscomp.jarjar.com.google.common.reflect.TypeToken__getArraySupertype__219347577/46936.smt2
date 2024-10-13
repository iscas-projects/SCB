(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1039 0)
(declare-sort var2402 0)
(declare-sort var1163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getComponentType/-1185830126 (var1039) var1039)
(declare-fun var2402-init () var2402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1163) String)
(declare-fun cast-from-ClassObject-to-var1163 (ClassObject) var1163)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var1039-to-var1163 (var1039) var1163)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2402 String) void)
(declare-const null-var1039 var1039)
(declare-const null-ClassObject ClassObject)
(declare-const var2950 var1039) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var2950 null-var1039)))
(declare-const var3294 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var3294 null-ClassObject)))
(assert true)
(define-const var1714 var1039 (getComponentType/-1185830126 var2950)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>() 
 ; Statement: if r1 != null goto $r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class getComponentType()>() 
(assert (not (not (= var1714 null-var1039)))) ; Negate: Cond: r1 != null  
(define-const var1761 var2402 var2402-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var2754 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2754)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2754!1 String)
(assert (= var2754!1 ""))
(assert true)
(define-const var3726 String (append/-1031950772 var2754!1 (cast-from-ClassObject-to-var1163 var3294))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2754!2 String)
(assert (str.prefixof var2754!1 var2754!2))
(assert true)
(define-const var2177 String (append/672562846 var3726 " isn\u0027t a super type of ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t a super type of ") 
(declare-const var3726!1 String)
(assert (= var3726!1 (str.++ var3726 " isn\u0027t a super type of ")))
(assert true)
(define-const var2959 String (append/-1031950772 var2177 (cast-from-var1039-to-var1163 var2950))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2177!1 String)
(assert (str.prefixof var2177 var2177!1))
(assert true)
(define-const var149 String (toString/-2075883882 var2959)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1761 var149)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var1761!1 var2402)
(declare-const var149!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getComponentType/-1185830126=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), var2402-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1163=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var1039-to-var1163=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1039=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2950=r0, var3294=r2, var1714=r1, var2402=java.lang.IllegalArgumentException, var1761=$r10, var2754=$r11, var1163=java.lang.Object, var3726=$r12, var2177=$r13, var2959=$r14, var149=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var1039, r0=var2950, r2=var3294, r1=var1714, java.lang.IllegalArgumentException=var2402, $r10=var1761, $r11=var2754, java.lang.Object=var1163, $r12=var3726, $r13=var2177, $r14=var2959, $r15=var149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	r2 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>();	if r1 != null goto $r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class getComponentType()>();	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t a super type of ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 2