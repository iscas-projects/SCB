(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getQualifiedName/48314856 (var1184) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1184 var1184)
(declare-const var3848 var1184) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3848 null-var1184)))
(assert true)
(define-const var1451 String (getQualifiedName/48314856 var3848)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
(assert true)
(define-const var1799 Int (lastIndexOf/-618837785 var1451 ".prototype.")) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>(".prototype.") 
(define-const var1311 String ".prototype") ; Statement: $r2 = ".prototype" 
(assert true)
(define-const var2927 Int (length/-134980193 var1311)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2362 Int (+ var1799 var2927)) ; Statement: $i2 = i0 + $i1 
(define-const var2821 Int (+ var2362 1)) ; Statement: i3 = $i2 + 1 
(assert (not (and true (and (>= var2821 0) (>= (str.len var1451) var2821)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1184=com.google.javascript.rhino.Node, var3848=r0, var1451=r1, var1799=i0, var1311=$r2, var2927=$i1, var2362=$i2, var2821=i3, var1925=$r3}
; {com.google.javascript.rhino.Node=var1184, r0=var3848, r1=var1451, i0=var1799, $r2=var1311, $i1=var2927, $i2=var2362, i3=var2821, $r3=var1925}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>(".prototype.");	$r2 = ".prototype";	$i1 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = i0 + $i1;	i3 = $i2 + 1;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i3);	return $r3
;block_num 1