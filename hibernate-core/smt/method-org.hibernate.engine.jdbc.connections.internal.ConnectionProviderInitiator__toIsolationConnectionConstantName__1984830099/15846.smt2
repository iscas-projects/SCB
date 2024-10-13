(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2149 0)
(declare-sort var3636 0)
(declare-sort var3036 0)
(declare-sort var3425 0)
(declare-sort var2826 0)
(declare-sort var3873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2149_get/1088891777 (var2149 var3036) var3036)
(declare-fun cast-from-Int-to-var3036 (Int) var3036)
(declare-fun cast-from-var3036-to-String (var3036) String)
(declare-fun var2826-init () var2826)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3036) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2826 String) void)
(declare-fun cast-from-var2826-to-var3873 (var2826) var3873)
(declare-const null-Int Int)
(declare-const var3636-ISOLATION_VALUE_CONSTANT_NAME_MAP var2149)
(declare-const null-String String)
(declare-const var87 Int) ; Statement: r0 := @parameter0: java.lang.Integer 
(assert (not (= var87 null-Int)))
(define-const var2465 var2149 var3636-ISOLATION_VALUE_CONSTANT_NAME_MAP) ; Statement: $r1 = <org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator: java.util.Map ISOLATION_VALUE_CONSTANT_NAME_MAP> 
(define-const var2233 var3036 (var2149_get/1088891777 var2465 (cast-from-Int-to-var3036 var87))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var366 String (cast-from-var3036-to-String var2233)) ; Statement: r3 = (java.lang.String) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var366 null-String)))) ; Negate: Cond: r3 != null  
(define-const var3110 var2826 var2826-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var2133 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2133)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2133!1 String)
(assert (= var2133!1 ""))
(assert true)
(define-const var1437 String (append/672562846 var2133!1 "Could not convert isolation value [")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not convert isolation value [") 
(declare-const var2133!2 String)
(assert (= var2133!2 (str.++ var2133!1 "Could not convert isolation value [")))
(assert true)
(define-const var1409 String (append/-1031950772 var1437 (cast-from-Int-to-var3036 var87))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1437!1 String)
(assert (str.prefixof var1437 var1437!1))
(assert true)
(define-const var3168 String (append/672562846 var1409 "] to java.sql.Connection constant name")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to java.sql.Connection constant name") 
(declare-const var1409!1 String)
(assert (= var1409!1 (str.++ var1409 "] to java.sql.Connection constant name")))
(assert true)
(define-const var3194 String (toString/-2075883882 var3168)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3110 var3194)) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r9) 

(declare-const var3110!1 var2826)
(declare-const var3194!1 String)
(define-const var1046 var3873 (cast-from-var2826-to-var3873 var3110!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2149_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3036=([java.lang.Integer], java.lang.Object), cast-from-var3036-to-String=([java.lang.Object], java.lang.String), var2826-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2826-to-var3873=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var87=r0, var2149=java.util.Map, var3636=org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator, var2465=$r1, var3036=java.lang.Object, var2233=$r2, var366=r3, var3425=null_type, var2826=org.hibernate.HibernateException, var3110=$r11, var2133=$r10, var1437=$r6, var1409=$r7, var3168=$r8, var3194=$r9, var3873=java.lang.Throwable, var1046=$r12}
; {r0=var87, java.util.Map=var2149, org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator=var3636, $r1=var2465, java.lang.Object=var3036, $r2=var2233, r3=var366, null_type=var3425, org.hibernate.HibernateException=var2826, $r11=var3110, $r10=var2133, $r6=var1437, $r7=var1409, $r8=var3168, $r9=var3194, java.lang.Throwable=var3873, $r12=var1046}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Integer;	$r1 = <org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator: java.util.Map ISOLATION_VALUE_CONSTANT_NAME_MAP>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (java.lang.String) $r2;	if r3 != null goto return r3;	$r11 = new org.hibernate.HibernateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not convert isolation value [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] to java.sql.Connection constant name");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2