(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1520 0)
(declare-sort var2352 0)
(declare-sort var2260 0)
(declare-sort var1906 0)
(declare-sort var375 0)
(declare-sort var641 0)
(declare-sort var1534 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var1520) var2260)
(declare-fun reverseResourceName/-23126418 (var2260 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var1520) var1906)
(declare-fun var1906_iterator/-912451715 (var1906) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var375)
(declare-fun cast-from-var375-to-var641 (var375) var641)
(declare-fun getResourceFromLocation/218856716 (var1520 String String var641) var1534)
(declare-const null-var1520 var1520)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2260 var2260)
(declare-const null-var1534 var1534)
(declare-const var1856 var1520) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1856 null-var1520)))
(declare-const var3340 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3340 null-String)))
(declare-const var1406 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var1406 null-Bool)))
(define-const var939 String null-String) ; Statement: r14 = null 
(define-const var840 var2260 (shader/1139179338 var1856)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var840 null-var2260))) ; Cond: $r1 != null 
(define-const var3334 var2260 (shader/1139179338 var1856)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var2414 String (reverseResourceName/-23126418 var3334 var3340)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var3817 String var2414) ; Statement: r16 = $r15 
(assert true)
(define-const var3007 Bool (endsWith/985337093 var2414 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var3007 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2684 var1906 (override/1139179338 var1856)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2207 Iterator (var1906_iterator/-912451715 var2684)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3408 Bool (Iterator_hasNext/-1669924200 var2207)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var3408 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3179 var375 (Iterator_next/-1124697587 var2207)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2207!1 Iterator)
(define-const var188 var641 (cast-from-var375-to-var641 var3179)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var2176 var1534 (getResourceFromLocation/218856716 var1856 var3817 var939 var188)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= var2176 null-var1534))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1906_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var375-to-var641=([java.lang.Object], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var1520=lombok.launch.ShadowClassLoader, var1856=r0, var3340=r13, var2352=null_type, var1406=z3, var939=r14, var2260=lombok.launch.PackageShader, var840=$r1, var3334=$r2, var2414=$r15, var3817=r16, var3007=$z0, var1906=java.util.List, var2684=$r3, var2207=$r10, var3408=$z1, var375=java.lang.Object, var3179=$r4, var641=java.io.File, var188=r17, var1534=java.net.URL, var2176=r5}
; {lombok.launch.ShadowClassLoader=var1520, r0=var1856, r13=var3340, null_type=var2352, z3=var1406, r14=var939, lombok.launch.PackageShader=var2260, $r1=var840, $r2=var3334, $r15=var2414, r16=var3817, $z0=var3007, java.util.List=var1906, $r3=var2684, $r10=var2207, $z1=var3408, java.lang.Object=var375, $r4=var3179, java.io.File=var641, r17=var188, java.net.URL=var1534, r5=var2176}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	return r5
;block_num 7