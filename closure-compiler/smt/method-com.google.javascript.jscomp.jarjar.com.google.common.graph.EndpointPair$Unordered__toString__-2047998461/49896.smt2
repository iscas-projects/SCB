(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1146 0)
(declare-sort var1885 0)
(declare-sort var2080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeU/-855963046 (var2080) var1885)
(declare-fun cast-from-var1146-to-var2080 (var1146) var2080)
(declare-fun append/-1031950772 (String var1885) String)
(declare-fun nodeV/-855933255 (var2080) var1885)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1146 var1146)
(declare-const var2689 var1146) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered 
(assert (not (= var2689 null-var1146)))
(define-const var1667 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1667)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1667!1 String)
(assert (= var1667!1 ""))
(assert true)
(define-const var1792 String (append/672562846 var1667!1 "[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1667!2 String)
(assert (= var1667!2 (str.++ var1667!1 "[")))
(assert true)
(define-const var2898 var1885 (nodeU/-855963046 (cast-from-var1146-to-var2080 var2689))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered: java.lang.Object nodeU()>() 
(assert true)
(define-const var93 String (append/-1031950772 var1792 var2898)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1792!1 String)
(assert (str.prefixof var1792 var1792!1))
(assert true)
(define-const var1065 String (append/672562846 var93 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var93!1 String)
(assert (= var93!1 (str.++ var93 ", ")))
(assert true)
(define-const var1266 var1885 (nodeV/-855933255 (cast-from-var1146-to-var2080 var2689))) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered: java.lang.Object nodeV()>() 
(assert true)
(define-const var1961 String (append/-1031950772 var1065 var1266)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1065!1 String)
(assert (str.prefixof var1065 var1065!1))
(assert true)
(define-const var2644 String (append/672562846 var1961 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1961!1 String)
(assert (= var1961!1 (str.++ var1961 "]")))
(assert true)
(define-const var1537 String (toString/-2075883882 var2644)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeU/-855963046=([com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair], java.lang.Object), cast-from-var1146-to-var2080=([com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered], com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), nodeV/-855933255=([com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1146=com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered, var2689=r1, var1667=$r0, var1792=$r3, var1885=java.lang.Object, var2080=com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair, var2898=$r2, var93=$r4, var1065=$r6, var1266=$r5, var1961=$r7, var2644=$r8, var1537=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered=var1146, r1=var2689, $r0=var1667, $r3=var1792, java.lang.Object=var1885, com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair=var2080, $r2=var2898, $r4=var93, $r6=var1065, $r5=var1266, $r7=var1961, $r8=var2644, $r9=var1537}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered: java.lang.Object nodeU()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.graph.EndpointPair$Unordered: java.lang.Object nodeV()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1