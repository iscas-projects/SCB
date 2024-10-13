(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var3637 0)
(declare-sort var607 0)
(declare-sort var2422 0)
(declare-sort var2644 0)
(declare-sort var2743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun internal_name/-1632124174 (var3637) String)
(declare-fun phase3table/-1894308792 (var2654) var2422)
(declare-fun get/-1721276195 (var2422 var2644) var2644)
(declare-fun cast-from-var3637-to-var2644 (var3637) var2644)
(declare-fun cast-from-var2644-to-var607 (var2644) var607)
(define-fun cast-from-var607-to-var607 ((arg var607)) var607 arg)
(declare-fun var607-init () var607)
(declare-fun count/36539919 (var607) Int)
(declare-fun <init>/-1277854481 (var607 var3637 Int) void)
(declare-fun phase3list/-1894308792 (var2654) var2743)
(declare-fun var2743_add/328494887 (var2743 var2644) Bool)
(declare-fun cast-from-var607-to-var2644 (var607) var2644)
(declare-fun put/1981026245 (var2422 var2644 var2644) var2644)
(declare-const null-var2654 var2654)
(declare-const null-var3637 var3637)
(declare-const null-var607 var607)
(declare-const var1153 var2654) ; Statement: r2 := @this: org.javacc.parser.ParseEngine 
(assert (not (= var1153 null-var2654)))
(declare-const var1497 var3637) ; Statement: r0 := @parameter0: org.javacc.parser.Expansion 
(assert (not (= var1497 null-var3637)))
(declare-const var1119 var607) ; Statement: r7 := @parameter1: org.javacc.parser.Phase3Data 
(assert (not (= var1119 null-var607)))
(define-const var1487 var3637 var1497) ; Statement: r38 = r0 
(define-const var312 String (internal_name/-1632124174 var1497)) ; Statement: $r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name> 
(assert true)
(define-const var22 Bool (= var312 "")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert (= (ite var22 1 0) 0)) ; Cond: $z0 == 0 
(define-const var959 var2422 (phase3table/-1894308792 var1153)) ; Statement: $r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert true)
(define-const var3135 var2644 (get/-1721276195 var959 (cast-from-var3637-to-var2644 var1497))) ; Statement: $r4 = virtualinvoke $r3.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var2615 var607 (cast-from-var2644-to-var607 var3135)) ; Statement: $r5 = (org.javacc.parser.Phase3Data) $r4 
(define-const var536 var607 (cast-from-var607-to-var607 var2615)) ; Statement: $r21 = (org.javacc.parser.Phase3Data) $r5 
 ; Statement: if $r21 == null goto $r6 = new org.javacc.parser.Phase3Data 
(assert (= var536 null-var607)) ; Cond: $r21 == null 
(define-const var567 var607 var607-init) ; Statement: $r6 = new org.javacc.parser.Phase3Data 
(define-const var35 Int (count/36539919 var1119)) ; Statement: $i0 = r7.<org.javacc.parser.Phase3Data: int count> 
(assert true)
;(assert (<init>/-1277854481 var567 var1497 var35)) ; Statement: specialinvoke $r6.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r0, $i0) 

(declare-const var567!1 var607)
(declare-const var1497!1 var3637)
(declare-const var35!1 Int)
(define-const var3308 var2743 (phase3list/-1894308792 var1153)) ; Statement: $r8 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list> 
;(assert (var2743_add/328494887 var3308 (cast-from-var607-to-var2644 var567!1))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r6) 

(declare-const var3308!1 var2743)
(declare-const var567!2 var607)
(define-const var3264 var2422 (phase3table/-1894308792 var1153)) ; Statement: $r9 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table> 
(assert true)
;(assert (put/1981026245 var3264 (cast-from-var3637-to-var2644 var1497!1) (cast-from-var607-to-var2644 var567!2))) ; Statement: virtualinvoke $r9.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r6) 

(declare-const var3264!1 var2422)
(declare-const var1497!2 var3637)
(declare-const var567!3 var607)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {internal_name/-1632124174=([org.javacc.parser.Expansion], java.lang.String), phase3table/-1894308792=([org.javacc.parser.ParseEngine], java.util.Hashtable), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-var3637-to-var2644=([org.javacc.parser.Expansion], java.lang.Object), cast-from-var2644-to-var607=([java.lang.Object], org.javacc.parser.Phase3Data), cast-from-var607-to-var607=([org.javacc.parser.Phase3Data], org.javacc.parser.Phase3Data), var607-init=([], org.javacc.parser.Phase3Data), count/36539919=([org.javacc.parser.Phase3Data], int), <init>/-1277854481=([org.javacc.parser.Phase3Data, org.javacc.parser.Expansion, int], void), phase3list/-1894308792=([org.javacc.parser.ParseEngine], java.util.List), var2743_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var607-to-var2644=([org.javacc.parser.Phase3Data], java.lang.Object), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object)}
; {var2654=org.javacc.parser.ParseEngine, var1153=r2, var3637=org.javacc.parser.Expansion, var1497=r0, var607=org.javacc.parser.Phase3Data, var1119=r7, var1487=r38, var312=$r1, var22=$z0, var2422=java.util.Hashtable, var959=$r3, var2644=java.lang.Object, var3135=$r4, var2615=$r5, var536=$r21, var567=$r6, var35=$i0, var2743=java.util.List, var3308=$r8, var3264=$r9}
; {org.javacc.parser.ParseEngine=var2654, r2=var1153, org.javacc.parser.Expansion=var3637, r0=var1497, org.javacc.parser.Phase3Data=var607, r7=var1119, r38=var1487, $r1=var312, $z0=var22, java.util.Hashtable=var2422, $r3=var959, java.lang.Object=var2644, $r4=var3135, $r5=var2615, $r21=var536, $r6=var567, $i0=var35, java.util.List=var2743, $r8=var3308, $r9=var3264}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.javacc.parser.ParseEngine;	r0 := @parameter0: org.javacc.parser.Expansion;	r7 := @parameter1: org.javacc.parser.Phase3Data;	r38 = r0;	$r1 = r0.<org.javacc.parser.Expansion: java.lang.String internal_name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto $r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	$r3 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	$r4 = virtualinvoke $r3.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r5 = (org.javacc.parser.Phase3Data) $r4;	$r21 = (org.javacc.parser.Phase3Data) $r5;	if $r21 == null goto $r6 = new org.javacc.parser.Phase3Data;	$r6 = new org.javacc.parser.Phase3Data;	$i0 = r7.<org.javacc.parser.Phase3Data: int count>;	specialinvoke $r6.<org.javacc.parser.Phase3Data: void <init>(org.javacc.parser.Expansion,int)>(r0, $i0);	$r8 = r2.<org.javacc.parser.ParseEngine: java.util.List phase3list>;	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r6);	$r9 = r2.<org.javacc.parser.ParseEngine: java.util.Hashtable phase3table>;	virtualinvoke $r9.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r6);	return
;block_num 4