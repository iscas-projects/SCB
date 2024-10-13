(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1481 0)
(declare-sort var472 0)
(declare-sort var1338 0)
(declare-sort var2084 0)
(declare-sort var3633 0)
(declare-sort var1119 0)
(declare-sort var984 0)
(declare-sort var3285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1481_isDirected/939449113 (var1481) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1481_getName/-781242019 (var1481) String)
(declare-fun var1481_getGraphvizNodes/2068304435 (var1481) var472)
(declare-fun var472_size/-959786421 (var472) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1338_sort/-2094180924 ((Array Int var2084)) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2084__ ((Array Int String)) (Array Int var2084))
(declare-fun var1481_getGraphvizEdges/-1818805138 (var1481) var472)
(declare-fun var1119_bootstrap$/-1933853639 () var3633)
(declare-fun var984_comparing/-789310709 (var3633) var984)
(declare-fun var3285_bootstrap$/902233811 () var3633)
(declare-fun var984_thenComparing/-1068777682 (var984 var3633) var984)
(declare-fun var472_sort/-1566373175 (var472 var984) void)
(declare-fun var472_iterator/-912451715 (var472) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1481 var1481)
(declare-const var2414 var1481) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph 
(assert (not (= var2414 null-var1481)))
(define-const var189 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var189)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var189!1 String)
(assert (= var189!1 ""))
(define-const var2727 Bool (var1481_isDirected/939449113 var2414)) ; Statement: $z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z0 == 0 goto $r26 = "graph" 
(assert (not (= (ite var2727 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3451 String "digraph") ; Statement: $r26 = "digraph" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var189!1 var3451)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var189!2 String)
(assert (= var189!2 (str.++ var189!1 var3451)))
(assert true)
;(assert (append/672562846 var189!2 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var189!3 String)
(assert (= var189!3 (str.++ var189!2 "  ")))
(define-const var3655 String (var1481_getName/-781242019 var2414)) ; Statement: $r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var189!3 var3655)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var189!4 String)
(assert (= var189!4 (str.++ var189!3 var3655)))
(assert true)
;(assert (append/672562846 var189!4 " {\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n") 
(declare-const var189!5 String)
(assert (= var189!5 (str.++ var189!4 " {\n")))
(assert true)
;(assert (append/672562846 var189!5 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var189!6 String)
(assert (= var189!6 (str.++ var189!5 "  ")))
(assert true)
;(assert (append/672562846 var189!6 "node [color=lightblue2, style=filled];\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n") 
(declare-const var189!7 String)
(assert (= var189!7 (str.++ var189!6 "node [color=lightblue2, style=filled];\n")))
(define-const var3850 Bool (var1481_isDirected/939449113 var2414)) ; Statement: $z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z1 == 0 goto $r27 = " -- " 
(assert (not (= (ite var3850 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var605 String " -> ") ; Statement: $r27 = " -> " 
 ; Statement: goto [?= r3 = $r27] 
(assert true) ; Non Conditional
(define-const var1248 String var605) ; Statement: r3 = $r27 
(define-const var2510 var472 (var1481_getGraphvizNodes/2068304435 var2414)) ; Statement: $r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>() 
(define-const var664 Int (var472_size/-959786421 var2510)) ; Statement: $i0 = interfaceinvoke $r24.<java.util.List: int size()>() 
(define-const var3686 (Array Int String) arr-String-init) ; Statement: $r25 = newarray (java.lang.String)[$i0] 
(define-const var552 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var755 Int (getLength-Arr-String-1 var3686)) ; Statement: $i2 = lengthof $r25 
 ; Statement: if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 
(assert (>= var552 var755)) ; Cond: i1 >= $i2 
;(assert (var1338_sort/-2094180924 (cast-from-__Array__Int__String__-to-__Array__Int__var2084__ var3686))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 

(declare-const var3686!1 (Array Int String))
(define-const var1191 Int (getLength-Arr-String-1 var3686!1)) ; Statement: i3 = lengthof $r25 
(define-const var728 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(assert (>= var728 var1191)) ; Cond: i4 >= i3 
(define-const var1843 var472 (var1481_getGraphvizEdges/-1818805138 var2414)) ; Statement: r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(define-const var2751 var3633 var1119_bootstrap$/-1933853639) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>() 
(define-const var1160 var984 (var984_comparing/-789310709 var2751)) ; Statement: $r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4) 
(define-const var3683 var3633 var3285_bootstrap$/902233811) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>() 
(define-const var1398 var984 (var984_thenComparing/-1068777682 var1160 var3683)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5) 
;(assert (var472_sort/-1566373175 var1843 var1398)) ; Statement: interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7) 

(declare-const var1843!1 var472)
(declare-const var1398!1 var984)
(define-const var522 Iterator (var472_iterator/-912451715 var1843!1)) ; Statement: r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var276 Bool (Iterator_hasNext/-1669924200 var522)) ; Statement: $z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(assert (= (ite var276 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var189!7 "}\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(declare-const var189!8 String)
(assert (= var189!8 (str.++ var189!7 "}\n")))
(assert true)
(define-const var3312 String (toString/-2075883882 var189!8)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1481_isDirected/939449113=([com.google.javascript.jscomp.graph.GraphvizGraph], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1481_getName/-781242019=([com.google.javascript.jscomp.graph.GraphvizGraph], java.lang.String), var1481_getGraphvizNodes/2068304435=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var472_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1338_sort/-2094180924=([java.lang.Object[]], void), cast-from-__Array__Int__String__-to-__Array__Int__var2084__=([java.lang.String[]], java.lang.Object[]), var1481_getGraphvizEdges/-1818805138=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var1119_bootstrap$/-1933853639=([], java.util.function.Function), var984_comparing/-789310709=([java.util.function.Function], java.util.Comparator), var3285_bootstrap$/902233811=([], java.util.function.Function), var984_thenComparing/-1068777682=([java.util.Comparator, java.util.function.Function], java.util.Comparator), var472_sort/-1566373175=([java.util.List, java.util.Comparator], void), var472_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1481=com.google.javascript.jscomp.graph.GraphvizGraph, var2414=r1, var189=$r0, var2727=$z0, var3451=$r26, var3655=$r2, var3850=$z1, var605=$r27, var1248=r3, var472=java.util.List, var2510=$r24, var664=$i0, var3686=$r25, var552=i1, var755=$i2, var1338=java.util.Arrays, var2084=java.lang.Object, var1191=i3, var728=i4, var1843=r29, var3633=java.util.function.Function, var1119=com.google.javascript.jscomp.DotFormatter$getNode1Id__1397, var2751=$r4, var984=java.util.Comparator, var1160=$r6, var3285=com.google.javascript.jscomp.DotFormatter$getNode2Id__1402, var3683=$r5, var1398=$r7, var522=r30, var276=$z2, var3312=$r8}
; {com.google.javascript.jscomp.graph.GraphvizGraph=var1481, r1=var2414, $r0=var189, $z0=var2727, $r26=var3451, $r2=var3655, $z1=var3850, $r27=var605, r3=var1248, java.util.List=var472, $r24=var2510, $i0=var664, $r25=var3686, i1=var552, $i2=var755, java.util.Arrays=var1338, java.lang.Object=var2084, i3=var1191, i4=var728, r29=var1843, java.util.function.Function=var3633, com.google.javascript.jscomp.DotFormatter$getNode1Id__1397=var1119, $r4=var2751, java.util.Comparator=var984, $r6=var1160, com.google.javascript.jscomp.DotFormatter$getNode2Id__1402=var3285, $r5=var3683, $r7=var1398, r30=var522, $z2=var276, $r8=var3312}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z0 == 0 goto $r26 = "graph";	$r26 = "digraph";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n");	$z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z1 == 0 goto $r27 = " -- ";	$r27 = " -> ";	goto [?= r3 = $r27];	r3 = $r27;	$r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>();	$i0 = interfaceinvoke $r24.<java.util.List: int size()>();	$r25 = newarray (java.lang.String)[$i0];	i1 = 0;	$i2 = lengthof $r25;	if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	i3 = lengthof $r25;	i4 = 0;	if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	$r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>();	$r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4);	$r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>();	$r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5);	interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7);	r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 11