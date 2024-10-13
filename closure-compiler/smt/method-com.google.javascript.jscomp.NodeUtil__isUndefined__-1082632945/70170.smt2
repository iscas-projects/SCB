(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2205 0)
(declare-sort var166 0)
(declare-sort var907 0)
(declare-sort var1550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1324186377 (var2205) var907)
(declare-fun ordinal/-291641772 (var1550) Int)
(declare-fun cast-from-var907-to-var1550 (var907) var1550)
(declare-fun getString/-897720134 (var2205) String)
(declare-const null-var2205 var2205)
(declare-const var166-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var658 var2205) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var658 null-var2205)))
(define-const var1679 (Array Int Int) var166-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var3946 var907 (getToken/1324186377 var658)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var2295 Int (ordinal/-291641772 (cast-from-var907-to-var1550 var3946))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var1723 Int (select var1679 var2295)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 3: goto return 1;     case 16: goto $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto return 0; } 
(assert (and (= var1723 16) (and (not (= var1723 3)) true))) ; Intersect: Cond: $i1 == 16  and Intersect: Negate: Cond: $i1 == 3   and Non Conditional  
(assert true)
(define-const var2042 String (getString/-897720134 var658)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2014 Bool (= var2042 "undefined")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("undefined") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var907-to-var1550=([com.google.javascript.rhino.Token], java.lang.Enum), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var2205=com.google.javascript.rhino.Node, var658=r0, var166=com.google.javascript.jscomp.NodeUtil$3, var1679=$r1, var907=com.google.javascript.rhino.Token, var3946=$r2, var1550=java.lang.Enum, var2295=$i0, var1723=$i1, var2042=$r3, var2014=$z0}
; {com.google.javascript.rhino.Node=var2205, r0=var658, com.google.javascript.jscomp.NodeUtil$3=var166, $r1=var1679, com.google.javascript.rhino.Token=var907, $r2=var3946, java.lang.Enum=var1550, $i0=var2295, $i1=var1723, $r3=var2042, $z0=var2014}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 3: goto return 1;     case 16: goto $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto return 0; };	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("undefined");	return $z0
;block_num 2