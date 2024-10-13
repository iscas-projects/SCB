(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var991 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFirstChild/2090828207 (var123) var123)
(declare-fun isNew/1764746742 (var123) Bool)
(declare-fun isThis/-22180122 (var123) Bool)
(declare-fun isEmpty/-713644823 (var123) Bool)
(declare-const null-var991 var991)
(declare-const null-String String)
(declare-const null-var123 var123)
(declare-const var2478 var991) ; Statement: r4 := @this: com.google.javascript.jscomp.JSDocInfoPrinter 
(assert (not (= var2478 null-var991)))
(declare-const var2670 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2670 null-String)))
(declare-const var1792 var123) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1792 null-var123)))
(define-const var2227 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(assert true)
;(assert (append/672562846 var2670 "function(")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function(") 
(declare-const var2670!1 String)
(assert (= var2670!1 (str.++ var2670 "function(")))
(assert true)
(define-const var1707 var123 (getFirstChild/2090828207 var1792)) ; Statement: r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var723 Bool (isNew/1764746742 var1707)) ; Statement: $z0 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isNew()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isThis()>() 
(assert (= (ite var723 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var91 Bool (isThis/-22180122 var1707)) ; Statement: $z1 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isThis()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isEmpty()>() 
(assert (= (ite var91 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var0 Bool (isEmpty/-713644823 var1707)) ; Statement: $z2 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isParamList()>() 
(assert (not (= (ite var0 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (append/672562846 var2670!1 ")")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2670!2 String)
(assert (= var2670!2 (str.++ var2670!1 ")")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isNew/1764746742=([com.google.javascript.rhino.Node], boolean), isThis/-22180122=([com.google.javascript.rhino.Node], boolean), isEmpty/-713644823=([com.google.javascript.rhino.Node], boolean)}
; {var991=com.google.javascript.jscomp.JSDocInfoPrinter, var2478=r4, var2670=r0, var123=com.google.javascript.rhino.Node, var1792=r1, var2227=z6, var1707=r2, var723=$z0, var91=$z1, var0=$z2}
; {com.google.javascript.jscomp.JSDocInfoPrinter=var991, r4=var2478, r0=var2670, com.google.javascript.rhino.Node=var123, r1=var1792, z6=var2227, r2=var1707, $z0=var723, $z1=var91, $z2=var0}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.JSDocInfoPrinter;	r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: com.google.javascript.rhino.Node;	z6 = 0;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("function(");	r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$z0 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isNew()>();	if $z0 == 0 goto $z1 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isThis()>();	$z1 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isThis()>();	if $z1 == 0 goto $z2 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isEmpty()>();	$z2 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isEmpty()>();	if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isParamList()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	return
;block_num 4