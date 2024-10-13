(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var850 0)
(declare-sort var158 0)
(declare-sort var2095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRoot/-1570446848 (var850) var158)
(declare-fun getString/-897720134 (var158) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var158-init () var158)
(declare-fun <init>/-171470918 (var158 var2095) void)
(declare-const null-var850 var850)
(declare-const null-var158 var158)
(declare-const var2095-FALSE var2095)
(declare-const var2043 var850) ; Statement: r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression 
(assert (not (= var2043 null-var850)))
(assert true)
(define-const var2850 var158 (getRoot/-1570446848 var2043)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>() 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto (branch) 
(assert (= var2850 null-var158)) ; Cond: r5 == null 
 ; Statement: if r5 == null goto $r6 = "" 
(assert (not (= var2850 null-var158))) ; Negate: Cond: r5 == null  
(assert true)
(define-const var1260 String (getString/-897720134 var2850)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
 ; Statement: goto [?= b1 = -1] 
(assert true) ; Non Conditional
(define-const var1813 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2843 Int (hashCode/-467973558 var1260)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; } 
(assert (and (not (= var2843 64711720)) (and (not (= var2843 (- 891985903))) (and (not (= var2843 (- 1034364087))) true)))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; } 
(assert (and (= var1813 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var1173 var158 var158-init) ; Statement: $r3 = new com.google.javascript.rhino.Node 
(define-const var111 var2095 var2095-FALSE) ; Statement: $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token FALSE> 
(assert true)
;(assert (<init>/-171470918 var1173 var111)) ; Statement: specialinvoke $r3.<com.google.javascript.rhino.Node: void <init>(com.google.javascript.rhino.Token)>($r4) 

(declare-const var1173!1 var158)
(declare-const var111!1 var2095)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getRoot/-1570446848=([com.google.javascript.rhino.JSTypeExpression], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), hashCode/-467973558=([java.lang.String], int), var158-init=([], com.google.javascript.rhino.Node), <init>/-171470918=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Token], void)}
; {var850=com.google.javascript.rhino.JSTypeExpression, var2043=r0, var158=com.google.javascript.rhino.Node, var2850=r5, var1260=$r6, var1813=b1, var2843=$i0, var1173=$r3, var2095=com.google.javascript.rhino.Token, var111=$r4}
; {com.google.javascript.rhino.JSTypeExpression=var850, r0=var2043, com.google.javascript.rhino.Node=var158, r5=var2850, $r6=var1260, b1=var1813, $i0=var2843, $r3=var1173, com.google.javascript.rhino.Token=var2095, $r4=var111}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression;	r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>();	if r5 == null goto (branch);	if r5 == null goto $r6 = "";	$r6 = virtualinvoke r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	goto [?= b1 = -1];	b1 = -1;	$i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; };	$r3 = new com.google.javascript.rhino.Node;	$r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token FALSE>;	specialinvoke $r3.<com.google.javascript.rhino.Node: void <init>(com.google.javascript.rhino.Token)>($r4);	return $r3
;block_num 7