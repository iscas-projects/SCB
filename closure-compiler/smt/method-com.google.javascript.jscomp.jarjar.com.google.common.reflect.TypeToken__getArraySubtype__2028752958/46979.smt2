(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1899 0)
(declare-sort var1213 0)
(declare-sort var3983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun var1213-init () var1213)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3983) String)
(declare-fun cast-from-ClassObject-to-var3983 (ClassObject) var3983)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var1899-to-var3983 (var1899) var3983)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1213 String) void)
(declare-const null-var1899 var1899)
(declare-const null-ClassObject ClassObject)
(declare-const var2257 var1899) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var2257 null-var1899)))
(declare-const var1095 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1095 null-ClassObject)))
(assert true)
(define-const var3802 ClassObject (getComponentType/1960034130 var1095)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>() 
 ; Statement: if r1 != null goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>() 
(assert (not (not (= var3802 null-ClassObject)))) ; Negate: Cond: r1 != null  
(define-const var956 var1213 var1213-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var1037 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1037)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1037!1 String)
(assert (= var1037!1 ""))
(assert true)
(define-const var1598 String (append/-1031950772 var1037!1 (cast-from-ClassObject-to-var3983 var1095))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1037!2 String)
(assert (str.prefixof var1037!1 var1037!2))
(assert true)
(define-const var1456 String (append/672562846 var1598 " does not appear to be a subtype of ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not appear to be a subtype of ") 
(declare-const var1598!1 String)
(assert (= var1598!1 (str.++ var1598 " does not appear to be a subtype of ")))
(assert true)
(define-const var1555 String (append/-1031950772 var1456 (cast-from-var1899-to-var3983 var2257))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1456!1 String)
(assert (str.prefixof var1456 var1456!1))
(assert true)
(define-const var3111 String (toString/-2075883882 var1555)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var956 var3111)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var956!1 var1213)
(declare-const var3111!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getComponentType/1960034130=([java.lang.Class], java.lang.Class), var1213-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3983=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var1899-to-var3983=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1899=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2257=r2, var1095=r0, var3802=r1, var1213=java.lang.IllegalArgumentException, var956=$r10, var1037=$r11, var3983=java.lang.Object, var1598=$r12, var1456=$r13, var1555=$r14, var3111=$r15}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var1899, r2=var2257, r0=var1095, r1=var3802, java.lang.IllegalArgumentException=var1213, $r10=var956, $r11=var1037, java.lang.Object=var3983, $r12=var1598, $r13=var1456, $r14=var1555, $r15=var3111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>();	if r1 != null goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getComponentType()>();	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not appear to be a subtype of ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 2