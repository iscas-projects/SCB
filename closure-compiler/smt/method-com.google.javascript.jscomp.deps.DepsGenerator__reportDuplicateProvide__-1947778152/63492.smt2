(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var894 0)
(declare-sort var1520 0)
(declare-sort var3349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3349_getPathRelativeToClosureBase/-145143712 (var3349) String)
(declare-const null-var894 var894)
(declare-const null-String String)
(declare-const null-var3349 var3349)
(declare-const var845 var894) ; Statement: r2 := @this: com.google.javascript.jscomp.deps.DepsGenerator 
(assert (not (= var845 null-var894)))
(declare-const var3555 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3555 null-String)))
(declare-const var3541 var3349) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.deps.DependencyInfo 
(assert (not (= var3541 null-var3349)))
(declare-const var2461 var3349) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.deps.DependencyInfo 
(assert (not (= var2461 null-var3349)))
 ; Statement: if r0 != r1 goto $r3 = r2.<com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.ErrorManager errorManager> 
(assert (not (not (= var3541 var2461)))) ; Negate: Cond: r0 != r1  
(define-const var1216 String (var3349_getPathRelativeToClosureBase/-145143712 var3541)) ; Statement: $r11 = interfaceinvoke r0.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getPathRelativeToClosureBase()>() 
(assert true)
(define-const var2952 Bool (= var1216 var3555)) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r6) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2952 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3349_getPathRelativeToClosureBase/-145143712=([com.google.javascript.jscomp.deps.DependencyInfo], java.lang.String)}
; {var894=com.google.javascript.jscomp.deps.DepsGenerator, var845=r2, var3555=r6, var1520=null_type, var3349=com.google.javascript.jscomp.deps.DependencyInfo, var3541=r0, var2461=r1, var1216=$r11, var2952=$z0}
; {com.google.javascript.jscomp.deps.DepsGenerator=var894, r2=var845, r6=var3555, null_type=var1520, com.google.javascript.jscomp.deps.DependencyInfo=var3349, r0=var3541, r1=var2461, $r11=var1216, $z0=var2952}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.deps.DepsGenerator;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.deps.DependencyInfo;	r1 := @parameter2: com.google.javascript.jscomp.deps.DependencyInfo;	if r0 != r1 goto $r3 = r2.<com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.ErrorManager errorManager>;	$r11 = interfaceinvoke r0.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getPathRelativeToClosureBase()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r6);	if $z0 != 0 goto return;	return
;block_num 3