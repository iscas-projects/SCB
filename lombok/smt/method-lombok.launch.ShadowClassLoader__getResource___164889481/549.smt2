(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1838 0)
(declare-sort var3251 0)
(declare-sort var3107 0)
(declare-sort var86 0)
(declare-sort var2813 0)
(declare-sort var2200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun shader/1139179338 (var1838) var3107)
(declare-fun reverseResourceName/-23126418 (var3107 String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun override/1139179338 (var1838) var86)
(declare-fun var86_iterator/-912451715 (var86) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var86_isEmpty/-153543822 (var86) Bool)
(declare-fun SELF_BASE_FILE/1139179338 (var1838) var2813)
(declare-fun getResourceFromLocation/218856716 (var1838 String String var2813) var2200)
(declare-const null-var1838 var1838)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3107 var3107)
(declare-const null-var2200 var2200)
(declare-const var2675 var1838) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2675 null-var1838)))
(declare-const var1759 String) ; Statement: r13 := @parameter0: java.lang.String 
(assert (not (= var1759 null-String)))
(declare-const var2291 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var2291 null-Bool)))
(define-const var1223 String null-String) ; Statement: r14 = null 
(define-const var1470 var3107 (shader/1139179338 var2675)) ; Statement: $r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
 ; Statement: if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert (not (= var1470 null-var3107))) ; Cond: $r1 != null 
(define-const var3890 var3107 (shader/1139179338 var2675)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> 
(assert true)
(define-const var2761 String (reverseResourceName/-23126418 var3890 var1759)) ; Statement: $r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13) 
(assert true) ; Non Conditional
(define-const var1295 String var2761) ; Statement: r16 = $r15 
(assert true)
(define-const var333 Bool (endsWith/985337093 var2761 ".class")) ; Statement: $z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(assert (= (ite var333 1 0) 0)) ; Cond: $z0 == 0 
(define-const var19 var86 (override/1139179338 var2675)) ; Statement: $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2244 Iterator (var86_iterator/-912451715 var19)) ; Statement: $r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1814 Bool (Iterator_hasNext/-1669924200 var2244)) ; Statement: $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1814 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var269 var86 (override/1139179338 var2675)) ; Statement: $r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var3377 Bool (var86_isEmpty/-153543822 var269)) ; Statement: $z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert (not (= (ite var3377 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2973 var2813 (SELF_BASE_FILE/1139179338 var2675)) ; Statement: $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert true)
(define-const var3828 var2200 (getResourceFromLocation/218856716 var2675 var1295 var1223 var2973)) ; Statement: r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7) 
 ; Statement: if r20 == null goto (branch) 
(assert (not (= var3828 null-var2200))) ; Negate: Cond: r20 == null  
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), reverseResourceName/-23126418=([lombok.launch.PackageShader, java.lang.String], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var86_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var86_isEmpty/-153543822=([java.util.List], boolean), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL)}
; {var1838=lombok.launch.ShadowClassLoader, var2675=r0, var1759=r13, var3251=null_type, var2291=z3, var1223=r14, var3107=lombok.launch.PackageShader, var1470=$r1, var3890=$r2, var2761=$r15, var1295=r16, var333=$z0, var86=java.util.List, var19=$r3, var2244=$r10, var1814=$z1, var269=$r6, var3377=$z2, var2813=java.io.File, var2973=$r7, var2200=java.net.URL, var3828=r20}
; {lombok.launch.ShadowClassLoader=var1838, r0=var2675, r13=var1759, null_type=var3251, z3=var2291, r14=var1223, lombok.launch.PackageShader=var3107, $r1=var1470, $r2=var3890, $r15=var2761, r16=var1295, $z0=var333, java.util.List=var86, $r3=var19, $r10=var2244, $z1=var1814, $r6=var269, $z2=var3377, java.io.File=var2813, $r7=var2973, java.net.URL=var2200, r20=var3828}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r13 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	r14 = null;	$r1 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	if $r1 != null goto $r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r2 = r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader>;	$r15 = virtualinvoke $r2.<lombok.launch.PackageShader: java.lang.String reverseResourceName(java.lang.String)>(r13);	r16 = $r15;	$z0 = virtualinvoke $r15.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r3 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r10 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>()];	$z1 = interfaceinvoke $r10.<java.util.Iterator: boolean hasNext()>();	if $z1 != 0 goto $r4 = interfaceinvoke $r10.<java.util.Iterator: java.lang.Object next()>();	$r6 = r0.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z2 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	if $z2 != 0 goto $r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	$r7 = r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	r20 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r16, r14, $r7);	if r20 == null goto (branch);	return r20
;block_num 8