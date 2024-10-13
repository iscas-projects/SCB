(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1319 0)
(declare-sort var1834 0)
(declare-sort var1527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRoot/-1570446848 (var1319) var1834)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1834-init () var1834)
(declare-fun <init>/-171470918 (var1834 var1527) void)
(declare-const null-var1319 var1319)
(declare-const null-var1834 var1834)
(declare-const var1527-FALSE var1527)
(declare-const var2048 var1319) ; Statement: r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression 
(assert (not (= var2048 null-var1319)))
(assert true)
(define-const var2436 var1834 (getRoot/-1570446848 var2048)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>() 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto (branch) 
(assert (= var2436 null-var1834)) ; Cond: r5 == null 
 ; Statement: if r5 == null goto $r6 = "" 
(assert (= var2436 null-var1834)) ; Cond: r5 == null 
(define-const var2090 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
(define-const var2973 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2002 Int (hashCode/-467973558 var2090)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; } 
(assert (and (not (= var2002 64711720)) (and (not (= var2002 (- 891985903))) (and (not (= var2002 (- 1034364087))) true)))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; } 
(assert (and (= var2973 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var3183 var1834 var1834-init) ; Statement: $r3 = new com.google.javascript.rhino.Node 
(define-const var3287 var1527 var1527-FALSE) ; Statement: $r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token FALSE> 
(assert true)
;(assert (<init>/-171470918 var3183 var3287)) ; Statement: specialinvoke $r3.<com.google.javascript.rhino.Node: void <init>(com.google.javascript.rhino.Token)>($r4) 

(declare-const var3183!1 var1834)
(declare-const var3287!1 var1527)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getRoot/-1570446848=([com.google.javascript.rhino.JSTypeExpression], com.google.javascript.rhino.Node), hashCode/-467973558=([java.lang.String], int), var1834-init=([], com.google.javascript.rhino.Node), <init>/-171470918=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Token], void)}
; {var1319=com.google.javascript.rhino.JSTypeExpression, var2048=r0, var1834=com.google.javascript.rhino.Node, var2436=r5, var2090=$r6, var2973=b1, var2002=$i0, var3183=$r3, var1527=com.google.javascript.rhino.Token, var3287=$r4}
; {com.google.javascript.rhino.JSTypeExpression=var1319, r0=var2048, com.google.javascript.rhino.Node=var1834, r5=var2436, $r6=var2090, b1=var2973, $i0=var2002, $r3=var3183, com.google.javascript.rhino.Token=var1527, $r4=var3287}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression;	r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>();	if r5 == null goto (branch);	if r5 == null goto $r6 = "";	$r6 = "";	b1 = -1;	$i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; };	$r3 = new com.google.javascript.rhino.Node;	$r4 = <com.google.javascript.rhino.Token: com.google.javascript.rhino.Token FALSE>;	specialinvoke $r3.<com.google.javascript.rhino.Node: void <init>(com.google.javascript.rhino.Token)>($r4);	return $r3
;block_num 7