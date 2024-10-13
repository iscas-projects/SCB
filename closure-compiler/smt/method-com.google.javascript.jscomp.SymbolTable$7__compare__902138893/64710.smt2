(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var2791 0)
(declare-sort var2468 0)
(declare-sort var257 0)
(declare-sort var3303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1013098412 (var149) var2468)
(declare-fun getScope/1054213570 (var2468 var2791) var257)
(declare-fun getLexicalScopeDepth/1654673157 (var2468 var257) Int)
(declare-fun getName/-120296891 (var3303) String)
(declare-fun cast-from-var2791-to-var3303 (var2791) var3303)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var149 var149)
(declare-const null-var2791 var2791)
(declare-const var407 var149) ; Statement: r0 := @this: com.google.javascript.jscomp.SymbolTable$7 
(assert (not (= var407 null-var149)))
(declare-const var1332 var2791) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.SymbolTable$Symbol 
(assert (not (= var1332 null-var2791)))
(declare-const var3654 var2791) ; Statement: r4 := @parameter1: com.google.javascript.jscomp.SymbolTable$Symbol 
(assert (not (= var3654 null-var2791)))
(define-const var2355 var2468 (this$0/1013098412 var407)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0> 
(assert true)
(define-const var688 var257 (getScope/1054213570 var2355 var1332)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.SymbolTable$SymbolScope getScope(com.google.javascript.jscomp.SymbolTable$Symbol)>(r1) 
(define-const var3909 var2468 (this$0/1013098412 var407)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0> 
(assert true)
(define-const var2266 var257 (getScope/1054213570 var3909 var3654)) ; Statement: r6 = virtualinvoke $r5.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.SymbolTable$SymbolScope getScope(com.google.javascript.jscomp.SymbolTable$Symbol)>(r4) 
(define-const var2405 var2468 (this$0/1013098412 var407)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0> 
(assert true)
(define-const var2309 Int (getLexicalScopeDepth/1654673157 var2405 var688)) ; Statement: $i1 = virtualinvoke $r7.<com.google.javascript.jscomp.SymbolTable: int getLexicalScopeDepth(com.google.javascript.jscomp.SymbolTable$SymbolScope)>(r3) 
(define-const var70 var2468 (this$0/1013098412 var407)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0> 
(assert true)
(define-const var551 Int (getLexicalScopeDepth/1654673157 var70 var2266)) ; Statement: $i0 = virtualinvoke $r8.<com.google.javascript.jscomp.SymbolTable: int getLexicalScopeDepth(com.google.javascript.jscomp.SymbolTable$SymbolScope)>(r6) 
(define-const var3636 Int (- var2309 var551)) ; Statement: i2 = $i1 - $i0 
 ; Statement: if i2 == 0 goto $r10 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>() 
(assert (= var3636 0)) ; Cond: i2 == 0 
(assert true)
(define-const var1011 String (getName/-120296891 (cast-from-var2791-to-var3303 var1332))) ; Statement: $r10 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>() 
(assert true)
(define-const var485 String (getName/-120296891 (cast-from-var2791-to-var3303 var3654))) ; Statement: $r9 = virtualinvoke r4.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>() 
(assert true)
(define-const var3262 Int (compareTo/1411385946 var1011 var485)) ; Statement: $i3 = virtualinvoke $r10.<java.lang.String: int compareTo(java.lang.String)>($r9) 
(assert (let ((this<other (str.< var1011 var485)) (this<=other (str.<= var1011 var485)) (compareRes (compareTo/1411385946 var1011 var485))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1013098412=([com.google.javascript.jscomp.SymbolTable$7], com.google.javascript.jscomp.SymbolTable), getScope/1054213570=([com.google.javascript.jscomp.SymbolTable, com.google.javascript.jscomp.SymbolTable$Symbol], com.google.javascript.jscomp.SymbolTable$SymbolScope), getLexicalScopeDepth/1654673157=([com.google.javascript.jscomp.SymbolTable, com.google.javascript.jscomp.SymbolTable$SymbolScope], int), getName/-120296891=([com.google.javascript.rhino.jstype.SimpleSlot], java.lang.String), cast-from-var2791-to-var3303=([com.google.javascript.jscomp.SymbolTable$Symbol], com.google.javascript.rhino.jstype.SimpleSlot), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var149=com.google.javascript.jscomp.SymbolTable$7, var407=r0, var2791=com.google.javascript.jscomp.SymbolTable$Symbol, var1332=r1, var3654=r4, var2468=com.google.javascript.jscomp.SymbolTable, var2355=$r2, var257=com.google.javascript.jscomp.SymbolTable$SymbolScope, var688=r3, var3909=$r5, var2266=r6, var2405=$r7, var2309=$i1, var70=$r8, var551=$i0, var3636=i2, var3303=com.google.javascript.rhino.jstype.SimpleSlot, var1011=$r10, var485=$r9, var3262=$i3}
; {com.google.javascript.jscomp.SymbolTable$7=var149, r0=var407, com.google.javascript.jscomp.SymbolTable$Symbol=var2791, r1=var1332, r4=var3654, com.google.javascript.jscomp.SymbolTable=var2468, $r2=var2355, com.google.javascript.jscomp.SymbolTable$SymbolScope=var257, r3=var688, $r5=var3909, r6=var2266, $r7=var2405, $i1=var2309, $r8=var70, $i0=var551, i2=var3636, com.google.javascript.rhino.jstype.SimpleSlot=var3303, $r10=var1011, $r9=var485, $i3=var3262}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.SymbolTable$7;	r1 := @parameter0: com.google.javascript.jscomp.SymbolTable$Symbol;	r4 := @parameter1: com.google.javascript.jscomp.SymbolTable$Symbol;	$r2 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0>;	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.SymbolTable$SymbolScope getScope(com.google.javascript.jscomp.SymbolTable$Symbol)>(r1);	$r5 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0>;	r6 = virtualinvoke $r5.<com.google.javascript.jscomp.SymbolTable: com.google.javascript.jscomp.SymbolTable$SymbolScope getScope(com.google.javascript.jscomp.SymbolTable$Symbol)>(r4);	$r7 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0>;	$i1 = virtualinvoke $r7.<com.google.javascript.jscomp.SymbolTable: int getLexicalScopeDepth(com.google.javascript.jscomp.SymbolTable$SymbolScope)>(r3);	$r8 = r0.<com.google.javascript.jscomp.SymbolTable$7: com.google.javascript.jscomp.SymbolTable this$0>;	$i0 = virtualinvoke $r8.<com.google.javascript.jscomp.SymbolTable: int getLexicalScopeDepth(com.google.javascript.jscomp.SymbolTable$SymbolScope)>(r6);	i2 = $i1 - $i0;	if i2 == 0 goto $r10 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>();	$r10 = virtualinvoke r1.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>();	$r9 = virtualinvoke r4.<com.google.javascript.jscomp.SymbolTable$Symbol: java.lang.String getName()>();	$i3 = virtualinvoke $r10.<java.lang.String: int compareTo(java.lang.String)>($r9);	return $i3
;block_num 2