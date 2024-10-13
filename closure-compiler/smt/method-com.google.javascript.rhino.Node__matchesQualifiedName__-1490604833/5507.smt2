(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var606 0)
(declare-sort var3207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun matchesQualifiedName/1000856418 (var606 String Int) Bool)
(declare-const null-var606 var606)
(declare-const null-String String)
(declare-const var21 var606) ; Statement: r0 := @this: com.google.javascript.rhino.Node 
(assert (not (= var21 null-var606)))
(declare-const var1660 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1660 null-String)))
(assert true)
(define-const var2760 Int (length/-134980193 var1660)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var1062 Bool (matchesQualifiedName/1000856418 var21 var1660 var2760)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean matchesQualifiedName(java.lang.String,int)>(r1, $i0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), matchesQualifiedName/1000856418=([com.google.javascript.rhino.Node, java.lang.String, int], boolean)}
; {var606=com.google.javascript.rhino.Node, var21=r0, var1660=r1, var3207=null_type, var2760=$i0, var1062=$z0}
; {com.google.javascript.rhino.Node=var606, r0=var21, r1=var1660, null_type=var3207, $i0=var2760, $z0=var1062}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.rhino.Node;	r1 := @parameter0: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean matchesQualifiedName(java.lang.String,int)>(r1, $i0);	return $z0
;block_num 1