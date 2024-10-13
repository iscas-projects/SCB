(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var3875 0)
(declare-sort var2685 0)
(declare-sort var170 0)
(declare-sort var1888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var3875) String)
(declare-fun assignments/1685743079 (var1707) var2685)
(declare-fun var2685_get/1088891777 (var2685 var170) var170)
(declare-fun cast-from-String-to-var170 (String) var170)
(declare-fun cast-from-var170-to-var1888 (var170) var1888)
(declare-fun newName/-1762182710 (var1888) String)
(declare-const null-var1707 var1707)
(declare-const null-var3875 var3875)
(declare-const var1208 var1707) ; Statement: r2 := @this: com.google.javascript.jscomp.RenameVars 
(assert (not (= var1208 null-var1707)))
(declare-const var1943 var3875) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1943 null-var3875)))
(assert true)
(define-const var480 String (getString/-897720134 var1943)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var2841 var2685 (assignments/1685743079 var1208)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.RenameVars: java.util.Map assignments> 
(define-const var3999 var170 (var2685_get/1088891777 var2841 (cast-from-String-to-var170 var480))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var301 var1888 (cast-from-var170-to-var1888 var3999)) ; Statement: r5 = (com.google.javascript.jscomp.RenameVars$Assignment) $r4 
(define-const var1492 String (newName/-1762182710 var301)) ; Statement: $r6 = r5.<com.google.javascript.jscomp.RenameVars$Assignment: java.lang.String newName> 
(assert true)
(define-const var22 Bool (= var1492 var480)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return null 
(assert (not (= (ite var22 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), assignments/1685743079=([com.google.javascript.jscomp.RenameVars], java.util.Map), var2685_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var170=([java.lang.String], java.lang.Object), cast-from-var170-to-var1888=([java.lang.Object], com.google.javascript.jscomp.RenameVars$Assignment), newName/-1762182710=([com.google.javascript.jscomp.RenameVars$Assignment], java.lang.String)}
; {var1707=com.google.javascript.jscomp.RenameVars, var1208=r2, var3875=com.google.javascript.rhino.Node, var1943=r0, var480=r1, var2685=java.util.Map, var2841=$r3, var170=java.lang.Object, var3999=$r4, var1888=com.google.javascript.jscomp.RenameVars$Assignment, var301=r5, var1492=$r6, var22=$z0}
; {com.google.javascript.jscomp.RenameVars=var1707, r2=var1208, com.google.javascript.rhino.Node=var3875, r0=var1943, r1=var480, java.util.Map=var2685, $r3=var2841, java.lang.Object=var170, $r4=var3999, com.google.javascript.jscomp.RenameVars$Assignment=var1888, r5=var301, $r6=var1492, $z0=var22}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.RenameVars;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r3 = r2.<com.google.javascript.jscomp.RenameVars: java.util.Map assignments>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r5 = (com.google.javascript.jscomp.RenameVars$Assignment) $r4;	$r6 = r5.<com.google.javascript.jscomp.RenameVars$Assignment: java.lang.String newName>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return null;	return null
;block_num 2