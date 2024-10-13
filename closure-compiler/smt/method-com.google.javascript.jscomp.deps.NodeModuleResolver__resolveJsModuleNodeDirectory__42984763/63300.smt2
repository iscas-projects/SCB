(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1266 0)
(declare-sort var2044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var1266 var1266)
(declare-const null-String String)
(declare-const var1266-FILES_TO_SEARCH (Array Int String))
(declare-const var1090 var1266) ; Statement: r0 := @this: com.google.javascript.jscomp.deps.NodeModuleResolver 
(assert (not (= var1090 null-var1266)))
(declare-const var3567 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3567 null-String)))
(declare-const var2665 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var2665 null-String)))
(assert true)
(define-const var390 Bool (endsWith/985337093 var2665 "/")) ; Statement: $z0 = virtualinvoke r13.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto i2 = 0 
(assert (= (ite var390 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1453 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var521 (Array Int String) var1266-FILES_TO_SEARCH) ; Statement: $r14 = <com.google.javascript.jscomp.deps.NodeModuleResolver: java.lang.String[] FILES_TO_SEARCH> 
(define-const var3771 Int (getLength-Arr-String-1 var521)) ; Statement: $i3 = lengthof $r14 
 ; Statement: if i2 >= $i3 goto return null 
(assert (>= var1453 var3771)) ; Cond: i2 >= $i3 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1266=com.google.javascript.jscomp.deps.NodeModuleResolver, var1090=r0, var3567=r1, var2044=null_type, var2665=r13, var390=$z0, var1453=i2, var521=$r14, var3771=$i3}
; {com.google.javascript.jscomp.deps.NodeModuleResolver=var1266, r0=var1090, r1=var3567, null_type=var2044, r13=var2665, $z0=var390, i2=var1453, $r14=var521, $i3=var3771}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.deps.NodeModuleResolver;	r1 := @parameter0: java.lang.String;	r13 := @parameter1: java.lang.String;	$z0 = virtualinvoke r13.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 == 0 goto i2 = 0;	i2 = 0;	$r14 = <com.google.javascript.jscomp.deps.NodeModuleResolver: java.lang.String[] FILES_TO_SEARCH>;	$i3 = lengthof $r14;	if i2 >= $i3 goto return null;	return null
;block_num 4