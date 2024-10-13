(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3111 0)
(declare-sort var3839 0)
(declare-sort var1292 0)
(declare-sort var2658 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var3111) var1292)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun toSclResourceName/-1854801297 (var3111 String) String)
(declare-fun override/1139179338 (var3111) var2658)
(declare-fun var2658_iterator/-912451715 (var2658) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2658_isEmpty/-153543822 (var2658) Bool)
(declare-const null-var3111 var3111)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1292 var1292)
(declare-const var2895 var3111) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2895 null-var3111)))
(declare-const var886 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var886 null-String)))
(declare-const var480 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var480 null-Bool)))
(define-const var1648 String null-String) ; Statement: r14 = null 
(define-const var2332 var1292 (shader/1139179338 var2895)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var2332 null-var1292)))) ; Negate: Cond: $r1 != null  
(define-const var2012 String var886) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var2558 String var2012) ; Statement: r16 = $r15 
(assert true)
(define-const var604 Bool (endsWith/985337093 var2012 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (not (= (ite var604 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1648!1 String (toSclResourceName/-1854801297 var2895 var2012)) ; Statement: r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15) 
(assert true) ; Non Conditional
(define-const var1873 var2658 (override/1139179338 var2895)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1313 Iterator (var2658_iterator/-912451715 var1873)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3055 Bool (Iterator_hasNext/-1669924200 var1313)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var3055 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3252 var2658 (override/1139179338 var2895)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var66 Bool (var2658_isEmpty/-153543822 var3252)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (not (= (ite var66 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: if z3 == 0 goto (branch) 
(assert (not (= (ite var480 1 0) 0))) ; Negate: Cond: z3 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toSclResourceName/-1854801297=([lombok.launch.ShadowClassLoader, java.lang.String], java.lang.String), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2658_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2658_isEmpty/-153543822=([java.util.List], boolean)}
; {var3111=lombok.launch.ShadowClassLoader, var2895=r0, var886=r13, var3839=null_type, var480=z3, var1648=r14, var1292=lombok.launch.PackageShader, var2332=$r1, var2012=$r15, var2558=r16, var604=$z0, var2658=java.util.List, var1873=$r3, var1313=$r10, var3055=$z1, var3252=$r6, var66=$z2}
; {lombok.launch.ShadowClassLoader=var3111, r0=var2895, r13=var886, null_type=var3839, z3=var480, r14=var1648, lombok.launch.PackageShader=var1292, $r1=var2332, $r15=var2012, r16=var2558, $z0=var604, java.util.List=var2658, $r3=var1873, $r10=var1313, $z1=var3055, $r6=var3252, $z2=var66}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15);	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	if z3 == 0 goto (branch);	return null
;block_num 9