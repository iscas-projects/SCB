(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3935 0)
(declare-sort var858 0)
(declare-sort var1401 0)
(declare-sort var379 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var3935) var1401)
(declare-fun reverseResourceName/-23126418 (var1401 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun toSclResourceName/-1854801297 (var3935 String) String)
(declare-fun override/1139179338 (var3935) var379)
(declare-fun var379_iterator/-912451715 (var379) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var379_isEmpty/-153543822 (var379) Bool)
(declare-const null-var3935 var3935)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1401 var1401)
(declare-const var3258 var3935) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3258 null-var3935)))
(declare-const var3457 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3457 null-String)))
(declare-const var2477 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2477 null-Bool)))
(define-const var2282 String null-String) ; Statement: r14 = null 
(define-const var344 var1401 (shader/1139179338 var3258)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var344 null-var1401))) ; Cond: $r1 != null 
(define-const var2034 var1401 (shader/1139179338 var3258)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var3433 String (reverseResourceName/-23126418 var2034 var3457)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var413 String var3433) ; Statement: r16 = $r15 
(assert true)
(define-const var984 Bool (endsWith/985337093 var3433 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (not (= (ite var984 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2282!1 String (toSclResourceName/-1854801297 var3258 var3433)) ; Statement: r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15) 
(assert true) ; Non Conditional
(define-const var2125 var379 (override/1139179338 var3258)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2928 Iterator (var379_iterator/-912451715 var2125)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1636 Bool (Iterator_hasNext/-1669924200 var2928)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1636 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3368 var379 (override/1139179338 var3258)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2470 Bool (var379_isEmpty/-153543822 var3368)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (not (= (ite var2470 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: if z3 == 0 goto (branch) 
(assert (not (= (ite var2477 1 0) 0))) ; Negate: Cond: z3 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toSclResourceName/-1854801297=([lombok.launch.ShadowClassLoader, java.lang.String], java.lang.String), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var379_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var379_isEmpty/-153543822=([java.util.List], boolean)}
; {var3935=lombok.launch.ShadowClassLoader, var3258=r0, var3457=r13, var858=null_type, var2477=z3, var2282=r14, var1401=lombok.launch.PackageShader, var344=$r1, var2034=$r2, var3433=$r15, var413=r16, var984=$z0, var379=java.util.List, var2125=$r3, var2928=$r10, var1636=$z1, var3368=$r6, var2470=$z2}
; {lombok.launch.ShadowClassLoader=var3935, r0=var3258, r13=var3457, null_type=var858, z3=var2477, r14=var2282, lombok.launch.PackageShader=var1401, $r1=var344, $r2=var2034, $r15=var3433, r16=var413, $z0=var984, java.util.List=var379, $r3=var2125, $r10=var2928, $z1=var1636, $r6=var3368, $z2=var2470}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15);	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	if z3 == 0 goto (branch);	return null
;block_num 9