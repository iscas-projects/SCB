(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1370 0)
(declare-sort var2459 0)
(declare-sort var2481 0)
(declare-sort var3088 0)
(declare-sort var493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var1370) var2481)
(declare-fun reverseResourceName/-23126418 (var2481 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var1370) var3088)
(declare-fun var3088_iterator/-912451715 (var3088) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3088_isEmpty/-153543822 (var3088) Bool)
(declare-const null-var1370 var1370)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2481 var2481)
(declare-const null-var493 var493)
(declare-const var3315 var1370) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3315 null-var1370)))
(declare-const var3304 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3304 null-String)))
(declare-const var2736 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2736 null-Bool)))
(define-const var2859 String null-String) ; Statement: r14 = null 
(define-const var1652 var2481 (shader/1139179338 var3315)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var1652 null-var2481))) ; Cond: $r1 != null 
(define-const var1208 var2481 (shader/1139179338 var3315)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var1038 String (reverseResourceName/-23126418 var1208 var3304)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var3791 String var1038) ; Statement: r16 = $r15 
(assert true)
(define-const var715 Bool (endsWith/985337093 var1038 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var715 1 0) 0)) ; Cond: $z0 == 0 
(define-const var275 var3088 (override/1139179338 var3315)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var888 Iterator (var3088_iterator/-912451715 var275)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var242 Bool (Iterator_hasNext/-1669924200 var888)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var242 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3084 var3088 (override/1139179338 var3315)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2209 Bool (var3088_isEmpty/-153543822 var3084)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (not (= (ite var2209 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: if z3 == 0 goto (branch) 
(assert (= (ite var2736 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: if r14 == null goto $r19 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceSkippingSelf(java.lang.String)>(r16) 
(assert (not (= var2859 null-String))) ; Negate: Cond: r14 == null  
(declare-const var1965 var493) ; Statement: $r11 := @caughtexception 
(assert (not (= var1965 null-var493)))
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3088_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3088_isEmpty/-153543822=([java.util.List], boolean)}
; {var1370=lombok.launch.ShadowClassLoader, var3315=r0, var3304=r13, var2459=null_type, var2736=z3, var2859=r14, var2481=lombok.launch.PackageShader, var1652=$r1, var1208=$r2, var1038=$r15, var3791=r16, var715=$z0, var3088=java.util.List, var275=$r3, var888=$r10, var242=$z1, var3084=$r6, var2209=$z2, var493=java.io.IOException, var1965=$r11}
; {lombok.launch.ShadowClassLoader=var1370, r0=var3315, r13=var3304, null_type=var2459, z3=var2736, r14=var2859, lombok.launch.PackageShader=var2481, $r1=var1652, $r2=var1208, $r15=var1038, r16=var3791, $z0=var715, java.util.List=var3088, $r3=var275, $r10=var888, $z1=var242, $r6=var3084, $z2=var2209, java.io.IOException=var493, $r11=var1965}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	if z3 == 0 goto (branch);	if r14 == null goto $r19 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceSkippingSelf(java.lang.String)>(r16);	$r11 := @caughtexception;	return null
;block_num 9