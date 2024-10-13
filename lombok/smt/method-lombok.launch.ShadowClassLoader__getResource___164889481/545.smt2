(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var902 0)
(declare-sort var3256 0)
(declare-sort var2207 0)
(declare-sort var837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var902) var2207)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var902) var837)
(declare-fun var837_iterator/-912451715 (var837) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var837_isEmpty/-153543822 (var837) Bool)
(declare-const null-var902 var902)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2207 var2207)
(declare-const var1895 var902) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1895 null-var902)))
(declare-const var3320 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3320 null-String)))
(declare-const var607 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var607 null-Bool)))
(define-const var293 String null-String) ; Statement: r14 = null 
(define-const var3653 var2207 (shader/1139179338 var1895)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var3653 null-var2207)))) ; Negate: Cond: $r1 != null  
(define-const var439 String var3320) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var417 String var439) ; Statement: r16 = $r15 
(assert true)
(define-const var160 Bool (endsWith/985337093 var439 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var160 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3643 var837 (override/1139179338 var1895)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1922 Iterator (var837_iterator/-912451715 var3643)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3814 Bool (Iterator_hasNext/-1669924200 var1922)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var3814 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1711 var837 (override/1139179338 var1895)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var3828 Bool (var837_isEmpty/-153543822 var1711)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (not (= (ite var3828 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: if z3 == 0 goto (branch) 
(assert (not (= (ite var607 1 0) 0))) ; Negate: Cond: z3 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var837_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var837_isEmpty/-153543822=([java.util.List], boolean)}
; {var902=lombok.launch.ShadowClassLoader, var1895=r0, var3320=r13, var3256=null_type, var607=z3, var293=r14, var2207=lombok.launch.PackageShader, var3653=$r1, var439=$r15, var417=r16, var160=$z0, var837=java.util.List, var3643=$r3, var1922=$r10, var3814=$z1, var1711=$r6, var3828=$z2}
; {lombok.launch.ShadowClassLoader=var902, r0=var1895, r13=var3320, null_type=var3256, z3=var607, r14=var293, lombok.launch.PackageShader=var2207, $r1=var3653, $r15=var439, r16=var417, $z0=var160, java.util.List=var837, $r3=var3643, $r10=var1922, $z1=var3814, $r6=var1711, $z2=var3828}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	if z3 == 0 goto (branch);	return null
;block_num 8