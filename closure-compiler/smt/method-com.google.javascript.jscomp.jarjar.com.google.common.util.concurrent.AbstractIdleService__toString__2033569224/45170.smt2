(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var796 0)
(declare-sort var2050 0)
(declare-sort var221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun serviceName/-989512506 (var796) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun state/1472221267 (var796) var2050)
(declare-fun append/-1031950772 (String var221) String)
(declare-fun cast-from-var2050-to-var221 (var2050) var221)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var796 var796)
(declare-const var2617 var796) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService 
(assert (not (= var2617 null-var796)))
(define-const var1344 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1344)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1344!1 String)
(assert (= var1344!1 ""))
(assert true)
(define-const var3923 String (serviceName/-989512506 var2617)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: java.lang.String serviceName()>() 
(assert true)
(define-const var2255 String (append/672562846 var1344!1 var3923)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1344!2 String)
(assert (= var1344!2 (str.++ var1344!1 var3923)))
(assert true)
(define-const var2156 String (append/672562846 var2255 " [")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var2255!1 String)
(assert (= var2255!1 (str.++ var2255 " [")))
(assert true)
(define-const var1285 var2050 (state/1472221267 var2617)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>() 
(assert true)
(define-const var1946 String (append/-1031950772 var2156 (cast-from-var2050-to-var221 var1285))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2156!1 String)
(assert (str.prefixof var2156 var2156!1))
(assert true)
(define-const var1995 String (append/672562846 var1946 "]")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1946!1 String)
(assert (= var1946!1 (str.++ var1946 "]")))
(assert true)
(define-const var2778 String (toString/-2075883882 var1995)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), serviceName/-989512506=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), state/1472221267=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2050-to-var221=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var796=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService, var2617=r1, var1344=$r0, var3923=$r2, var2255=$r3, var2156=$r5, var2050=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var1285=$r4, var221=java.lang.Object, var1946=$r6, var1995=$r7, var2778=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService=var796, r1=var2617, $r0=var1344, $r2=var3923, $r3=var2255, $r5=var2156, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var2050, $r4=var1285, java.lang.Object=var221, $r6=var1946, $r7=var1995, $r8=var2778}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: java.lang.String serviceName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1