(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1162 0)
(declare-sort var1224 0)
(declare-sort var159 0)
(declare-sort var3836 0)
(declare-sort var3385 0)
(declare-sort var432 0)
(declare-sort var954 0)
(declare-sort var3000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1162_isDirected/939449113 (var1162) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1162_getName/-781242019 (var1162) String)
(declare-fun var1162_getGraphvizNodes/2068304435 (var1162) var1224)
(declare-fun var1224_size/-959786421 (var1224) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var159_sort/-2094180924 ((Array Int var3836)) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3836__ ((Array Int String)) (Array Int var3836))
(declare-fun var1162_getGraphvizEdges/-1818805138 (var1162) var1224)
(declare-fun var432_bootstrap$/-1933853639 () var3385)
(declare-fun var954_comparing/-789310709 (var3385) var954)
(declare-fun var3000_bootstrap$/902233811 () var3385)
(declare-fun var954_thenComparing/-1068777682 (var954 var3385) var954)
(declare-fun var1224_sort/-1566373175 (var1224 var954) void)
(declare-fun var1224_iterator/-912451715 (var1224) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1162 var1162)
(declare-const var2151 var1162) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph 
(assert (not (= var2151 null-var1162)))
(define-const var13 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var13)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var13!1 String)
(assert (= var13!1 ""))
(define-const var2912 Bool (var1162_isDirected/939449113 var2151)) ; Statement: $z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z0 == 0 goto $r26 = "graph" 
(assert (= (ite var2912 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2558 String "graph") ; Statement: $r26 = "graph" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var13!1 var2558)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var13!2 String)
(assert (= var13!2 (str.++ var13!1 var2558)))
(assert true)
;(assert (append/672562846 var13!2 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var13!3 String)
(assert (= var13!3 (str.++ var13!2 "  ")))
(define-const var3104 String (var1162_getName/-781242019 var2151)) ; Statement: $r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var13!3 var3104)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var13!4 String)
(assert (= var13!4 (str.++ var13!3 var3104)))
(assert true)
;(assert (append/672562846 var13!4 " {\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n") 
(declare-const var13!5 String)
(assert (= var13!5 (str.++ var13!4 " {\n")))
(assert true)
;(assert (append/672562846 var13!5 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var13!6 String)
(assert (= var13!6 (str.++ var13!5 "  ")))
(assert true)
;(assert (append/672562846 var13!6 "node [color=lightblue2, style=filled];\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n") 
(declare-const var13!7 String)
(assert (= var13!7 (str.++ var13!6 "node [color=lightblue2, style=filled];\n")))
(define-const var3265 Bool (var1162_isDirected/939449113 var2151)) ; Statement: $z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z1 == 0 goto $r27 = " -- " 
(assert (not (= (ite var3265 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2576 String " -> ") ; Statement: $r27 = " -> " 
 ; Statement: goto [?= r3 = $r27] 
(assert true) ; Non Conditional
(define-const var3862 String var2576) ; Statement: r3 = $r27 
(define-const var1191 var1224 (var1162_getGraphvizNodes/2068304435 var2151)) ; Statement: $r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>() 
(define-const var2269 Int (var1224_size/-959786421 var1191)) ; Statement: $i0 = interfaceinvoke $r24.<java.util.List: int size()>() 
(define-const var2017 (Array Int String) arr-String-init) ; Statement: $r25 = newarray (java.lang.String)[$i0] 
(define-const var3047 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2225 Int (getLength-Arr-String-1 var2017)) ; Statement: $i2 = lengthof $r25 
 ; Statement: if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 
(assert (>= var3047 var2225)) ; Cond: i1 >= $i2 
;(assert (var159_sort/-2094180924 (cast-from-__Array__Int__String__-to-__Array__Int__var3836__ var2017))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 

(declare-const var2017!1 (Array Int String))
(define-const var1356 Int (getLength-Arr-String-1 var2017!1)) ; Statement: i3 = lengthof $r25 
(define-const var385 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(assert (>= var385 var1356)) ; Cond: i4 >= i3 
(define-const var696 var1224 (var1162_getGraphvizEdges/-1818805138 var2151)) ; Statement: r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(define-const var3843 var3385 var432_bootstrap$/-1933853639) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>() 
(define-const var201 var954 (var954_comparing/-789310709 var3843)) ; Statement: $r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4) 
(define-const var2708 var3385 var3000_bootstrap$/902233811) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>() 
(define-const var2817 var954 (var954_thenComparing/-1068777682 var201 var2708)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5) 
;(assert (var1224_sort/-1566373175 var696 var2817)) ; Statement: interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7) 

(declare-const var696!1 var1224)
(declare-const var2817!1 var954)
(define-const var2350 Iterator (var1224_iterator/-912451715 var696!1)) ; Statement: r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3013 Bool (Iterator_hasNext/-1669924200 var2350)) ; Statement: $z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(assert (= (ite var3013 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var13!7 "}\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(declare-const var13!8 String)
(assert (= var13!8 (str.++ var13!7 "}\n")))
(assert true)
(define-const var2292 String (toString/-2075883882 var13!8)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1162_isDirected/939449113=([com.google.javascript.jscomp.graph.GraphvizGraph], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1162_getName/-781242019=([com.google.javascript.jscomp.graph.GraphvizGraph], java.lang.String), var1162_getGraphvizNodes/2068304435=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var1224_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var159_sort/-2094180924=([java.lang.Object[]], void), cast-from-__Array__Int__String__-to-__Array__Int__var3836__=([java.lang.String[]], java.lang.Object[]), var1162_getGraphvizEdges/-1818805138=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var432_bootstrap$/-1933853639=([], java.util.function.Function), var954_comparing/-789310709=([java.util.function.Function], java.util.Comparator), var3000_bootstrap$/902233811=([], java.util.function.Function), var954_thenComparing/-1068777682=([java.util.Comparator, java.util.function.Function], java.util.Comparator), var1224_sort/-1566373175=([java.util.List, java.util.Comparator], void), var1224_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1162=com.google.javascript.jscomp.graph.GraphvizGraph, var2151=r1, var13=$r0, var2912=$z0, var2558=$r26, var3104=$r2, var3265=$z1, var2576=$r27, var3862=r3, var1224=java.util.List, var1191=$r24, var2269=$i0, var2017=$r25, var3047=i1, var2225=$i2, var159=java.util.Arrays, var3836=java.lang.Object, var1356=i3, var385=i4, var696=r29, var3385=java.util.function.Function, var432=com.google.javascript.jscomp.DotFormatter$getNode1Id__1397, var3843=$r4, var954=java.util.Comparator, var201=$r6, var3000=com.google.javascript.jscomp.DotFormatter$getNode2Id__1402, var2708=$r5, var2817=$r7, var2350=r30, var3013=$z2, var2292=$r8}
; {com.google.javascript.jscomp.graph.GraphvizGraph=var1162, r1=var2151, $r0=var13, $z0=var2912, $r26=var2558, $r2=var3104, $z1=var3265, $r27=var2576, r3=var3862, java.util.List=var1224, $r24=var1191, $i0=var2269, $r25=var2017, i1=var3047, $i2=var2225, java.util.Arrays=var159, java.lang.Object=var3836, i3=var1356, i4=var385, r29=var696, java.util.function.Function=var3385, com.google.javascript.jscomp.DotFormatter$getNode1Id__1397=var432, $r4=var3843, java.util.Comparator=var954, $r6=var201, com.google.javascript.jscomp.DotFormatter$getNode2Id__1402=var3000, $r5=var2708, $r7=var2817, r30=var2350, $z2=var3013, $r8=var2292}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z0 == 0 goto $r26 = "graph";	$r26 = "graph";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n");	$z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z1 == 0 goto $r27 = " -- ";	$r27 = " -> ";	goto [?= r3 = $r27];	r3 = $r27;	$r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>();	$i0 = interfaceinvoke $r24.<java.util.List: int size()>();	$r25 = newarray (java.lang.String)[$i0];	i1 = 0;	$i2 = lengthof $r25;	if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	i3 = lengthof $r25;	i4 = 0;	if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	$r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>();	$r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4);	$r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>();	$r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5);	interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7);	r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 11