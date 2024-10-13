(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2717 0)
(declare-sort var1879 0)
(declare-sort var600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun serviceName/206294186 (var2717) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun state/-567309585 (var2717) var1879)
(declare-fun append/-1031950772 (String var600) String)
(declare-fun cast-from-var1879-to-var600 (var1879) var600)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2717 var2717)
(declare-const var3250 var2717) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService 
(assert (not (= var3250 null-var2717)))
(define-const var2450 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2450)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2450!1 String)
(assert (= var2450!1 ""))
(assert true)
(define-const var2311 String (serviceName/206294186 var3250)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService: java.lang.String serviceName()>() 
(assert true)
(define-const var3508 String (append/672562846 var2450!1 var2311)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2450!2 String)
(assert (= var2450!2 (str.++ var2450!1 var2311)))
(assert true)
(define-const var3691 String (append/672562846 var3508 " [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var3508!1 String)
(assert (= var3508!1 (str.++ var3508 " [")))
(assert true)
(define-const var792 var1879 (state/-567309585 var3250)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>() 
(assert true)
(define-const var510 String (append/-1031950772 var3691 (cast-from-var1879-to-var600 var792))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3691!1 String)
(assert (str.prefixof var3691 var3691!1))
(assert true)
(define-const var3673 String (append/672562846 var510 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var510!1 String)
(assert (= var510!1 (str.++ var510 "]")))
(assert true)
(define-const var1684 String (toString/-2075883882 var3673)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), serviceName/206294186=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), state/-567309585=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1879-to-var600=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2717=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService, var3250=r1, var2450=$r0, var2311=$r2, var3508=$r3, var3691=$r5, var1879=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var792=$r4, var600=java.lang.Object, var510=$r6, var3673=$r7, var1684=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService=var2717, r1=var3250, $r0=var2450, $r2=var2311, $r3=var3508, $r5=var3691, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var1879, $r4=var792, java.lang.Object=var600, $r6=var510, $r7=var3673, $r8=var1684}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService: java.lang.String serviceName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractExecutionThreadService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1