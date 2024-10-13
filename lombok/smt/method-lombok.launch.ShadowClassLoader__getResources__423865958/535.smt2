(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2290 0)
(declare-sort var907 0)
(declare-sort var0 0)
(declare-sort var605 0)
(declare-sort var3524 0)
(declare-sort var961 0)
(declare-sort var3363 0)
(declare-sort var644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var0-init () var0)
(declare-fun <init>/-1913910780 (var0) void)
(declare-fun override/1139179338 (var2290) var605)
(declare-fun var605_iterator/-912451715 (var605) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var605_isEmpty/-153543822 (var605) Bool)
(declare-fun SELF_BASE_FILE/1139179338 (var2290) var3524)
(declare-fun getResourceFromLocation/218856716 (var2290 String String var3524) var961)
(declare-fun getResources/-300194759 (var644 String) var3363)
(declare-fun cast-from-var2290-to-var644 (var2290) var644)
(declare-fun var3363_hasMoreElements/-1180312480 (var3363) Bool)
(declare-fun elements/2003039976 (var0) var3363)
(declare-const null-var2290 var2290)
(declare-const null-String String)
(declare-const null-var961 var961)
(declare-const var1453 var2290) ; Statement: r2 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1453 null-var2290)))
(declare-const var1701 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1701 null-String)))
(define-const var2770 String null-String) ; Statement: r15 = null 
(assert true)
(define-const var1425 Bool (endsWith/985337093 var1701 ".class")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r1 = new java.util.Vector 
(assert (= (ite var1425 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2080 var0 var0-init) ; Statement: $r1 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var2080)) ; Statement: specialinvoke $r1.<java.util.Vector: void <init>()>() 

(declare-const var2080!1 var0)
(define-const var3830 var605 (override/1139179338 var1453)) ; Statement: $r3 = r2.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var3359 Iterator (var605_iterator/-912451715 var3830)) ; Statement: $r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var1922 Bool (Iterator_hasNext/-1669924200 var3359)) ; Statement: $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 != 0 goto $r4 = interfaceinvoke $r14.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var1922 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3980 var605 (override/1139179338 var1453)) ; Statement: $r5 = r2.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var3895 Bool (var605_isEmpty/-153543822 var3980)) ; Statement: $z1 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0) 
(assert (not (= (ite var3895 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2424 var3524 (SELF_BASE_FILE/1139179338 var1453)) ; Statement: $r13 = r2.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> 
(assert true)
(define-const var2655 var961 (getResourceFromLocation/218856716 var1453 var1701 var2770 var2424)) ; Statement: r18 = specialinvoke r2.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r0, r15, $r13) 
 ; Statement: if r18 == null goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0) 
(assert (= var2655 null-var961)) ; Cond: r18 == null 
(assert true)
(define-const var531 var3363 (getResources/-300194759 (cast-from-var2290-to-var644 var1453) var1701)) ; Statement: $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0) 
 ; Statement: goto [?= $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>()] 
(assert true) ; Non Conditional
(define-const var536 Bool (var3363_hasMoreElements/-1180312480 var531)) ; Statement: $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z5 != 0 goto $r6 = interfaceinvoke $r19.<java.util.Enumeration: java.lang.Object nextElement()>() 
(assert (not (not (= (ite var536 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: if r15 == null goto $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>() 
(assert (= var2770 null-String)) ; Cond: r15 == null 
(assert true)
(define-const var1234 var3363 (elements/2003039976 var2080!1)) ; Statement: $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var0-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var605_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var605_isEmpty/-153543822=([java.util.List], boolean), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), getResourceFromLocation/218856716=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String, java.io.File], java.net.URL), getResources/-300194759=([java.lang.ClassLoader, java.lang.String], java.util.Enumeration), cast-from-var2290-to-var644=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var3363_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), elements/2003039976=([java.util.Vector], java.util.Enumeration)}
; {var2290=lombok.launch.ShadowClassLoader, var1453=r2, var1701=r0, var907=null_type, var2770=r15, var1425=$z0, var0=java.util.Vector, var2080=$r1, var605=java.util.List, var3830=$r3, var3359=$r14, var1922=$z4, var3980=$r5, var3895=$z1, var3524=java.io.File, var2424=$r13, var961=java.net.URL, var2655=r18, var3363=java.util.Enumeration, var644=java.lang.ClassLoader, var531=$r19, var536=$z5, var1234=$r9}
; {lombok.launch.ShadowClassLoader=var2290, r2=var1453, r0=var1701, null_type=var907, r15=var2770, $z0=var1425, java.util.Vector=var0, $r1=var2080, java.util.List=var605, $r3=var3830, $r14=var3359, $z4=var1922, $r5=var3980, $z1=var3895, java.io.File=var3524, $r13=var2424, java.net.URL=var961, r18=var2655, java.util.Enumeration=var3363, java.lang.ClassLoader=var644, $r19=var531, $z5=var536, $r9=var1234}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: lombok.launch.ShadowClassLoader;	r0 := @parameter0: java.lang.String;	r15 = null;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r1 = new java.util.Vector;	$r1 = new java.util.Vector;	specialinvoke $r1.<java.util.Vector: void <init>()>();	$r3 = r2.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>()];	$z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>();	if $z4 != 0 goto $r4 = interfaceinvoke $r14.<java.util.Iterator: java.lang.Object next()>();	$r5 = r2.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z1 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0);	$r13 = r2.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE>;	r18 = specialinvoke r2.<lombok.launch.ShadowClassLoader: java.net.URL getResourceFromLocation(java.lang.String,java.lang.String,java.io.File)>(r0, r15, $r13);	if r18 == null goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0);	$r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0);	goto [?= $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>()];	$z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>();	if $z5 != 0 goto $r6 = interfaceinvoke $r19.<java.util.Enumeration: java.lang.Object nextElement()>();	if r15 == null goto $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>();	$r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>();	return $r9
;block_num 9