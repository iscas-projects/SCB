(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3456 0)
(declare-sort var2444 0)
(declare-sort var2660 0)
(declare-sort var323 0)
(declare-sort var3269 0)
(declare-sort var2457 0)
(declare-sort var1312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var3456) var2660)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var3456) var323)
(declare-fun var323_iterator/-912451715 (var323) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var3269)
(declare-fun cast-from-var3269-to-var2457 (var3269) var2457)
(declare-fun getResourceFromLocation/218856716 (var3456 String String var2457) var1312)
(declare-const null-var3456 var3456)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2660 var2660)
(declare-const null-var1312 var1312)
(declare-const var2287 var3456) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2287 null-var3456)))
(declare-const var2369 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var2369 null-String)))
(declare-const var2756 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2756 null-Bool)))
(define-const var319 String null-String) ; Statement: r14 = null 
(define-const var3413 var2660 (shader/1139179338 var2287)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var3413 null-var2660)))) ; Negate: Cond: $r1 != null  
(define-const var3889 String var2369) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var810 String var3889) ; Statement: r16 = $r15 
(assert true)
(define-const var2891 Bool (endsWith/985337093 var3889 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var2891 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1637 var323 (override/1139179338 var2287)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var126 Iterator (var323_iterator/-912451715 var1637)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1734 Bool (Iterator_hasNext/-1669924200 var126)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1734 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3727 var3269 (Iterator_next/-1124697587 var126)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var126!1 Iterator)
(define-const var2301 var2457 (cast-from-var3269-to-var2457 var3727)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var3634 var1312 (getResourceFromLocation/218856716 var2287 var810 var319 var2301)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= var3634 null-var1312))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var323_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var3269-to-var2457=([java.lang.Object], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var3456=lombok.launch.ShadowClassLoader, var2287=r0, var2369=r13, var2444=null_type, var2756=z3, var319=r14, var2660=lombok.launch.PackageShader, var3413=$r1, var3889=$r15, var810=r16, var2891=$z0, var323=java.util.List, var1637=$r3, var126=$r10, var1734=$z1, var3269=java.lang.Object, var3727=$r4, var2457=java.io.File, var2301=r17, var1312=java.net.URL, var3634=r5}
; {lombok.launch.ShadowClassLoader=var3456, r0=var2287, r13=var2369, null_type=var2444, z3=var2756, r14=var319, lombok.launch.PackageShader=var2660, $r1=var3413, $r15=var3889, r16=var810, $z0=var2891, java.util.List=var323, $r3=var1637, $r10=var126, $z1=var1734, java.lang.Object=var3269, $r4=var3727, java.io.File=var2457, r17=var2301, java.net.URL=var1312, r5=var3634}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	return r5
;block_num 7