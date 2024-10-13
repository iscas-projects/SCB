(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1887 0)
(declare-sort var3716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRoot/-1570446848 (var1887) var3716)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3716_newNumber/-671653159 (Float64) var3716)
(declare-const null-var1887 var1887)
(declare-const null-var3716 var3716)
(declare-const var2351 var1887) ; Statement: r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression 
(assert (not (= var2351 null-var1887)))
(assert true)
(define-const var2070 var3716 (getRoot/-1570446848 var2351)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>() 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto (branch) 
(assert (= var2070 null-var3716)) ; Cond: r5 == null 
 ; Statement: if r5 == null goto $r6 = "" 
(assert (= var2070 null-var3716)) ; Cond: r5 == null 
(define-const var1781 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
(define-const var2732 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1461 Int (hashCode/-467973558 var1781)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; } 
(assert (and (not (= var1461 64711720)) (and (not (= var1461 (- 891985903))) (and (not (= var1461 (- 1034364087))) true)))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; } 
(assert (and (= var2732 1) (and (not (= var2732 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var631 var3716 (var3716_newNumber/-671653159 ((_ to_fp 11 53) #x0000000000000000))) ; Statement: $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getRoot/-1570446848=([com.google.javascript.rhino.JSTypeExpression], com.google.javascript.rhino.Node), hashCode/-467973558=([java.lang.String], int), var3716_newNumber/-671653159=([double], com.google.javascript.rhino.Node)}
; {var1887=com.google.javascript.rhino.JSTypeExpression, var2351=r0, var3716=com.google.javascript.rhino.Node, var2070=r5, var1781=$r6, var2732=b1, var1461=$i0, var631=$r2}
; {com.google.javascript.rhino.JSTypeExpression=var1887, r0=var2351, com.google.javascript.rhino.Node=var3716, r5=var2070, $r6=var1781, b1=var2732, $i0=var1461, $r2=var631}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression;	r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>();	if r5 == null goto (branch);	if r5 == null goto $r6 = "";	$r6 = "";	b1 = -1;	$i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; };	$r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);	return $r2
;block_num 7