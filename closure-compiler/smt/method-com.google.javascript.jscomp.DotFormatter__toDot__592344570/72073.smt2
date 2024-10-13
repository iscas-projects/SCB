(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var490 0)
(declare-sort var3582 0)
(declare-sort var2782 0)
(declare-sort var2146 0)
(declare-sort var2272 0)
(declare-sort var776 0)
(declare-sort var1510 0)
(declare-sort var1751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var490_isDirected/939449113 (var490) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var490_getName/-781242019 (var490) String)
(declare-fun var490_getGraphvizNodes/2068304435 (var490) var3582)
(declare-fun var3582_size/-959786421 (var3582) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2782_sort/-2094180924 ((Array Int var2146)) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2146__ ((Array Int String)) (Array Int var2146))
(declare-fun var490_getGraphvizEdges/-1818805138 (var490) var3582)
(declare-fun var776_bootstrap$/-1933853639 () var2272)
(declare-fun var1510_comparing/-789310709 (var2272) var1510)
(declare-fun var1751_bootstrap$/902233811 () var2272)
(declare-fun var1510_thenComparing/-1068777682 (var1510 var2272) var1510)
(declare-fun var3582_sort/-1566373175 (var3582 var1510) void)
(declare-fun var3582_iterator/-912451715 (var3582) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var490 var490)
(declare-const var1698 var490) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph 
(assert (not (= var1698 null-var490)))
(define-const var1011 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1011)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1011!1 String)
(assert (= var1011!1 ""))
(define-const var3484 Bool (var490_isDirected/939449113 var1698)) ; Statement: $z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z0 == 0 goto $r26 = "graph" 
(assert (= (ite var3484 1 0) 0)) ; Cond: $z0 == 0 
(define-const var665 String "graph") ; Statement: $r26 = "graph" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1011!1 var665)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1011!2 String)
(assert (= var1011!2 (str.++ var1011!1 var665)))
(assert true)
;(assert (append/672562846 var1011!2 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1011!3 String)
(assert (= var1011!3 (str.++ var1011!2 "  ")))
(define-const var2437 String (var490_getName/-781242019 var1698)) ; Statement: $r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1011!3 var2437)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1011!4 String)
(assert (= var1011!4 (str.++ var1011!3 var2437)))
(assert true)
;(assert (append/672562846 var1011!4 " {\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n") 
(declare-const var1011!5 String)
(assert (= var1011!5 (str.++ var1011!4 " {\n")))
(assert true)
;(assert (append/672562846 var1011!5 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1011!6 String)
(assert (= var1011!6 (str.++ var1011!5 "  ")))
(assert true)
;(assert (append/672562846 var1011!6 "node [color=lightblue2, style=filled];\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n") 
(declare-const var1011!7 String)
(assert (= var1011!7 (str.++ var1011!6 "node [color=lightblue2, style=filled];\n")))
(define-const var2374 Bool (var490_isDirected/939449113 var1698)) ; Statement: $z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z1 == 0 goto $r27 = " -- " 
(assert (= (ite var2374 1 0) 0)) ; Cond: $z1 == 0 
(define-const var415 String " -- ") ; Statement: $r27 = " -- " 
(assert true) ; Non Conditional
(define-const var1809 String var415) ; Statement: r3 = $r27 
(define-const var3626 var3582 (var490_getGraphvizNodes/2068304435 var1698)) ; Statement: $r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>() 
(define-const var3787 Int (var3582_size/-959786421 var3626)) ; Statement: $i0 = interfaceinvoke $r24.<java.util.List: int size()>() 
(define-const var2389 (Array Int String) arr-String-init) ; Statement: $r25 = newarray (java.lang.String)[$i0] 
(define-const var1446 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var532 Int (getLength-Arr-String-1 var2389)) ; Statement: $i2 = lengthof $r25 
 ; Statement: if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 
(assert (>= var1446 var532)) ; Cond: i1 >= $i2 
;(assert (var2782_sort/-2094180924 (cast-from-__Array__Int__String__-to-__Array__Int__var2146__ var2389))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 

(declare-const var2389!1 (Array Int String))
(define-const var2518 Int (getLength-Arr-String-1 var2389!1)) ; Statement: i3 = lengthof $r25 
(define-const var481 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(assert (>= var481 var2518)) ; Cond: i4 >= i3 
(define-const var1057 var3582 (var490_getGraphvizEdges/-1818805138 var1698)) ; Statement: r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(define-const var2267 var2272 var776_bootstrap$/-1933853639) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>() 
(define-const var2233 var1510 (var1510_comparing/-789310709 var2267)) ; Statement: $r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4) 
(define-const var1274 var2272 var1751_bootstrap$/902233811) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>() 
(define-const var2835 var1510 (var1510_thenComparing/-1068777682 var2233 var1274)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5) 
;(assert (var3582_sort/-1566373175 var1057 var2835)) ; Statement: interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7) 

(declare-const var1057!1 var3582)
(declare-const var2835!1 var1510)
(define-const var2263 Iterator (var3582_iterator/-912451715 var1057!1)) ; Statement: r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var693 Bool (Iterator_hasNext/-1669924200 var2263)) ; Statement: $z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(assert (= (ite var693 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var1011!7 "}\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(declare-const var1011!8 String)
(assert (= var1011!8 (str.++ var1011!7 "}\n")))
(assert true)
(define-const var1715 String (toString/-2075883882 var1011!8)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var490_isDirected/939449113=([com.google.javascript.jscomp.graph.GraphvizGraph], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var490_getName/-781242019=([com.google.javascript.jscomp.graph.GraphvizGraph], java.lang.String), var490_getGraphvizNodes/2068304435=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var3582_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2782_sort/-2094180924=([java.lang.Object[]], void), cast-from-__Array__Int__String__-to-__Array__Int__var2146__=([java.lang.String[]], java.lang.Object[]), var490_getGraphvizEdges/-1818805138=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var776_bootstrap$/-1933853639=([], java.util.function.Function), var1510_comparing/-789310709=([java.util.function.Function], java.util.Comparator), var1751_bootstrap$/902233811=([], java.util.function.Function), var1510_thenComparing/-1068777682=([java.util.Comparator, java.util.function.Function], java.util.Comparator), var3582_sort/-1566373175=([java.util.List, java.util.Comparator], void), var3582_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var490=com.google.javascript.jscomp.graph.GraphvizGraph, var1698=r1, var1011=$r0, var3484=$z0, var665=$r26, var2437=$r2, var2374=$z1, var415=$r27, var1809=r3, var3582=java.util.List, var3626=$r24, var3787=$i0, var2389=$r25, var1446=i1, var532=$i2, var2782=java.util.Arrays, var2146=java.lang.Object, var2518=i3, var481=i4, var1057=r29, var2272=java.util.function.Function, var776=com.google.javascript.jscomp.DotFormatter$getNode1Id__1397, var2267=$r4, var1510=java.util.Comparator, var2233=$r6, var1751=com.google.javascript.jscomp.DotFormatter$getNode2Id__1402, var1274=$r5, var2835=$r7, var2263=r30, var693=$z2, var1715=$r8}
; {com.google.javascript.jscomp.graph.GraphvizGraph=var490, r1=var1698, $r0=var1011, $z0=var3484, $r26=var665, $r2=var2437, $z1=var2374, $r27=var415, r3=var1809, java.util.List=var3582, $r24=var3626, $i0=var3787, $r25=var2389, i1=var1446, $i2=var532, java.util.Arrays=var2782, java.lang.Object=var2146, i3=var2518, i4=var481, r29=var1057, java.util.function.Function=var2272, com.google.javascript.jscomp.DotFormatter$getNode1Id__1397=var776, $r4=var2267, java.util.Comparator=var1510, $r6=var2233, com.google.javascript.jscomp.DotFormatter$getNode2Id__1402=var1751, $r5=var1274, $r7=var2835, r30=var2263, $z2=var693, $r8=var1715}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z0 == 0 goto $r26 = "graph";	$r26 = "graph";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n");	$z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z1 == 0 goto $r27 = " -- ";	$r27 = " -- ";	r3 = $r27;	$r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>();	$i0 = interfaceinvoke $r24.<java.util.List: int size()>();	$r25 = newarray (java.lang.String)[$i0];	i1 = 0;	$i2 = lengthof $r25;	if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	i3 = lengthof $r25;	i4 = 0;	if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	$r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>();	$r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4);	$r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>();	$r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5);	interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7);	r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 11