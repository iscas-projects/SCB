(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1246 0)
(declare-sort var3490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun list/1458469088 (var3490) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun delete/2092983584 (var3490) Bool)
(declare-const null-var1246 var1246)
(declare-const null-var3490 var3490)
(declare-const var2942 var1246) ; Statement: r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree 
(assert (not (= var2942 null-var1246)))
(declare-const var3020 var3490) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3020 null-var3490)))
(assert true)
(define-const var889 (Array Int String) (list/1458469088 var3020)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String[] list()>() 
(define-const var2447 Int (getLength-Arr-String-1 var889)) ; Statement: i0 = lengthof r1 
(define-const var3661 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $z0 = virtualinvoke r0.<java.io.File: boolean delete()>() 
(assert (>= var3661 var2447)) ; Cond: i1 >= i0 
(assert true)
(define-const var233 Bool (delete/2092983584 var3020)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean delete()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var233 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {list/1458469088=([java.io.File], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), delete/2092983584=([java.io.File], boolean)}
; {var1246=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree, var2942=r16, var3490=java.io.File, var3020=r0, var889=r1, var2447=i0, var3661=i1, var233=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree=var1246, r16=var2942, java.io.File=var3490, r0=var3020, r1=var889, i0=var2447, i1=var3661, $z0=var233}
;seq 
;cnt {}
;stmts r16 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Deltree;	r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.lang.String[] list()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $z0 = virtualinvoke r0.<java.io.File: boolean delete()>();	$z0 = virtualinvoke r0.<java.io.File: boolean delete()>();	if $z0 != 0 goto return;	return
;block_num 4