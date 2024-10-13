(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceFileName/-822247991 (var3219) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3219 var3219)
(declare-const var2122 var3219) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2122 null-var3219)))
(assert true)
(define-const var1195 String (getSourceFileName/-822247991 var2122)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getSourceFileName()>() 
(assert true)
(define-const var3665 Bool (endsWith/985337093 var1195 ".closure.js")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceFileName/-822247991=([com.google.javascript.rhino.Node], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3219=com.google.javascript.rhino.Node, var2122=r0, var1195=$r1, var3665=$z0}
; {com.google.javascript.rhino.Node=var3219, r0=var2122, $r1=var1195, $z0=var3665}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getSourceFileName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".closure.js");	return $z0
;block_num 1