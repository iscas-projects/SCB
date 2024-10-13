(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3741 0)
(declare-sort var2877 0)
(declare-sort var682 0)
(declare-sort var2668 0)
(declare-sort var2500 0)
(declare-sort var937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var3741) var682)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun toSclResourceName/-1854801297 (var3741 String) String)
(declare-fun override/1139179338 (var3741) var2668)
(declare-fun var2668_iterator/-912451715 (var2668) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2668_isEmpty/-153543822 (var2668) Bool)
(declare-fun SELF_BASE_FILE/1139179338 (var3741) var2500)
(declare-fun getResourceFromLocation/218856716 (var3741 String String var2500) var937)
(declare-const null-var3741 var3741)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var682 var682)
(declare-const null-var937 var937)
(declare-const var2920 var3741) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2920 null-var3741)))
(declare-const var1533 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var1533 null-String)))
(declare-const var2613 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2613 null-Bool)))
(define-const var2829 String null-String) ; Statement: r14 = null 
(define-const var1945 var682 (shader/1139179338 var2920)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (not (= var1945 null-var682)))) ; Negate: Cond: $r1 != null  
(define-const var2392 String var1533) ; Statement: $r15 = r13 
 ; Statement: goto [?= r16 = $r15] 
(assert true) ; Non Conditional
(define-const var1365 String var2392) ; Statement: r16 = $r15 
(assert true)
(define-const var49 Bool (endsWith/985337093 var2392 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (not (= (ite var49 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2829!1 String (toSclResourceName/-1854801297 var2920 var2392)) ; Statement: r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15) 
(assert true) ; Non Conditional
(define-const var1576 var2668 (override/1139179338 var2920)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1756 Iterator (var2668_iterator/-912451715 var1576)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1277 Bool (Iterator_hasNext/-1669924200 var1756)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1277 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3651 var2668 (override/1139179338 var2920)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1144 Bool (var2668_isEmpty/-153543822 var3651)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (= (ite var1144 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1597 var2500 (SELF_BASE_FILE/1139179338 var2920)) ; Statement: $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert true)
(define-const var573 var937 (getResourceFromLocation/218856716 var2920 var1365 var2829!1 var1597)) ; Statement: r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7) 
 ; Statement: if r20 == null goto (branch) 
(assert (not (= var573 null-var937))) ; Negate: Cond: r20 == null  
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toSclResourceName/-1854801297=([lombok.launch.ShadowClassLoader, java.lang.String], java.lang.String), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2668_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2668_isEmpty/-153543822=([java.util.List], boolean), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var3741=lombok.launch.ShadowClassLoader, var2920=r0, var1533=r13, var2877=null_type, var2613=z3, var2829=r14, var682=lombok.launch.PackageShader, var1945=$r1, var2392=$r15, var1365=r16, var49=$z0, var2668=java.util.List, var1576=$r3, var1756=$r10, var1277=$z1, var3651=$r6, var1144=$z2, var2500=java.io.File, var1597=$r7, var937=java.net.URL, var573=r20}
; {lombok.launch.ShadowClassLoader=var3741, r0=var2920, r13=var1533, null_type=var2877, z3=var2613, r14=var2829, lombok.launch.PackageShader=var682, $r1=var1945, $r15=var2392, r16=var1365, $z0=var49, java.util.List=var2668, $r3=var1576, $r10=var1756, $z1=var1277, $r6=var3651, $z2=var1144, java.io.File=var2500, $r7=var1597, java.net.URL=var937, r20=var573}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = r13;	goto [?= r16 = $r15];	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15);	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	$r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7);	if r20 == null goto (branch);	return r20
;block_num 9