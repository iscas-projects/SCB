(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1304 0)
(declare-sort var3891 0)
(declare-sort var3125 0)
(declare-sort var1664 0)
(declare-sort var496 0)
(declare-sort var2760 0)
(declare-sort var1408 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var1304) var3125)
(declare-fun reverseResourceName/-23126418 (var3125 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var1304) var1664)
(declare-fun var1664_iterator/-912451715 (var1664) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var496)
(declare-fun cast-from-var496-to-var2760 (var496) var2760)
(declare-fun getResourceFromLocation/218856716 (var1304 String String var2760) var1408)
(declare-const null-var1304 var1304)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3125 var3125)
(declare-const null-var1408 var1408)
(declare-const var2339 var1304) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2339 null-var1304)))
(declare-const var2365 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var2365 null-String)))
(declare-const var2692 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2692 null-Bool)))
(define-const var3348 String null-String) ; Statement: r14 = null 
(define-const var3174 var3125 (shader/1139179338 var2339)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var3174 null-var3125))) ; Cond: $r1 != null 
(define-const var579 var3125 (shader/1139179338 var2339)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var798 String (reverseResourceName/-23126418 var579 var2365)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var311 String var798) ; Statement: r16 = $r15 
(assert true)
(define-const var2199 Bool (endsWith/985337093 var798 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var2199 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1961 var1664 (override/1139179338 var2339)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1699 Iterator (var1664_iterator/-912451715 var1961)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3933 Bool (Iterator_hasNext/-1669924200 var1699)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3933 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1660 var496 (Iterator_next/-1124697587 var1699)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1699!1 Iterator)
(define-const var3309 var2760 (cast-from-var496-to-var2760 var1660)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var2323 var1408 (getResourceFromLocation/218856716 var2339 var311 var3348 var3309)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (= var2323 null-var1408)) ; Cond: r5 == null 
(define-const var3933!1 Bool (Iterator_hasNext/-1669924200 var1699!1)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3933!1 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1660!1 var496 (Iterator_next/-1124697587 var1699!1)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1699!2 Iterator)
(define-const var3309!1 var2760 (cast-from-var496-to-var2760 var1660!1)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var2323!1 var1408 (getResourceFromLocation/218856716 var2339 var311 var3348 var3309!1)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= var2323!1 null-var1408))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1664_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var496-to-var2760=([java.lang.Object], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var1304=lombok.launch.ShadowClassLoader, var2339=r0, var2365=r13, var3891=null_type, var2692=z3, var3348=r14, var3125=lombok.launch.PackageShader, var3174=$r1, var579=$r2, var798=$r15, var311=r16, var2199=$z0, var1664=java.util.List, var1961=$r3, var1699=$r10, var3933=$z1, var496=java.lang.Object, var1660=$r4, var2760=java.io.File, var3309=r17, var1408=java.net.URL, var2323=r5}
; {lombok.launch.ShadowClassLoader=var1304, r0=var2339, r13=var2365, null_type=var3891, z3=var2692, r14=var3348, lombok.launch.PackageShader=var3125, $r1=var3174, $r2=var579, $r15=var798, r16=var311, $z0=var2199, java.util.List=var1664, $r3=var1961, $r10=var1699, $z1=var3933, java.lang.Object=var496, $r4=var1660, java.io.File=var2760, r17=var3309, java.net.URL=var1408, r5=var2323}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	return r5
;block_num 9