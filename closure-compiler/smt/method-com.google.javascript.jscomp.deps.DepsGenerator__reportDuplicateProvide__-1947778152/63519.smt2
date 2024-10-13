(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3747 0)
(declare-sort var2430 0)
(declare-sort var1676 0)
(declare-sort var3710 0)
(declare-sort var671 0)
(declare-sort var2344 0)
(declare-sort var2894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun errorManager/-1253593886 (var3747) var3710)
(declare-fun var1676_getName/250543215 (var1676) String)
(declare-fun arr-String-init () (Array Int String))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2894_make/1914735147 (String Int Int var2344 (Array Int String)) var2894)
(declare-fun var3710_report/-413132130 (var3710 var671 var2894) void)
(declare-const null-var3747 var3747)
(declare-const null-String String)
(declare-const null-var1676 var1676)
(declare-const var671-ERROR var671)
(declare-const var3747-MULTIPLE_PROVIDES_ERROR var2344)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3351 var3747) ; Statement: r2 := @this: com.google.javascript.jscomp.deps.DepsGenerator 
(assert (not (= var3351 null-var3747)))
(declare-const var2307 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var2307 null-String)))
(declare-const var85 var1676) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.deps.DependencyInfo 
(assert (not (= var85 null-var1676)))
(declare-const var2467 var1676) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.deps.DependencyInfo 
(assert (not (= var2467 null-var1676)))
 ; Statement: if r0 != r1 goto $r3 = r2.<com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.ErrorManager errorManager> 
(assert (not (= var85 var2467))) ; Cond: r0 != r1 
(define-const var1368 var3710 (errorManager/-1253593886 var3351)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.ErrorManager errorManager> 
(define-const var2640 var671 var671-ERROR) ; Statement: $r4 = <com.google.javascript.jscomp.CheckLevel: com.google.javascript.jscomp.CheckLevel ERROR> 
(define-const var2700 String (var1676_getName/250543215 var2467)) ; Statement: $r9 = interfaceinvoke r1.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getName()>() 
(define-const var1655 var2344 var3747-MULTIPLE_PROVIDES_ERROR) ; Statement: $r7 = <com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.DiagnosticType MULTIPLE_PROVIDES_ERROR> 
(define-const var2356 (Array Int String) arr-String-init) ; Statement: $r5 = newarray (java.lang.String)[2] 
(declare-const var2356!1 (Array Int String))
(assert (not (= var2356!1 null-__Array__Int__String__)))
(assert (= (select var2356!1 0) var2307)) ; Statement: $r5[0] = r6 
(define-const var2586 String (var1676_getName/250543215 var85)) ; Statement: $r8 = interfaceinvoke r0.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getName()>() 
(declare-const var2356!2 (Array Int String))
(assert (not (= var2356!2 null-__Array__Int__String__)))
(assert (= (select var2356!2 1) var2586)) ; Statement: $r5[1] = $r8 
(define-const var2502 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(define-const var1875 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var950 var2894 (var2894_make/1914735147 var2700 var2502 var1875 var1655 var2356!2)) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(java.lang.String,int,int,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r9, $i5, $i7, $r7, $r5) 
;(assert (var3710_report/-413132130 var1368 var2640 var950)) ; Statement: interfaceinvoke $r3.<com.google.javascript.jscomp.ErrorManager: void report(com.google.javascript.jscomp.CheckLevel,com.google.javascript.jscomp.JSError)>($r4, $r10) 

(declare-const var1368!1 var3710)
(declare-const var2640!1 var671)
(declare-const var950!1 var2894)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {errorManager/-1253593886=([com.google.javascript.jscomp.deps.DepsGenerator], com.google.javascript.jscomp.ErrorManager), var1676_getName/250543215=([com.google.javascript.jscomp.deps.DependencyInfo], java.lang.String), arr-String-init=([], java.lang.String[]), cast-from-Int-to-Int=([int], int), var2894_make/1914735147=([java.lang.String, int, int, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), var3710_report/-413132130=([com.google.javascript.jscomp.ErrorManager, com.google.javascript.jscomp.CheckLevel, com.google.javascript.jscomp.JSError], void)}
; {var3747=com.google.javascript.jscomp.deps.DepsGenerator, var3351=r2, var2307=r6, var2430=null_type, var1676=com.google.javascript.jscomp.deps.DependencyInfo, var85=r0, var2467=r1, var3710=com.google.javascript.jscomp.ErrorManager, var1368=$r3, var671=com.google.javascript.jscomp.CheckLevel, var2640=$r4, var2700=$r9, var2344=com.google.javascript.jscomp.DiagnosticType, var1655=$r7, var2356=$r5, var2586=$r8, var2502=$i5, var1875=$i7, var2894=com.google.javascript.jscomp.JSError, var950=$r10}
; {com.google.javascript.jscomp.deps.DepsGenerator=var3747, r2=var3351, r6=var2307, null_type=var2430, com.google.javascript.jscomp.deps.DependencyInfo=var1676, r0=var85, r1=var2467, com.google.javascript.jscomp.ErrorManager=var3710, $r3=var1368, com.google.javascript.jscomp.CheckLevel=var671, $r4=var2640, $r9=var2700, com.google.javascript.jscomp.DiagnosticType=var2344, $r7=var1655, $r5=var2356, $r8=var2586, $i5=var2502, $i7=var1875, com.google.javascript.jscomp.JSError=var2894, $r10=var950}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.deps.DepsGenerator;	r6 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.deps.DependencyInfo;	r1 := @parameter2: com.google.javascript.jscomp.deps.DependencyInfo;	if r0 != r1 goto $r3 = r2.<com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.ErrorManager errorManager>;	$r3 = r2.<com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.ErrorManager errorManager>;	$r4 = <com.google.javascript.jscomp.CheckLevel: com.google.javascript.jscomp.CheckLevel ERROR>;	$r9 = interfaceinvoke r1.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getName()>();	$r7 = <com.google.javascript.jscomp.deps.DepsGenerator: com.google.javascript.jscomp.DiagnosticType MULTIPLE_PROVIDES_ERROR>;	$r5 = newarray (java.lang.String)[2];	$r5[0] = r6;	$r8 = interfaceinvoke r0.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getName()>();	$r5[1] = $r8;	$i5 = (int) -1;	$i7 = (int) -1;	$r10 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(java.lang.String,int,int,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>($r9, $i5, $i7, $r7, $r5);	interfaceinvoke $r3.<com.google.javascript.jscomp.ErrorManager: void report(com.google.javascript.jscomp.CheckLevel,com.google.javascript.jscomp.JSError)>($r4, $r10);	return
;block_num 3