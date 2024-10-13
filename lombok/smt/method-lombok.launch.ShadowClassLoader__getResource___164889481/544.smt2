(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2167 0)
(declare-sort var1107 0)
(declare-sort var2999 0)
(declare-sort var3201 0)
(declare-sort var1597 0)
(declare-sort var1818 0)
(declare-sort var479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var2167) var2999)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun toSclResourceName/-1854801297 (var2167 String) String)
(declare-fun override/1139179338 (var2167) var3201)
(declare-fun var3201_iterator/-912451715 (var3201) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1597)
(declare-fun cast-from-var1597-to-var1818 (var1597) var1818)
(declare-fun getResourceFromLocation/218856716 (var2167 String String var1818) var479)
(declare-const null-var2167 var2167)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2999 var2999)
(declare-const null-var479 var479)
(declare-const var407 var2167) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var407 null-var2167)))
(declare-const var3000 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var3000 null-String)))
(declare-const var2303 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2303 null-Bool)))
(define-const var3470 String null-String) ; Statement: r14 = null 
(define-const var3763 var2999 (shader/1139179338 var407)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var3763 null-var2999)))) ; Negate: Cond: $r1 != null  
(define-const var402 String var3000) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var3241 String var402) ; Statement: r16 = $r15 
(assert true)
(define-const var1196 Bool (endsWith/985337093 var402 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (not (= (ite var1196 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3470!1 String (toSclResourceName/-1854801297 var407 var402)) ; Statement: r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15) 
(assert true) ; Non Conditional
(define-const var271 var3201 (override/1139179338 var407)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2664 Iterator (var3201_iterator/-912451715 var271)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2916 Bool (Iterator_hasNext/-1669924200 var2664)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var2916 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2643 var1597 (Iterator_next/-1124697587 var2664)) ; Statement: $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var2664!1 Iterator)
(define-const var54 var1818 (cast-from-var1597-to-var1818 var2643)) ; Statement: r17 = (java.io.File) $r4 
(assert true)
(define-const var1079 var479 (getResourceFromLocation/218856716 var407 var3241 var3470!1 var54)) ; Statement: r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17) 
 ; Statement: if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
(assert (not (= var1079 null-var479))) ; Negate: Cond: r5 == null  
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toSclResourceName/-1854801297=([lombok.launch.ShadowClassLoader, java.lang.String], java.lang.String), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3201_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1597-to-var1818=([java.lang.Object], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var2167=lombok.launch.ShadowClassLoader, var407=r0, var3000=r13, var1107=null_type, var2303=z3, var3470=r14, var2999=lombok.launch.PackageShader, var3763=$r1, var402=$r15, var3241=r16, var1196=$z0, var3201=java.util.List, var271=$r3, var2664=$r10, var2916=$z1, var1597=java.lang.Object, var2643=$r4, var1818=java.io.File, var54=r17, var479=java.net.URL, var1079=r5}
; {lombok.launch.ShadowClassLoader=var2167, r0=var407, r13=var3000, null_type=var1107, z3=var2303, r14=var3470, lombok.launch.PackageShader=var2999, $r1=var3763, $r15=var402, r16=var3241, $z0=var1196, java.util.List=var3201, $r3=var271, $r10=var2664, $z1=var2916, java.lang.Object=var1597, $r4=var2643, java.io.File=var1818, r17=var54, java.net.URL=var479, r5=var1079}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15);	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	r17 = (java.io.File) $r4;	r5 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, r17);	if r5 == null goto $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	return r5
;block_num 8