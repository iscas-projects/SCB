(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2852 0)
(declare-sort var2734 0)
(declare-sort var1116 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var2852) var1116)
(declare-fun reverseResourceName/-23126418 (var1116 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var2852) var3509)
(declare-fun var3509_iterator/-912451715 (var3509) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3509_isEmpty/-153543822 (var3509) Bool)
(declare-const null-var2852 var2852)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1116 var1116)
(declare-const var1054 var2852) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1054 null-var2852)))
(declare-const var1629 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var1629 null-String)))
(declare-const var2190 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2190 null-Bool)))
(define-const var1387 String null-String) ; Statement: r14 = null 
(define-const var1815 var1116 (shader/1139179338 var1054)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var1815 null-var1116))) ; Cond: $r1 != null 
(define-const var3619 var1116 (shader/1139179338 var1054)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var721 String (reverseResourceName/-23126418 var3619 var1629)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var299 String var721) ; Statement: r16 = $r15 
(assert true)
(define-const var2209 Bool (endsWith/985337093 var721 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var2209 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1260 var3509 (override/1139179338 var1054)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var718 Iterator (var3509_iterator/-912451715 var1260)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1272 Bool (Iterator_hasNext/-1669924200 var718)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1272 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2874 var3509 (override/1139179338 var1054)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2682 Bool (var3509_isEmpty/-153543822 var2874)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (not (= (ite var2682 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: if z3 == 0 goto (branch) 
(assert (not (= (ite var2190 1 0) 0))) ; Negate: Cond: z3 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3509_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3509_isEmpty/-153543822=([java.util.List], boolean)}
; {var2852=lombok.launch.ShadowClassLoader, var1054=r0, var1629=r13, var2734=null_type, var2190=z3, var1387=r14, var1116=lombok.launch.PackageShader, var1815=$r1, var3619=$r2, var721=$r15, var299=r16, var2209=$z0, var3509=java.util.List, var1260=$r3, var718=$r10, var1272=$z1, var2874=$r6, var2682=$z2}
; {lombok.launch.ShadowClassLoader=var2852, r0=var1054, r13=var1629, null_type=var2734, z3=var2190, r14=var1387, lombok.launch.PackageShader=var1116, $r1=var1815, $r2=var3619, $r15=var721, r16=var299, $z0=var2209, java.util.List=var3509, $r3=var1260, $r10=var718, $z1=var1272, $r6=var2874, $z2=var2682}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	if z3 == 0 goto (branch);	return null
;block_num 8