(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1442 0)
(declare-sort var3534 0)
(declare-sort var1150 0)
(declare-sort var3496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun options/1872402743 (var1442) var1150)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var1150_get/1088891777 (var1150 var3496) var3496)
(declare-fun cast-from-String-to-var3496 (String) var3496)
(declare-fun substitute/2075739974 (var1442 String) String)
(declare-const null-var1442 var1442)
(declare-const null-String String)
(declare-const null-var3496 var3496)
(declare-const var1142 var1442) ; Statement: r0 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var1142 null-var1442)))
(declare-const var336 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var336 null-String)))
(declare-const var373 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var373 null-String)))
(define-const var1359 var1150 (options/1872402743 var1142)) ; Statement: $r2 = r0.<org.javacc.utils.OutputFileGenerator: java.util.Map options> 
(assert true)
(define-const var406 String (trim/-847153721 var336)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(define-const var1964 var3496 (var1150_get/1088891777 var1359 (cast-from-String-to-var3496 var406))) ; Statement: r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
 ; Statement: if r4 == null goto $r6 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String substitute(java.lang.String)>(r5) 
(assert (= var1964 null-var3496)) ; Cond: r4 == null 
(assert true)
(define-const var892 String (substitute/2075739974 var1142 var373)) ; Statement: $r6 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String substitute(java.lang.String)>(r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {options/1872402743=([org.javacc.utils.OutputFileGenerator], java.util.Map), trim/-847153721=([java.lang.String], java.lang.String), var1150_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3496=([java.lang.String], java.lang.Object), substitute/2075739974=([org.javacc.utils.OutputFileGenerator, java.lang.String], java.lang.String)}
; {var1442=org.javacc.utils.OutputFileGenerator, var1142=r0, var336=r1, var3534=null_type, var373=r5, var1150=java.util.Map, var1359=$r2, var406=$r3, var3496=java.lang.Object, var1964=r4, var892=$r6}
; {org.javacc.utils.OutputFileGenerator=var1442, r0=var1142, r1=var336, null_type=var3534, r5=var373, java.util.Map=var1150, $r2=var1359, $r3=var406, java.lang.Object=var3496, r4=var1964, $r6=var892}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.javacc.utils.OutputFileGenerator;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r2 = r0.<org.javacc.utils.OutputFileGenerator: java.util.Map options>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	if r4 == null goto $r6 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String substitute(java.lang.String)>(r5);	$r6 = specialinvoke r0.<org.javacc.utils.OutputFileGenerator: java.lang.String substitute(java.lang.String)>(r5);	return $r6
;block_num 2