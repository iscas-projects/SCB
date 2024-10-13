(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3058 0)
(declare-sort var2400 0)
(declare-sort var2229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parents/66204529 (var3058) var2400)
(declare-fun var2400_add/-1142548109 (var2400 var2229) Bool)
(declare-fun cast-from-ClassObject-to-var2229 (ClassObject) var2229)
(declare-const null-var3058 var3058)
(declare-const null-ClassObject ClassObject)
(declare-const var2339 var3058) ; Statement: r0 := @this: org.junit.runners.model.RunnerBuilder 
(assert (not (= var2339 null-var3058)))
(declare-const var3378 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3378 null-ClassObject)))
(define-const var2286 var2400 (parents/66204529 var2339)) ; Statement: $r2 = r0.<org.junit.runners.model.RunnerBuilder: java.util.Set parents> 
(define-const var1912 Bool (var2400_add/-1142548109 var2286 (cast-from-ClassObject-to-var2229 var3378))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return r1 
(assert (not (= (ite var1912 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {parents/66204529=([org.junit.runners.model.RunnerBuilder], java.util.Set), var2400_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-ClassObject-to-var2229=([java.lang.Class], java.lang.Object)}
; {var3058=org.junit.runners.model.RunnerBuilder, var2339=r0, var3378=r1, var2400=java.util.Set, var2286=$r2, var2229=java.lang.Object, var1912=$z0}
; {org.junit.runners.model.RunnerBuilder=var3058, r0=var2339, r1=var3378, java.util.Set=var2400, $r2=var2286, java.lang.Object=var2229, $z0=var1912}
;seq 
;cnt {}
;stmts r0 := @this: org.junit.runners.model.RunnerBuilder;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.junit.runners.model.RunnerBuilder: java.util.Set parents>;	$z0 = interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	if $z0 != 0 goto return r1;	return r1
;block_num 2