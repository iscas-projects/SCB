(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1669 0)
(declare-sort var1598 0)
(declare-sort var646 0)
(declare-sort var3063 0)
(declare-sort var1587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/-206262953 (var1669) var1598)
(declare-fun serviceName/675024725 (var1598) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun state/170621255 (var3063) var646)
(declare-fun cast-from-var1669-to-var3063 (var1669) var3063)
(declare-fun append/-1031950772 (String var1587) String)
(declare-fun cast-from-var646-to-var1587 (var646) var1587)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1669 var1669)
(declare-const var45 var1669) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate 
(assert (not (= var45 null-var1669)))
(define-const var2650 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2650)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2650!1 String)
(assert (= var2650!1 ""))
(define-const var2958 var1598 (this$0/-206262953 var45)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService this$0> 
(assert true)
(define-const var2085 String (serviceName/675024725 var2958)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService: java.lang.String serviceName()>() 
(assert true)
(define-const var976 String (append/672562846 var2650!1 var2085)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2650!2 String)
(assert (= var2650!2 (str.++ var2650!1 var2085)))
(assert true)
(define-const var1703 String (append/672562846 var976 " ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var976!1 String)
(assert (= var976!1 (str.++ var976 " ")))
(assert true)
(define-const var506 var646 (state/170621255 (cast-from-var1669-to-var3063 var45))) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>() 
(assert true)
(define-const var742 String (append/-1031950772 var1703 (cast-from-var646-to-var1587 var506))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1703!1 String)
(assert (str.prefixof var1703 var1703!1))
(assert true)
(define-const var2461 String (toString/-2075883882 var742)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/-206262953=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService), serviceName/675024725=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), state/170621255=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State), cast-from-var1669-to-var3063=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var646-to-var1587=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1669=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate, var45=r1, var2650=$r0, var1598=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService, var2958=$r2, var2085=$r3, var976=$r4, var1703=$r6, var646=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State, var3063=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService, var506=$r5, var1587=java.lang.Object, var742=$r7, var2461=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate=var1669, r1=var45, $r0=var2650, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService=var1598, $r2=var2958, $r3=var2085, $r4=var976, $r6=var1703, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State=var646, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractService=var3063, $r5=var506, java.lang.Object=var1587, $r7=var742, $r8=var2461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService this$0>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService: java.lang.String serviceName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractScheduledService$ServiceDelegate: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Service$State state()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1