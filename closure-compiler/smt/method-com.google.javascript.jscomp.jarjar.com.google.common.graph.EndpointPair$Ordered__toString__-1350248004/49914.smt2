(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1902 0)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun source/2051631643 (var1902) var1315)
(declare-fun append/-1031950772 (String var1315) String)
(declare-fun target/-1360501531 (var1902) var1315)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1902 var1902)
(declare-const var747 var1902) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered 
(assert (not (= var747 null-var1902)))
(define-const var1934 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1934)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1934!1 String)
(assert (= var1934!1 ""))
(assert true)
(define-const var3027 String (append/672562846 var1934!1 "<")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1934!2 String)
(assert (= var1934!2 (str.++ var1934!1 "<")))
(assert true)
(define-const var2492 var1315 (source/2051631643 var747)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered: java.lang.Object source()>() 
(assert true)
(define-const var3912 String (append/-1031950772 var3027 var2492)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3027!1 String)
(assert (str.prefixof var3027 var3027!1))
(assert true)
(define-const var1023 String (append/672562846 var3912 " -> ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var3912!1 String)
(assert (= var3912!1 (str.++ var3912 " -> ")))
(assert true)
(define-const var3449 var1315 (target/-1360501531 var747)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered: java.lang.Object target()>() 
(assert true)
(define-const var3188 String (append/-1031950772 var1023 var3449)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1023!1 String)
(assert (str.prefixof var1023 var1023!1))
(assert true)
(define-const var824 String (append/672562846 var3188 ">")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3188!1 String)
(assert (= var3188!1 (str.++ var3188 ">")))
(assert true)
(define-const var2929 String (toString/-2075883882 var824)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), source/2051631643=([com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), target/-1360501531=([com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1902=com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered, var747=r1, var1934=$r0, var3027=$r3, var1315=java.lang.Object, var2492=$r2, var3912=$r4, var1023=$r6, var3449=$r5, var3188=$r7, var824=$r8, var2929=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered=var1902, r1=var747, $r0=var1934, $r3=var3027, java.lang.Object=var1315, $r2=var2492, $r4=var3912, $r6=var1023, $r5=var3449, $r7=var3188, $r8=var824, $r9=var2929}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered: java.lang.Object source()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Ordered: java.lang.Object target()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1