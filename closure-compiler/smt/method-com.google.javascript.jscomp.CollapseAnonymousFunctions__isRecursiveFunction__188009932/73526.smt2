(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1792 0)
(declare-sort var3731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var3731) var3731)
(declare-fun getString/-897720134 (var3731) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getNext/-860917720 (var3731) var3731)
(declare-fun containsName/-194039507 (var1792 var3731 String) Bool)
(declare-const null-var1792 var1792)
(declare-const null-var3731 var3731)
(declare-const var3826 var1792) ; Statement: r5 := @this: com.google.javascript.jscomp.CollapseAnonymousFunctions 
(assert (not (= var3826 null-var1792)))
(declare-const var848 var3731) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var848 null-var3731)))
(assert true)
(define-const var3703 var3731 (getFirstChild/2090828207 var848)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var2862 String (getString/-897720134 var3703)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3246 Bool (isEmpty/-1285796103 var2862)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert (= (ite var3246 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3515 var3731 (getNext/-860917720 var3703)) ; Statement: r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
(define-const var2067 var3731 (getNext/-860917720 var3515)) ; Statement: r4 = virtualinvoke r3.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
(define-const var3050 String (getString/-897720134 var3703)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1876 Bool (containsName/-194039507 var3826 var2067 var3050)) ; Statement: $z1 = virtualinvoke r5.<com.google.javascript.jscomp.CollapseAnonymousFunctions: boolean containsName(com.google.javascript.rhino.Node,java.lang.String)>(r4, $r6) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), containsName/-194039507=([com.google.javascript.jscomp.CollapseAnonymousFunctions, com.google.javascript.rhino.Node, java.lang.String], boolean)}
; {var1792=com.google.javascript.jscomp.CollapseAnonymousFunctions, var3826=r5, var3731=com.google.javascript.rhino.Node, var848=r0, var3703=r1, var2862=$r2, var3246=$z0, var3515=r3, var2067=r4, var3050=$r6, var1876=$z1}
; {com.google.javascript.jscomp.CollapseAnonymousFunctions=var1792, r5=var3826, com.google.javascript.rhino.Node=var3731, r0=var848, r1=var3703, $r2=var2862, $z0=var3246, r3=var3515, r4=var2067, $r6=var3050, $z1=var1876}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.CollapseAnonymousFunctions;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r2 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	r4 = virtualinvoke r3.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	$r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z1 = virtualinvoke r5.<com.google.javascript.jscomp.CollapseAnonymousFunctions: boolean containsName(com.google.javascript.rhino.Node,java.lang.String)>(r4, $r6);	return $z1
;block_num 2