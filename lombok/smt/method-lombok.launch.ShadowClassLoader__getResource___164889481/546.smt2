(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3109 0)
(declare-sort var1864 0)
(declare-sort var632 0)
(declare-sort var3303 0)
(declare-sort var3365 0)
(declare-sort var672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var3109) var632)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var3109) var3303)
(declare-fun var3303_iterator/-912451715 (var3303) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3303_isEmpty/-153543822 (var3303) Bool)
(declare-fun SELF_BASE_FILE/1139179338 (var3109) var3365)
(declare-fun getResourceFromLocation/218856716 (var3109 String String var3365) var672)
(declare-const null-var3109 var3109)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var632 var632)
(declare-const null-var672 var672)
(declare-const var2923 var3109) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2923 null-var3109)))
(declare-const var63 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var63 null-String)))
(declare-const var100 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var100 null-Bool)))
(define-const var2661 String null-String) ; Statement: r14 = null 
(define-const var2178 var632 (shader/1139179338 var2923)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var2178 null-var632)))) ; Negate: Cond: $r1 != null  
(define-const var2500 String var63) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var3300 String var2500) ; Statement: r16 = $r15 
(assert true)
(define-const var3995 Bool (endsWith/985337093 var2500 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var3995 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2659 var3303 (override/1139179338 var2923)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1635 Iterator (var3303_iterator/-912451715 var2659)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3670 Bool (Iterator_hasNext/-1669924200 var1635)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var3670 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var301 var3303 (override/1139179338 var2923)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1312 Bool (var3303_isEmpty/-153543822 var301)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (= (ite var1312 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3184 var3365 (SELF_BASE_FILE/1139179338 var2923)) ; Statement: $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert true)
(define-const var278 var672 (getResourceFromLocation/218856716 var2923 var3300 var2661 var3184)) ; Statement: r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7) 
 ; Statement: if r20 == null goto (branch) 
(assert (not (= var278 null-var672))) ; Negate: Cond: r20 == null  
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3303_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3303_isEmpty/-153543822=([java.util.List], boolean), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var3109=lombok.launch.ShadowClassLoader, var2923=r0, var63=r13, var1864=null_type, var100=z3, var2661=r14, var632=lombok.launch.PackageShader, var2178=$r1, var2500=$r15, var3300=r16, var3995=$z0, var3303=java.util.List, var2659=$r3, var1635=$r10, var3670=$z1, var301=$r6, var1312=$z2, var3365=java.io.File, var3184=$r7, var672=java.net.URL, var278=r20}
; {lombok.launch.ShadowClassLoader=var3109, r0=var2923, r13=var63, null_type=var1864, z3=var100, r14=var2661, lombok.launch.PackageShader=var632, $r1=var2178, $r15=var2500, r16=var3300, $z0=var3995, java.util.List=var3303, $r3=var2659, $r10=var1635, $z1=var3670, $r6=var301, $z2=var1312, java.io.File=var3365, $r7=var3184, java.net.URL=var672, r20=var278}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	$r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7);	if r20 == null goto (branch);	return r20
;block_num 8