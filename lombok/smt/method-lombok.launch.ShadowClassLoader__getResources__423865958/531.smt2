(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2149 0)
(declare-sort var3163 0)
(declare-sort var2003 0)
(declare-sort var3857 0)
(declare-sort var2843 0)
(declare-sort var1949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun toSclResourceName/-1854801297 (var2149 String) String)
(declare-fun var2003-init () var2003)
(declare-fun <init>/-1913910780 (var2003) void)
(declare-fun override/1139179338 (var2149) var3857)
(declare-fun var3857_iterator/-912451715 (var3857) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3857_isEmpty/-153543822 (var3857) Bool)
(declare-fun getResources/-300194759 (var1949 String) var2843)
(declare-fun cast-from-var2149-to-var1949 (var2149) var1949)
(declare-fun var2843_hasMoreElements/-1180312480 (var2843) Bool)
(declare-fun elements/2003039976 (var2003) var2843)
(declare-const null-var2149 var2149)
(declare-const null-String String)
(declare-const var2389 var2149) ; Statement: r2 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2389 null-var2149)))
(declare-const var3116 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3116 null-String)))
(define-const var2982 String null-String) ; Statement: r15 = null 
(assert true)
(define-const var2384 Bool (endsWith/985337093 var3116 ".class")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r1 = new java.util.Vector 
(assert (not (= (ite var2384 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2982!1 String (toSclResourceName/-1854801297 var2389 var3116)) ; Statement: r15 = specialinvoke r2.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>(r0) 
(assert true) ; Non Conditional
(define-const var1615 var2003 var2003-init) ; Statement: $r1 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var1615)) ; Statement: specialinvoke $r1.<java.util.Vector: void <init>()>() 

(declare-const var1615!1 var2003)
(define-const var1708 var3857 (override/1139179338 var2389)) ; Statement: $r3 = r2.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var1712 Iterator (var3857_iterator/-912451715 var1708)) ; Statement: $r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var198 Bool (Iterator_hasNext/-1669924200 var1712)) ; Statement: $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 != 0 goto $r4 = interfaceinvoke $r14.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var198 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1978 var3857 (override/1139179338 var2389)) ; Statement: $r5 = r2.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var2534 Bool (var3857_isEmpty/-153543822 var1978)) ; Statement: $z1 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0) 
(assert (= (ite var2534 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var390 var2843 (getResources/-300194759 (cast-from-var2149-to-var1949 var2389) var3116)) ; Statement: $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0) 
 ; Statement: goto [?= $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>()] 
(assert true) ; Non Conditional
(define-const var3901 Bool (var2843_hasMoreElements/-1180312480 var390)) ; Statement: $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z5 != 0 goto $r6 = interfaceinvoke $r19.<java.util.Enumeration: java.lang.Object nextElement()>() 
(assert (not (not (= (ite var3901 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: if r15 == null goto $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>() 
(assert (= var2982!1 null-String)) ; Cond: r15 == null 
(assert true)
(define-const var1797 var2843 (elements/2003039976 var1615!1)) ; Statement: $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), toSclResourceName/-1854801297=([lombok.launch.ShadowClassLoader, java.lang.String], java.lang.String), var2003-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3857_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3857_isEmpty/-153543822=([java.util.List], boolean), getResources/-300194759=([java.lang.ClassLoader, java.lang.String], java.util.Enumeration), cast-from-var2149-to-var1949=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var2843_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), elements/2003039976=([java.util.Vector], java.util.Enumeration)}
; {var2149=lombok.launch.ShadowClassLoader, var2389=r2, var3116=r0, var3163=null_type, var2982=r15, var2384=$z0, var2003=java.util.Vector, var1615=$r1, var3857=java.util.List, var1708=$r3, var1712=$r14, var198=$z4, var1978=$r5, var2534=$z1, var2843=java.util.Enumeration, var1949=java.lang.ClassLoader, var390=$r19, var3901=$z5, var1797=$r9}
; {lombok.launch.ShadowClassLoader=var2149, r2=var2389, r0=var3116, null_type=var3163, r15=var2982, $z0=var2384, java.util.Vector=var2003, $r1=var1615, java.util.List=var3857, $r3=var1708, $r14=var1712, $z4=var198, $r5=var1978, $z1=var2534, java.util.Enumeration=var2843, java.lang.ClassLoader=var1949, $r19=var390, $z5=var3901, $r9=var1797}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: lombok.launch.ShadowClassLoader;	r0 := @parameter0: java.lang.String;	r15 = null;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r1 = new java.util.Vector;	r15 = specialinvoke r2.<lombok.launch.ShadowClassLoader: java.lang.String toSclResourceName(java.lang.String)>(r0);	$r1 = new java.util.Vector;	specialinvoke $r1.<java.util.Vector: void <init>()>();	$r3 = r2.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>()];	$z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>();	if $z4 != 0 goto $r4 = interfaceinvoke $r14.<java.util.Iterator: java.lang.Object next()>();	$r5 = r2.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z1 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0);	$r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0);	goto [?= $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>()];	$z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>();	if $z5 != 0 goto $r6 = interfaceinvoke $r19.<java.util.Enumeration: java.lang.Object nextElement()>();	if r15 == null goto $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>();	$r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>();	return $r9
;block_num 9