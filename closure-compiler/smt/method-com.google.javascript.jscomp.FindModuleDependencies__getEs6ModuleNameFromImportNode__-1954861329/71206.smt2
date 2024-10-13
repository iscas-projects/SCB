(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var2488 0)
(declare-sort var1372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastChild/1278987161 (var1372) var1372)
(declare-fun getString/-897720134 (var1372) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2495 var2495)
(declare-const null-var2488 var2488)
(declare-const null-var1372 var1372)
(declare-const var150 var2495) ; Statement: r12 := @this: com.google.javascript.jscomp.FindModuleDependencies 
(assert (not (= var150 null-var2495)))
(declare-const var3647 var2488) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var3647 null-var2488)))
(declare-const var3326 var1372) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3326 null-var1372)))
(assert true)
(define-const var1711 var1372 (getLastChild/1278987161 var3326)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var2259 String (getString/-897720134 var1711)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var770 Bool (startsWith/-1785782452 var2259 "goog:")) ; Statement: z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("goog:") 
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>() 
(assert (not (= (ite var770 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2278 String "goog:") ; Statement: $r10 = "goog:" 
(assert true)
(define-const var3813 Int (length/-134980193 var2278)) ; Statement: $i2 = virtualinvoke $r10.<java.lang.String: int length()>() 
(assert (and true (and (>= var3813 0) (>= (str.len var2259) var3813))))
(define-const var2229 String (substring/850833817 var2259 var3813)) ; Statement: $r11 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i2) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2495=com.google.javascript.jscomp.FindModuleDependencies, var150=r12, var2488=com.google.javascript.jscomp.NodeTraversal, var3647=r3, var1372=com.google.javascript.rhino.Node, var3326=r0, var1711=$r1, var2259=r2, var770=z0, var2278=$r10, var3813=$i2, var2229=$r11}
; {com.google.javascript.jscomp.FindModuleDependencies=var2495, r12=var150, com.google.javascript.jscomp.NodeTraversal=var2488, r3=var3647, com.google.javascript.rhino.Node=var1372, r0=var3326, $r1=var1711, r2=var2259, z0=var770, $r10=var2278, $i2=var3813, $r11=var2229}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r12 := @this: com.google.javascript.jscomp.FindModuleDependencies;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	z0 = virtualinvoke r2.<java.lang.String: boolean startsWith(java.lang.String)>("goog:");	if z0 == 0 goto $r4 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.CompilerInput getInput()>();	$r10 = "goog:";	$i2 = virtualinvoke $r10.<java.lang.String: int length()>();	$r11 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i2);	return $r11
;block_num 2