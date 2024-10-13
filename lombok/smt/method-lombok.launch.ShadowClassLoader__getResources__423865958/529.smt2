(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var397 0)
(declare-sort var2726 0)
(declare-sort var3486 0)
(declare-sort var3361 0)
(declare-sort var2175 0)
(declare-sort var1135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var3486-init () var3486)
(declare-fun <init>/-1913910780 (var3486) void)
(declare-fun override/1139179338 (var397) var3361)
(declare-fun var3361_iterator/-912451715 (var3361) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3361_isEmpty/-153543822 (var3361) Bool)
(declare-fun getResources/-300194759 (var1135 String) var2175)
(declare-fun cast-from-var397-to-var1135 (var397) var1135)
(declare-fun var2175_hasMoreElements/-1180312480 (var2175) Bool)
(declare-fun elements/2003039976 (var3486) var2175)
(declare-const null-var397 var397)
(declare-const null-String String)
(declare-const var3643 var397) ; Statement: r2 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3643 null-var397)))
(declare-const var1319 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1319 null-String)))
(define-const var3575 String null-String) ; Statement: r15 = null 
(assert true)
(define-const var2632 Bool (endsWith/985337093 var1319 ".class")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class") 
 ; Statement: if $z0 == 0 goto $r1 = new java.util.Vector 
(assert (= (ite var2632 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1543 var3486 var3486-init) ; Statement: $r1 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var1543)) ; Statement: specialinvoke $r1.<java.util.Vector: void <init>()>() 

(declare-const var1543!1 var3486)
(define-const var569 var3361 (override/1139179338 var3643)) ; Statement: $r3 = r2.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var939 Iterator (var3361_iterator/-912451715 var569)) ; Statement: $r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
 ; Statement: goto [?= $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3840 Bool (Iterator_hasNext/-1669924200 var939)) ; Statement: $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z4 != 0 goto $r4 = interfaceinvoke $r14.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (not (= (ite var3840 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1102 var3361 (override/1139179338 var3643)) ; Statement: $r5 = r2.<lombok.launch.ShadowClassLoader: java.util.List override> 
(define-const var3287 Bool (var3361_isEmpty/-153543822 var1102)) ; Statement: $z1 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0) 
(assert (= (ite var3287 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1595 var2175 (getResources/-300194759 (cast-from-var397-to-var1135 var3643) var1319)) ; Statement: $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0) 
 ; Statement: goto [?= $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>()] 
(assert true) ; Non Conditional
(define-const var2822 Bool (var2175_hasMoreElements/-1180312480 var1595)) ; Statement: $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z5 != 0 goto $r6 = interfaceinvoke $r19.<java.util.Enumeration: java.lang.Object nextElement()>() 
(assert (not (not (= (ite var2822 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: if r15 == null goto $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>() 
(assert (= var3575 null-String)) ; Cond: r15 == null 
(assert true)
(define-const var2929 var2175 (elements/2003039976 var1543!1)) ; Statement: $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), var3486-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3361_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3361_isEmpty/-153543822=([java.util.List], boolean), getResources/-300194759=([java.lang.ClassLoader, java.lang.String], java.util.Enumeration), cast-from-var397-to-var1135=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var2175_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), elements/2003039976=([java.util.Vector], java.util.Enumeration)}
; {var397=lombok.launch.ShadowClassLoader, var3643=r2, var1319=r0, var2726=null_type, var3575=r15, var2632=$z0, var3486=java.util.Vector, var1543=$r1, var3361=java.util.List, var569=$r3, var939=$r14, var3840=$z4, var1102=$r5, var3287=$z1, var2175=java.util.Enumeration, var1135=java.lang.ClassLoader, var1595=$r19, var2822=$z5, var2929=$r9}
; {lombok.launch.ShadowClassLoader=var397, r2=var3643, r0=var1319, null_type=var2726, r15=var3575, $z0=var2632, java.util.Vector=var3486, $r1=var1543, java.util.List=var3361, $r3=var569, $r14=var939, $z4=var3840, $r5=var1102, $z1=var3287, java.util.Enumeration=var2175, java.lang.ClassLoader=var1135, $r19=var1595, $z5=var2822, $r9=var2929}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r2 := @this: lombok.launch.ShadowClassLoader;	r0 := @parameter0: java.lang.String;	r15 = null;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".class");	if $z0 == 0 goto $r1 = new java.util.Vector;	$r1 = new java.util.Vector;	specialinvoke $r1.<java.util.Vector: void <init>()>();	$r3 = r2.<lombok.launch.ShadowClassLoader: java.util.List override>;	$r14 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	goto [?= $z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>()];	$z4 = interfaceinvoke $r14.<java.util.Iterator: boolean hasNext()>();	if $z4 != 0 goto $r4 = interfaceinvoke $r14.<java.util.Iterator: java.lang.Object next()>();	$r5 = r2.<lombok.launch.ShadowClassLoader: java.util.List override>;	$z1 = interfaceinvoke $r5.<java.util.List: boolean isEmpty()>();	if $z1 == 0 goto $r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0);	$r19 = specialinvoke r2.<java.lang.ClassLoader: java.util.Enumeration getResources(java.lang.String)>(r0);	goto [?= $z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>()];	$z5 = interfaceinvoke $r19.<java.util.Enumeration: boolean hasMoreElements()>();	if $z5 != 0 goto $r6 = interfaceinvoke $r19.<java.util.Enumeration: java.lang.Object nextElement()>();	if r15 == null goto $r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>();	$r9 = virtualinvoke $r1.<java.util.Vector: java.util.Enumeration elements()>();	return $r9
;block_num 8