(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1661 0)
(declare-sort var374 0)
(declare-sort var3888 0)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/-1288230467 (var1661) var374)
(declare-fun serviceName/-989512506 (var374) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun state/1472221267 (var374) var3888)
(declare-fun append/-1031950772 (String var2811) String)
(declare-fun cast-from-var3888-to-var2811 (var3888) var2811)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1661 var1661)
(declare-const var944 var1661) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier 
(assert (not (= var944 null-var1661)))
(define-const var3056 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3056)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3056!1 String)
(assert (= var3056!1 ""))
(define-const var3503 var374 (this$0/-1288230467 var944)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService this$0> 
(assert true)
(define-const var306 String (serviceName/-989512506 var3503)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: java.lang.String serviceName()>() 
(assert true)
(define-const var2747 String (append/672562846 var3056!1 var306)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3056!2 String)
(assert (= var3056!2 (str.++ var3056!1 var306)))
(assert true)
(define-const var1297 String (append/672562846 var2747 " ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2747!1 String)
(assert (= var2747!1 (str.++ var2747 " ")))
(define-const var978 var374 (this$0/-1288230467 var944)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService this$0> 
(assert true)
(define-const var2172 var3888 (state/1472221267 var978)) ; Statement: $r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>() 
(assert true)
(define-const var1953 String (append/-1031950772 var1297 (cast-from-var3888-to-var2811 var2172))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1297!1 String)
(assert (str.prefixof var1297 var1297!1))
(assert true)
(define-const var541 String (toString/-2075883882 var1953)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/-1288230467=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService), serviceName/-989512506=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), state/1472221267=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3888-to-var2811=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1661=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier, var944=r1, var3056=$r0, var374=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService, var3503=$r2, var306=$r3, var2747=$r4, var1297=$r7, var978=$r5, var3888=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var2172=$r6, var2811=java.lang.Object, var1953=$r8, var541=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier=var1661, r1=var944, $r0=var3056, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService=var374, $r2=var3503, $r3=var306, $r4=var2747, $r7=var1297, $r5=var978, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var3888, $r6=var2172, java.lang.Object=var2811, $r8=var1953, $r9=var541}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService this$0>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: java.lang.String serviceName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService$ThreadNameSupplier: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService this$0>;	$r6 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractIdleService: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1