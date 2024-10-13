(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2854 0)
(declare-sort var1998 0)
(declare-sort var493 0)
(declare-sort var298 0)
(declare-sort var4 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var2854) var493)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var2854) var298)
(declare-fun var298_iterator/-912451715 (var298) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var298_isEmpty/-153543822 (var298) Bool)
(declare-const null-var2854 var2854)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var493 var493)
(declare-const null-var4 var4)
(declare-const var1295 var2854) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1295 null-var2854)))
(declare-const var3964 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3964 null-String)))
(declare-const var3421 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var3421 null-Bool)))
(define-const var42 String null-String) ; Statement: r14 = null 
(define-const var304 var493 (shader/1139179338 var1295)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var304 null-var493)))) ; Negate: Cond: $r1 != null  
(define-const var409 String var3964) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var507 String var409) ; Statement: r16 = $r15 
(assert true)
(define-const var3228 Bool (endsWith/985337093 var409 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var3228 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1643 var298 (override/1139179338 var1295)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1639 Iterator (var298_iterator/-912451715 var1643)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3371 Bool (Iterator_hasNext/-1669924200 var1639)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var3371 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3570 var298 (override/1139179338 var1295)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1080 Bool (var298_isEmpty/-153543822 var3570)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (not (= (ite var1080 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: if z3 == 0 goto (branch) 
(assert (= (ite var3421 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: if r14 == null goto $r19 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceSkippingSelf(java.lang.String)>(r16) 
(assert (not (= var42 null-String))) ; Negate: Cond: r14 == null  
(declare-const var2082 var4) ; Statement: $r11 := @caughtexception 
(assert (not (= var2082 null-var4)))
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var298_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var298_isEmpty/-153543822=([java.util.List], boolean)}
; {var2854=lombok.launch.ShadowClassLoader, var1295=r0, var3964=r13, var1998=null_type, var3421=z3, var42=r14, var493=lombok.launch.PackageShader, var304=$r1, var409=$r15, var507=r16, var3228=$z0, var298=java.util.List, var1643=$r3, var1639=$r10, var3371=$z1, var3570=$r6, var1080=$z2, var4=java.io.IOException, var2082=$r11}
; {lombok.launch.ShadowClassLoader=var2854, r0=var1295, r13=var3964, null_type=var1998, z3=var3421, r14=var42, lombok.launch.PackageShader=var493, $r1=var304, $r15=var409, r16=var507, $z0=var3228, java.util.List=var298, $r3=var1643, $r10=var1639, $z1=var3371, $r6=var3570, $z2=var1080, java.io.IOException=var4, $r11=var2082}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	if z3 == 0 goto (branch);	if r14 == null goto $r19 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceSkippingSelf(java.lang.String)>(r16);	$r11 := @caughtexception;	return null
;block_num 9