(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var394 0)
(declare-sort var595 0)
(declare-sort var768 0)
(declare-sort var3129 0)
(declare-sort var3469 0)
(declare-sort var771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var394) var768)
(declare-fun reverseResourceName/-23126418 (var768 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun toSclResourceName/-1854801297 (var394 String) String)
(declare-fun override/1139179338 (var394) var3129)
(declare-fun var3129_iterator/-912451715 (var3129) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3129_isEmpty/-153543822 (var3129) Bool)
(declare-fun SELF_BASE_FILE/1139179338 (var394) var3469)
(declare-fun getResourceFromLocation/218856716 (var394 String String var3469) var771)
(declare-const null-var394 var394)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var768 var768)
(declare-const null-var771 var771)
(declare-const var3839 var394) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3839 null-var394)))
(declare-const var2269 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var2269 null-String)))
(declare-const var2607 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2607 null-Bool)))
(define-const var3472 String null-String) ; Statement: r14 = null 
(define-const var1004 var768 (shader/1139179338 var3839)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var1004 null-var768))) ; Cond: $r1 != null 
(define-const var1843 var768 (shader/1139179338 var3839)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var2947 String (reverseResourceName/-23126418 var1843 var2269)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var932 String var2947) ; Statement: r16 = $r15 
(assert true)
(define-const var236 Bool (endsWith/985337093 var2947 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (not (= (ite var236 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3472!1 String (toSclResourceName/-1854801297 var3839 var2947)) ; Statement: r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15) 
(assert true) ; Non Conditional
(define-const var2325 var3129 (override/1139179338 var3839)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1756 Iterator (var3129_iterator/-912451715 var2325)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1817 Bool (Iterator_hasNext/-1669924200 var1756)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1817 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1382 var3129 (override/1139179338 var3839)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1026 Bool (var3129_isEmpty/-153543822 var1382)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (= (ite var1026 1 0) 0))) ; Cond: $z2 != 0 
(define-const var437 var3469 (SELF_BASE_FILE/1139179338 var3839)) ; Statement: $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert true)
(define-const var1334 var771 (getResourceFromLocation/218856716 var3839 var932 var3472!1 var437)) ; Statement: r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7) 
 ; Statement: if r20 == null goto (branch) 
(assert (not (= var1334 null-var771))) ; Negate: Cond: r20 == null  
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), toSclResourceName/-1854801297=([lombok.launch.ShadowClassLoader, java.lang.String], java.lang.String), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3129_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3129_isEmpty/-153543822=([java.util.List], boolean), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var394=lombok.launch.ShadowClassLoader, var3839=r0, var2269=r13, var595=null_type, var2607=z3, var3472=r14, var768=lombok.launch.PackageShader, var1004=$r1, var1843=$r2, var2947=$r15, var932=r16, var236=$z0, var3129=java.util.List, var2325=$r3, var1756=$r10, var1817=$z1, var1382=$r6, var1026=$z2, var3469=java.io.File, var437=$r7, var771=java.net.URL, var1334=r20}
; {lombok.launch.ShadowClassLoader=var394, r0=var3839, r13=var2269, null_type=var595, z3=var2607, r14=var3472, lombok.launch.PackageShader=var768, $r1=var1004, $r2=var1843, $r15=var2947, r16=var932, $z0=var236, java.util.List=var3129, $r3=var2325, $r10=var1756, $z1=var1817, $r6=var1382, $z2=var1026, java.io.File=var3469, $r7=var437, java.net.URL=var771, r20=var1334}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	r14 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>($r15);	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	$r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7);	if r20 == null goto (branch);	return r20
;block_num 9