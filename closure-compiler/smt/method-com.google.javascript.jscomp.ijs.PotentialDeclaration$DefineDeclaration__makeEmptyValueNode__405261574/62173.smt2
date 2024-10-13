(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3174 0)
(declare-sort var1493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRoot/-1570446848 (var3174) var1493)
(declare-fun getString/-897720134 (var1493) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1493_newNumber/-671653159 (Float64) var1493)
(declare-const null-var3174 var3174)
(declare-const null-var1493 var1493)
(declare-const var2114 var3174) ; Statement: r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression 
(assert (not (= var2114 null-var3174)))
(assert true)
(define-const var3275 var1493 (getRoot/-1570446848 var2114)) ; Statement: r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>() 
(assert true) ; Non Conditional
 ; Statement: if r5 == null goto (branch) 
(assert (= var3275 null-var1493)) ; Cond: r5 == null 
 ; Statement: if r5 == null goto $r6 = "" 
(assert (not (= var3275 null-var1493))) ; Negate: Cond: r5 == null  
(assert true)
(define-const var1721 String (getString/-897720134 var3275)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
 ; Statement: goto [?= b1 = -1] 
(assert true) ; Non Conditional
(define-const var897 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1910 Int (hashCode/-467973558 var1721)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; } 
(assert (and (not (= var1910 64711720)) (and (not (= var1910 (- 891985903))) (and (not (= var1910 (- 1034364087))) true)))) ; Intersect: Negate: Cond: $i0 == 64711720   and Intersect: Negate: Cond: $i0 == -891985903   and Intersect: Negate: Cond: $i0 == -1034364087   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; } 
(assert (and (= var897 1) (and (not (= var897 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var1915 var1493 (var1493_newNumber/-671653159 ((_ to_fp 11 53) #x0000000000000000))) ; Statement: $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getRoot/-1570446848=([com.google.javascript.rhino.JSTypeExpression], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1493_newNumber/-671653159=([double], com.google.javascript.rhino.Node)}
; {var3174=com.google.javascript.rhino.JSTypeExpression, var2114=r0, var1493=com.google.javascript.rhino.Node, var3275=r5, var1721=$r6, var897=b1, var1910=$i0, var1915=$r2}
; {com.google.javascript.rhino.JSTypeExpression=var3174, r0=var2114, com.google.javascript.rhino.Node=var1493, r5=var3275, $r6=var1721, b1=var897, $i0=var1910, $r2=var1915}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.JSTypeExpression;	r5 = virtualinvoke r0.<com.google.javascript.rhino.JSTypeExpression: com.google.javascript.rhino.Node getRoot()>();	if r5 == null goto (branch);	if r5 == null goto $r6 = "";	$r6 = virtualinvoke r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	goto [?= b1 = -1];	b1 = -1;	$i0 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1034364087: goto $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("number");     case -891985903: goto $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 64711720: goto $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("boolean");     default: goto tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; }; };	tableswitch(b1) {     case 0: goto $r3 = new com.google.javascript.rhino.Node;     case 1: goto $r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);     case 2: goto $r1 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newString(java.lang.String)>("");     default: goto return null; };	$r2 = staticinvoke <com.google.javascript.rhino.Node: com.google.javascript.rhino.Node newNumber(double)>(0.0);	return $r2
;block_num 7