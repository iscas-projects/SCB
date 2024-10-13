(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1376 0)
(declare-sort var1793 0)
(declare-sort var3264 0)
(declare-sort var3662 0)
(declare-sort var3513 0)
(declare-sort var2980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nodeConnections/-952538010 (var1376) var3264)
(declare-fun get/-853137407 (var3264 var1793) var1793)
(declare-fun cast-from-var1793-to-var3662 (var1793) var3662)
(declare-fun var3513_checkNotNull/1446102589 (var1793) var1793)
(declare-fun var2980-init () var2980)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1793) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2980 String) void)
(declare-const null-var1376 var1376)
(declare-const null-var1793 var1793)
(declare-const null-var3662 var3662)
(declare-const var215 var1376) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph 
(assert (not (= var215 null-var1376)))
(declare-const var3770 var1793) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3770 null-var1793)))
(define-const var743 var3264 (nodeConnections/-952538010 var215)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections> 
(assert true)
(define-const var2737 var1793 (get/-853137407 var743 var3770)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2716 var3662 (cast-from-var1793-to-var3662 var2737)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2716 null-var3662)))) ; Negate: Cond: r4 != null  
;(assert (var3513_checkNotNull/1446102589 var3770)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var3770!1 var1793)
(define-const var3215 var2980 var2980-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2379 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2379)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2379!1 String)
(assert (= var2379!1 ""))
(assert true)
(define-const var691 String (append/672562846 var2379!1 "Node ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Node ") 
(declare-const var2379!2 String)
(assert (= var2379!2 (str.++ var2379!1 "Node ")))
(assert true)
(define-const var1361 String (append/-1031950772 var691 var3770!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var691!1 String)
(assert (str.prefixof var691 var691!1))
(assert true)
(define-const var2472 String (append/672562846 var1361 " is not an element of this graph.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an element of this graph.") 
(declare-const var1361!1 String)
(assert (= var1361!1 (str.++ var1361 " is not an element of this graph.")))
(assert true)
(define-const var2808 String (toString/-2075883882 var2472)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3215 var2808)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3215!1 var2980)
(declare-const var2808!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {nodeConnections/-952538010=([com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph], com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache), get/-853137407=([com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, java.lang.Object], java.lang.Object), cast-from-var1793-to-var3662=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections), var3513_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), var2980-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1376=com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph, var215=r0, var1793=java.lang.Object, var3770=r1, var3264=com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache, var743=$r2, var2737=$r3, var3662=com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections, var2716=r4, var3513=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2980=java.lang.IllegalArgumentException, var3215=$r5, var2379=$r6, var691=$r7, var1361=$r8, var2472=$r9, var2808=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph=var1376, r0=var215, java.lang.Object=var1793, r1=var3770, com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache=var3264, $r2=var743, $r3=var2737, com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections=var3662, r4=var2716, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3513, java.lang.IllegalArgumentException=var2980, $r5=var3215, $r6=var2379, $r7=var691, $r8=var1361, $r9=var2472, $r10=var2808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph;	r1 := @parameter0: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.graph.StandardValueGraph: com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache nodeConnections>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.graph.MapIteratorCache: java.lang.Object get(java.lang.Object)>(r1);	r4 = (com.google.javascript.jscomp.jarjar.com.google.common.graph.GraphConnections) $r3;	if r4 != null goto return r4;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Node ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an element of this graph.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2