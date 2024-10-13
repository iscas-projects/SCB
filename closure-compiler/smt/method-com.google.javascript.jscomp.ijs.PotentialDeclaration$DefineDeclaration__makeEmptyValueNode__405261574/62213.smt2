(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2851 0)
(declare-sort var288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRoot/-1570446848 (var2851) var288)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var288_newString/178324197 (String) var288)
(declare-const null-var2851 var2851)
(declare-const null-var288 var288)
(declare-const var1186 var2851) ; Statement: r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression 
(assert (not (= var1186 null-var2851)))
(assert true)
(define-const var3027 var288 (getRoot/-1570446848 var1186)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>() 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto (branch) 
(assert (= var3027 null-var288)) ; Cond: r5 == null 
 ; Statement: if r5 == null goto $r6 = "" 
(assert (= var3027 null-var288)) ; Cond: r5 == null 
(define-const var3413 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
(define-const var20 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1977 Int (hashCode/-467973558 var3413)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; } 
(assert (and (not (= var1977 64711720)) (and (not (= var1977 (- 891985903))) (and (not (= var1977 (- 1034364087))) true)))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; } 
(assert (and (= var20 2) (and (not (= var20 1)) (and (not (= var20 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var263 var288 (var288_newString/178324197 "")) ; Statement: $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("") 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getRoot/-1570446848=([com.google.javascript.rhino.JSTypeExpression], com.google.javascript.rhino.Node), hashCode/-467973558=([java.lang.String], int), var288_newString/178324197=([java.lang.String], com.google.javascript.rhino.Node)}
; {var2851=com.google.javascript.rhino.JSTypeExpression, var1186=r0, var288=com.google.javascript.rhino.Node, var3027=r5, var3413=$r6, var20=b1, var1977=$i0, var263=$r1}
; {com.google.javascript.rhino.JSTypeExpression=var2851, r0=var1186, com.google.javascript.rhino.Node=var288, r5=var3027, $r6=var3413, b1=var20, $i0=var1977, $r1=var263}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression;	r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>();	if r5 == null goto (branch);	if r5 == null goto $r6 = "";	$r6 = "";	b1 = -1;	$i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; };	$r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");	return $r1
;block_num 7