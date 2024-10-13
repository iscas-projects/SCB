(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var315 0)
(declare-sort var327 0)
(declare-sort var2387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun serviceName/675024725 (var315) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun state/1723537444 (var315) var327)
(declare-fun append/-1031950772 (String var2387) String)
(declare-fun cast-from-var327-to-var2387 (var327) var2387)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var315 var315)
(declare-const var1694 var315) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService 
(assert (not (= var1694 null-var315)))
(define-const var1311 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1311)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1311!1 String)
(assert (= var1311!1 ""))
(assert true)
(define-const var2859 String (serviceName/675024725 var1694)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService: java.lang.String serviceName()>() 
(assert true)
(define-const var3277 String (append/672562846 var1311!1 var2859)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1311!2 String)
(assert (= var1311!2 (str.++ var1311!1 var2859)))
(assert true)
(define-const var2577 String (append/672562846 var3277 " [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3277!1 String)
(assert (= var3277!1 (str.++ var3277 " [")))
(assert true)
(define-const var3147 var327 (state/1723537444 var1694)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>() 
(assert true)
(define-const var2664 String (append/-1031950772 var2577 (cast-from-var327-to-var2387 var3147))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2577!1 String)
(assert (str.prefixof var2577 var2577!1))
(assert true)
(define-const var3038 String (append/672562846 var2664 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2664!1 String)
(assert (= var2664!1 (str.++ var2664 "]")))
(assert true)
(define-const var408 String (toString/-2075883882 var3038)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), serviceName/675024725=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), state/1723537444=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var327-to-var2387=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var315=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService, var1694=r1, var1311=$r0, var2859=$r2, var3277=$r3, var2577=$r5, var327=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var3147=$r4, var2387=java.lang.Object, var2664=$r6, var3038=$r7, var408=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService=var315, r1=var1694, $r0=var1311, $r2=var2859, $r3=var3277, $r5=var2577, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var327, $r4=var3147, java.lang.Object=var2387, $r6=var2664, $r7=var3038, $r8=var408}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService: java.lang.String serviceName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1