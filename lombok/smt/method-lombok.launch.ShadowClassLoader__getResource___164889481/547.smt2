(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1667 0)
(declare-sort var2833 0)
(declare-sort var939 0)
(declare-sort var1910 0)
(declare-sort var476 0)
(declare-sort var331 0)
(declare-sort var729 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var1667) var939)
(declare-fun reverseResourceName/-23126418 (var939 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun toSclResourceName/-1854801297 (var1667 String) String)
(declare-fun override/1139179338 (var1667) var1910)
(declare-fun var1910_iterator/-912451715 (var1910) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var476)
(declare-fun cast-from-var476-to-var331 (var476) var331)
(declare-fun getResourceFromLocation/218856716 (var1667 String String var331) var729)
(declare-const null-var1667 var1667)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var939 var939)
(declare-const null-var729 var729)
(declare-const var1212 var1667) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1212 null-var1667)))
(declare-const var395 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var395 null-String)))
(declare-const var2329 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2329 null-Bool)))
(define-const var1456 String null-String) ; Statement: r14 = null 
(define-const var2490 var939 (shader/1139179338 var1212)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var2490 null-var939))) ; Cond: $r1 != null 
(define-const var52 var939 (shader/1139179338 var1212)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var590 String (reverseResourceName/-23126418 var52 var395)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var3426 String var590) ; Statement: r16 = $r15 
(assert true)
(define-const var3127 Bool (endsWith/985337093 var590 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (not (= (ite var3127 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1456!1 String (toSclResourceName/-1854801297 var1212 var590)) ; Statement: r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15) 
(assert true) ; Non Conditional
(define-const var373 var1910 (override/1139179338 var1212)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var537 Iterator (var1910_iterator/-912451715 var373)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1780 Bool (Iterator_hasNext/-1669924200 var537)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var1780 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2953 var476 (Iterator_next/-1124697587 var537)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var537!1 Iterator)
(define-const var3841 var331 (cast-from-var476-to-var331 var2953)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var1405 var729 (getResourceFromLocation/218856716 var1212 var3426 var1456!1 var3841)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= var1405 null-var729))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toSclResourceName/-1854801297=([lombok.launch.ShadowClassLoader, java.lang.String], java.lang.String), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1910_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var476-to-var331=([java.lang.Object], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var1667=lombok.launch.ShadowClassLoader, var1212=r0, var395=r13, var2833=null_type, var2329=z3, var1456=r14, var939=lombok.launch.PackageShader, var2490=$r1, var52=$r2, var590=$r15, var3426=r16, var3127=$z0, var1910=java.util.List, var373=$r3, var537=$r10, var1780=$z1, var476=java.lang.Object, var2953=$r4, var331=java.io.File, var3841=r17, var729=java.net.URL, var1405=r5}
; {lombok.launch.ShadowClassLoader=var1667, r0=var1212, r13=var395, null_type=var2833, z3=var2329, r14=var1456, lombok.launch.PackageShader=var939, $r1=var2490, $r2=var52, $r15=var590, r16=var3426, $z0=var3127, java.util.List=var1910, $r3=var373, $r10=var537, $z1=var1780, java.lang.Object=var476, $r4=var2953, java.io.File=var331, r17=var3841, java.net.URL=var729, r5=var1405}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15);	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	return r5
;block_num 8