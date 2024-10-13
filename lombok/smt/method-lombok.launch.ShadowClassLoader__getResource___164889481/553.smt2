(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3250 0)
(declare-sort var1606 0)
(declare-sort var3908 0)
(declare-sort var798 0)
(declare-sort var865 0)
(declare-sort var1042 0)
(declare-sort var3620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var3250) var3908)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var3250) var798)
(declare-fun var798_iterator/-912451715 (var798) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var865)
(declare-fun cast-from-var865-to-var1042 (var865) var1042)
(declare-fun getResourceFromLocation/218856716 (var3250 String String var1042) var3620)
(declare-const null-var3250 var3250)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3908 var3908)
(declare-const null-var3620 var3620)
(declare-const var263 var3250) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var263 null-var3250)))
(declare-const var1729 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var1729 null-String)))
(declare-const var2606 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2606 null-Bool)))
(define-const var97 String null-String) ; Statement: r14 = null 
(define-const var1797 var3908 (shader/1139179338 var263)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var1797 null-var3908)))) ; Negate: Cond: $r1 != null  
(define-const var1254 String var1729) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var291 String var1254) ; Statement: r16 = $r15 
(assert true)
(define-const var712 Bool (endsWith/985337093 var1254 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var712 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2737 var798 (override/1139179338 var263)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var946 Iterator (var798_iterator/-912451715 var2737)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1994 Bool (Iterator_hasNext/-1669924200 var946)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1994 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1327 var865 (Iterator_next/-1124697587 var946)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var946!1 Iterator)
(define-const var833 var1042 (cast-from-var865-to-var1042 var1327)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var122 var3620 (getResourceFromLocation/218856716 var263 var291 var97 var833)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (= var122 null-var3620)) ; Cond: r5 == null 
(define-const var1994!1 Bool (Iterator_hasNext/-1669924200 var946!1)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1994!1 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1327!1 var865 (Iterator_next/-1124697587 var946!1)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var946!2 Iterator)
(define-const var833!1 var1042 (cast-from-var865-to-var1042 var1327!1)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var122!1 var3620 (getResourceFromLocation/218856716 var263 var291 var97 var833!1)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= var122!1 null-var3620))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var798_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var865-to-var1042=([java.lang.Object], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var3250=lombok.launch.ShadowClassLoader, var263=r0, var1729=r13, var1606=null_type, var2606=z3, var97=r14, var3908=lombok.launch.PackageShader, var1797=$r1, var1254=$r15, var291=r16, var712=$z0, var798=java.util.List, var2737=$r3, var946=$r10, var1994=$z1, var865=java.lang.Object, var1327=$r4, var1042=java.io.File, var833=r17, var3620=java.net.URL, var122=r5}
; {lombok.launch.ShadowClassLoader=var3250, r0=var263, r13=var1729, null_type=var1606, z3=var2606, r14=var97, lombok.launch.PackageShader=var3908, $r1=var1797, $r15=var1254, r16=var291, $z0=var712, java.util.List=var798, $r3=var2737, $r10=var946, $z1=var1994, java.lang.Object=var865, $r4=var1327, java.io.File=var1042, r17=var833, java.net.URL=var3620, r5=var122}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	return r5
;block_num 9