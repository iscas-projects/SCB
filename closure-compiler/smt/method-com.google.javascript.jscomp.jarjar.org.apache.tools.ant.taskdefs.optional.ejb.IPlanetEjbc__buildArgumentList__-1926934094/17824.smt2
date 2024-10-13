(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var290 0)
(declare-sort var2068 0)
(declare-sort var3320 0)
(declare-sort var1130 0)
(declare-sort var1967 0)
(declare-sort var355 0)
(declare-sort var1468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3320-init () var3320)
(declare-fun <init>/-325640736 (var3320) void)
(declare-fun debugOutput/1631179044 (var290) Bool)
(declare-fun getBeantype/-40027445 (var2068) String)
(declare-fun getIiop/-2097968149 (var2068) Bool)
(declare-fun getCmp/734034760 (var2068) Bool)
(declare-fun retainSource/1631179044 (var290) Bool)
(declare-fun getHasession/-333420303 (var2068) Bool)
(declare-fun var1130_add/328494887 (var1130 var1967) Bool)
(declare-fun cast-from-var3320-to-var1130 (var3320) var1130)
(declare-fun cast-from-String-to-var1967 (String) var1967)
(declare-fun classpath/1631179044 (var290) String)
(declare-fun destDirectory/1631179044 (var290) var355)
(declare-fun toString/180451120 (var355) String)
(declare-fun getHome/-1878330248 (var2068) var1468)
(declare-fun getQualifiedClassName/-1520352682 (var1468) String)
(declare-fun getRemote/-1973766863 (var2068) var1468)
(declare-fun getImplementation/-583548859 (var2068) var1468)
(declare-fun var1130_size/-959786421 (var1130) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1130_toArray/-775711681 (var1130 (Array Int var1967)) (Array Int var1967))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1967__ ((Array Int String)) (Array Int var1967))
(declare-fun cast-from-__Array__Int__var1967__-to-__Array__Int__String__ ((Array Int var1967)) (Array Int String))
(declare-const null-var290 var290)
(declare-const null-var2068 var2068)
(declare-const var2892 var290) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var2892 null-var290)))
(declare-const var2015 var2068) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo 
(assert (not (= var2015 null-var2068)))
(define-const var716 var3320 var3320-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var716)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var716!1 var3320)
(define-const var1102 Bool (debugOutput/1631179044 var2892)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean debugOutput> 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>() 
(assert (= (ite var1102 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var520 String (getBeantype/-40027445 var2015)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>() 
(assert true)
(define-const var665 Bool (= var520 "stateless")) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("stateless") 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>() 
(assert (= (ite var665 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2669 String (getBeantype/-40027445 var2015)) ; Statement: $r4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>() 
(assert true)
(define-const var528 Bool (= var2669 "stateful")) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("stateful") 
 ; Statement: if $z2 == 0 goto $z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>() 
(assert (= (ite var528 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1657 Bool (getIiop/-2097968149 var2015)) ; Statement: $z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>() 
 ; Statement: if $z6 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>() 
(assert (= (ite var1657 1 0) 0)) ; Cond: $z6 == 0 
(assert true)
(define-const var3103 Bool (getCmp/734034760 var2015)) ; Statement: $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>() 
 ; Statement: if $z3 == 0 goto $z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource> 
(assert (= (ite var3103 1 0) 0)) ; Cond: $z3 == 0 
(define-const var324 Bool (retainSource/1631179044 var2892)) ; Statement: $z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource> 
 ; Statement: if $z4 == 0 goto $z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>() 
(assert (= (ite var324 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var2768 Bool (getHasession/-333420303 var2015)) ; Statement: $z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>() 
 ; Statement: if $z5 == 0 goto interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath") 
(assert (= (ite var2768 1 0) 0)) ; Cond: $z5 == 0 
;(assert (var1130_add/328494887 (cast-from-var3320-to-var1130 var716!1) (cast-from-String-to-var1967 "-classpath"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath") 

(declare-const var716!2 var3320)
(declare-const var135 String)
(define-const var1989 String (classpath/1631179044 var2892)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath> 
;(assert (var1130_add/328494887 (cast-from-var3320-to-var1130 var716!2) (cast-from-String-to-var1967 var1989))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r5) 

(declare-const var716!3 var3320)
(declare-const var1989!1 String)
;(assert (var1130_add/328494887 (cast-from-var3320-to-var1130 var716!3) (cast-from-String-to-var1967 "-d"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-d") 

(declare-const var716!4 var3320)
(declare-const var2299 String)
(define-const var754 var355 (destDirectory/1631179044 var2892)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert true)
(define-const var1201 String (toString/180451120 var754)) ; Statement: $r7 = virtualinvoke $r6.<java.io.File: java.lang.String toString()>() 
;(assert (var1130_add/328494887 (cast-from-var3320-to-var1130 var716!4) (cast-from-String-to-var1967 var1201))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r7) 

(declare-const var716!5 var3320)
(declare-const var1201!1 String)
(assert true)
(define-const var2580 var1468 (getHome/-1878330248 var2015)) ; Statement: $r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getHome()>() 
(assert true)
(define-const var3091 String (getQualifiedClassName/-1520352682 var2580)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>() 
;(assert (var1130_add/328494887 (cast-from-var3320-to-var1130 var716!5) (cast-from-String-to-var1967 var3091))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var716!6 var3320)
(declare-const var3091!1 String)
(assert true)
(define-const var1342 var1468 (getRemote/-1973766863 var2015)) ; Statement: $r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getRemote()>() 
(assert true)
(define-const var3775 String (getQualifiedClassName/-1520352682 var1342)) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>() 
;(assert (var1130_add/328494887 (cast-from-var3320-to-var1130 var716!6) (cast-from-String-to-var1967 var3775))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var716!7 var3320)
(declare-const var3775!1 String)
(assert true)
(define-const var154 var1468 (getImplementation/-583548859 var2015)) ; Statement: $r12 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getImplementation()>() 
(assert true)
(define-const var263 String (getQualifiedClassName/-1520352682 var154)) ; Statement: $r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>() 
;(assert (var1130_add/328494887 (cast-from-var3320-to-var1130 var716!7) (cast-from-String-to-var1967 var263))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var716!8 var3320)
(declare-const var263!1 String)
(define-const var648 Int (var1130_size/-959786421 (cast-from-var3320-to-var1130 var716!8))) ; Statement: $i0 = interfaceinvoke $r0.<java.util.List: int size()>() 
(define-const var2719 (Array Int String) arr-String-init) ; Statement: $r14 = newarray (java.lang.String)[$i0] 
(define-const var3614 (Array Int var1967) (var1130_toArray/-775711681 (cast-from-var3320-to-var1130 var716!8) (cast-from-__Array__Int__String__-to-__Array__Int__var1967__ var2719))) ; Statement: $r15 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r14) 
(define-const var704 (Array Int String) (cast-from-__Array__Int__var1967__-to-__Array__Int__String__ var3614)) ; Statement: $r16 = (java.lang.String[]) $r15 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var3320-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), debugOutput/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], boolean), getBeantype/-40027445=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], java.lang.String), getIiop/-2097968149=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], boolean), getCmp/734034760=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], boolean), retainSource/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], boolean), getHasession/-333420303=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], boolean), var1130_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3320-to-var1130=([java.util.ArrayList], java.util.List), cast-from-String-to-var1967=([java.lang.String], java.lang.Object), classpath/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.lang.String), destDirectory/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), toString/180451120=([java.io.File], java.lang.String), getHome/-1878330248=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), getQualifiedClassName/-1520352682=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname], java.lang.String), getRemote/-1973766863=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), getImplementation/-583548859=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), var1130_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), var1130_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var1967__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var1967__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2892=r1, var2068=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var2015=r2, var3320=java.util.ArrayList, var716=$r0, var1102=$z0, var520=$r3, var665=$z1, var2669=$r4, var528=$z2, var1657=$z6, var3103=$z3, var324=$z4, var2768=$z5, var1130=java.util.List, var1967=java.lang.Object, var135="-classpath", var1989=$r5, var2299="-d", var355=java.io.File, var754=$r6, var1201=$r7, var1468=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname, var2580=$r8, var3091=$r9, var1342=$r10, var3775=$r11, var154=$r12, var263=$r13, var648=$i0, var2719=$r14, var3614=$r15, var704=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var290, r1=var2892, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var2068, r2=var2015, java.util.ArrayList=var3320, $r0=var716, $z0=var1102, $r3=var520, $z1=var665, $r4=var2669, $z2=var528, $z6=var1657, $z3=var3103, $z4=var324, $z5=var2768, java.util.List=var1130, java.lang.Object=var1967, "-classpath"=var135, $r5=var1989, "-d"=var2299, java.io.File=var355, $r6=var754, $r7=var1201, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname=var1468, $r8=var2580, $r9=var3091, $r10=var1342, $r11=var3775, $r12=var154, $r13=var263, $i0=var648, $r14=var2719, $r15=var3614, $r16=var704}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.io.File: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean debugOutput>;	if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>();	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("stateless");	if $z1 == 0 goto $r4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>();	$r4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>();	$z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("stateful");	if $z2 == 0 goto $z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>();	$z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>();	if $z6 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>();	$z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>();	if $z3 == 0 goto $z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource>;	$z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource>;	if $z4 == 0 goto $z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>();	$z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>();	if $z5 == 0 goto interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath");	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath>;	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r5);	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-d");	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	$r7 = virtualinvoke $r6.<java.io.File: java.lang.String toString()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r7);	$r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getHome()>();	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r9);	$r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getRemote()>();	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r11);	$r12 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getImplementation()>();	$r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r13);	$i0 = interfaceinvoke $r0.<java.util.List: int size()>();	$r14 = newarray (java.lang.String)[$i0];	$r15 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r14);	$r16 = (java.lang.String[]) $r15;	return $r16
;block_num 8