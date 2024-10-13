(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2006 0)
(declare-sort var1855 0)
(declare-sort var1744 0)
(declare-sort var2879 0)
(declare-sort var3297 0)
(declare-sort var2846 0)
(declare-sort var733 0)
(declare-sort var694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2006_isDirected/939449113 (var2006) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2006_getName/-781242019 (var2006) String)
(declare-fun var2006_getGraphvizNodes/2068304435 (var2006) var1855)
(declare-fun var1855_size/-959786421 (var1855) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1744_sort/-2094180924 ((Array Int var2879)) void)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2879__ ((Array Int String)) (Array Int var2879))
(declare-fun var2006_getGraphvizEdges/-1818805138 (var2006) var1855)
(declare-fun var2846_bootstrap$/-1933853639 () var3297)
(declare-fun var733_comparing/-789310709 (var3297) var733)
(declare-fun var694_bootstrap$/902233811 () var3297)
(declare-fun var733_thenComparing/-1068777682 (var733 var3297) var733)
(declare-fun var1855_sort/-1566373175 (var1855 var733) void)
(declare-fun var1855_iterator/-912451715 (var1855) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2006 var2006)
(declare-const var1198 var2006) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph 
(assert (not (= var1198 null-var2006)))
(define-const var1814 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1814)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1814!1 String)
(assert (= var1814!1 ""))
(define-const var438 Bool (var2006_isDirected/939449113 var1198)) ; Statement: $z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z0 == 0 goto $r26 = "graph" 
(assert (not (= (ite var438 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var828 String "digraph") ; Statement: $r26 = "digraph" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1814!1 var828)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1814!2 String)
(assert (= var1814!2 (str.++ var1814!1 var828)))
(assert true)
;(assert (append/672562846 var1814!2 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1814!3 String)
(assert (= var1814!3 (str.++ var1814!2 "  ")))
(define-const var3175 String (var2006_getName/-781242019 var1198)) ; Statement: $r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1814!3 var3175)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1814!4 String)
(assert (= var1814!4 (str.++ var1814!3 var3175)))
(assert true)
;(assert (append/672562846 var1814!4 " {\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n") 
(declare-const var1814!5 String)
(assert (= var1814!5 (str.++ var1814!4 " {\n")))
(assert true)
;(assert (append/672562846 var1814!5 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1814!6 String)
(assert (= var1814!6 (str.++ var1814!5 "  ")))
(assert true)
;(assert (append/672562846 var1814!6 "node [color=lightblue2, style=filled];\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n") 
(declare-const var1814!7 String)
(assert (= var1814!7 (str.++ var1814!6 "node [color=lightblue2, style=filled];\n")))
(define-const var3685 Bool (var2006_isDirected/939449113 var1198)) ; Statement: $z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>() 
 ; Statement: if $z1 == 0 goto $r27 = " -- " 
(assert (= (ite var3685 1 0) 0)) ; Cond: $z1 == 0 
(define-const var946 String " -- ") ; Statement: $r27 = " -- " 
(assert true) ; Non Conditional
(define-const var3764 String var946) ; Statement: r3 = $r27 
(define-const var1523 var1855 (var2006_getGraphvizNodes/2068304435 var1198)) ; Statement: $r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>() 
(define-const var1798 Int (var1855_size/-959786421 var1523)) ; Statement: $i0 = interfaceinvoke $r24.<java.util.List: int size()>() 
(define-const var2558 (Array Int String) arr-String-init) ; Statement: $r25 = newarray (java.lang.String)[$i0] 
(define-const var448 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var968 Int (getLength-Arr-String-1 var2558)) ; Statement: $i2 = lengthof $r25 
 ; Statement: if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 
(assert (>= var448 var968)) ; Cond: i1 >= $i2 
;(assert (var1744_sort/-2094180924 (cast-from-__Array__Int__String__-to-__Array__Int__var2879__ var2558))) ; Statement: staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25) 

(declare-const var2558!1 (Array Int String))
(define-const var203 Int (getLength-Arr-String-1 var2558!1)) ; Statement: i3 = lengthof $r25 
(define-const var79 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(assert (>= var79 var203)) ; Cond: i4 >= i3 
(define-const var1432 var1855 (var2006_getGraphvizEdges/-1818805138 var1198)) ; Statement: r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>() 
(define-const var221 var3297 var2846_bootstrap$/-1933853639) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>() 
(define-const var3913 var733 (var733_comparing/-789310709 var221)) ; Statement: $r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4) 
(define-const var2233 var3297 var694_bootstrap$/902233811) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>() 
(define-const var3230 var733 (var733_thenComparing/-1068777682 var3913 var2233)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5) 
;(assert (var1855_sort/-1566373175 var1432 var3230)) ; Statement: interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7) 

(declare-const var1432!1 var1855)
(declare-const var3230!1 var733)
(define-const var3488 Iterator (var1855_iterator/-912451715 var1432!1)) ; Statement: r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2196 Bool (Iterator_hasNext/-1669924200 var3488)) ; Statement: $z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(assert (= (ite var2196 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (append/672562846 var1814!7 "}\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n") 
(declare-const var1814!8 String)
(assert (= var1814!8 (str.++ var1814!7 "}\n")))
(assert true)
(define-const var1324 String (toString/-2075883882 var1814!8)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2006_isDirected/939449113=([com.google.javascript.jscomp.graph.GraphvizGraph], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2006_getName/-781242019=([com.google.javascript.jscomp.graph.GraphvizGraph], java.lang.String), var2006_getGraphvizNodes/2068304435=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var1855_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1744_sort/-2094180924=([java.lang.Object[]], void), cast-from-__Array__Int__String__-to-__Array__Int__var2879__=([java.lang.String[]], java.lang.Object[]), var2006_getGraphvizEdges/-1818805138=([com.google.javascript.jscomp.graph.GraphvizGraph], java.util.List), var2846_bootstrap$/-1933853639=([], java.util.function.Function), var733_comparing/-789310709=([java.util.function.Function], java.util.Comparator), var694_bootstrap$/902233811=([], java.util.function.Function), var733_thenComparing/-1068777682=([java.util.Comparator, java.util.function.Function], java.util.Comparator), var1855_sort/-1566373175=([java.util.List, java.util.Comparator], void), var1855_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2006=com.google.javascript.jscomp.graph.GraphvizGraph, var1198=r1, var1814=$r0, var438=$z0, var828=$r26, var3175=$r2, var3685=$z1, var946=$r27, var3764=r3, var1855=java.util.List, var1523=$r24, var1798=$i0, var2558=$r25, var448=i1, var968=$i2, var1744=java.util.Arrays, var2879=java.lang.Object, var203=i3, var79=i4, var1432=r29, var3297=java.util.function.Function, var2846=com.google.javascript.jscomp.DotFormatter$getNode1Id__1397, var221=$r4, var733=java.util.Comparator, var3913=$r6, var694=com.google.javascript.jscomp.DotFormatter$getNode2Id__1402, var2233=$r5, var3230=$r7, var3488=r30, var2196=$z2, var1324=$r8}
; {com.google.javascript.jscomp.graph.GraphvizGraph=var2006, r1=var1198, $r0=var1814, $z0=var438, $r26=var828, $r2=var3175, $z1=var3685, $r27=var946, r3=var3764, java.util.List=var1855, $r24=var1523, $i0=var1798, $r25=var2558, i1=var448, $i2=var968, java.util.Arrays=var1744, java.lang.Object=var2879, i3=var203, i4=var79, r29=var1432, java.util.function.Function=var3297, com.google.javascript.jscomp.DotFormatter$getNode1Id__1397=var2846, $r4=var221, java.util.Comparator=var733, $r6=var3913, com.google.javascript.jscomp.DotFormatter$getNode2Id__1402=var694, $r5=var2233, $r7=var3230, r30=var3488, $z2=var2196, $r8=var1324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.graph.GraphvizGraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z0 == 0 goto $r26 = "graph";	$r26 = "digraph";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r2 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("node [color=lightblue2, style=filled];\n");	$z1 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: boolean isDirected()>();	if $z1 == 0 goto $r27 = " -- ";	$r27 = " -- ";	r3 = $r27;	$r24 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizNodes()>();	$i0 = interfaceinvoke $r24.<java.util.List: int size()>();	$r25 = newarray (java.lang.String)[$i0];	i1 = 0;	$i2 = lengthof $r25;	if i1 >= $i2 goto staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	staticinvoke <java.util.Arrays: void sort(java.lang.Object[])>($r25);	i3 = lengthof $r25;	i4 = 0;	if i4 >= i3 goto r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	r29 = interfaceinvoke r1.<com.google.javascript.jscomp.graph.GraphvizGraph: java.util.List getGraphvizEdges()>();	$r4 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode1Id__1397: java.util.function.Function bootstrap$()>();	$r6 = staticinvoke <java.util.Comparator: java.util.Comparator comparing(java.util.function.Function)>($r4);	$r5 = staticinvoke <com.google.javascript.jscomp.DotFormatter$getNode2Id__1402: java.util.function.Function bootstrap$()>();	$r7 = interfaceinvoke $r6.<java.util.Comparator: java.util.Comparator thenComparing(java.util.function.Function)>($r5);	interfaceinvoke r29.<java.util.List: void sort(java.util.Comparator)>($r7);	r30 = interfaceinvoke r29.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}\n");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 11