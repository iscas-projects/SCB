(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var444 0)
(declare-sort var2761 0)
(declare-sort var550 0)
(declare-sort var676 0)
(declare-sort var2877 0)
(declare-sort var970 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var550-init () var550)
(declare-fun <init>/-325640736 (var550) void)
(declare-fun debugOutput/1631179044 (var444) Bool)
(declare-fun getBeantype/-40027445 (var2761) String)
(declare-fun var676_add/328494887 (var676 var2877) Bool)
(declare-fun cast-from-var550-to-var676 (var550) var676)
(declare-fun cast-from-String-to-var2877 (String) var2877)
(declare-fun getIiop/-2097968149 (var2761) Bool)
(declare-fun getCmp/734034760 (var2761) Bool)
(declare-fun retainSource/1631179044 (var444) Bool)
(declare-fun getHasession/-333420303 (var2761) Bool)
(declare-fun classpath/1631179044 (var444) String)
(declare-fun destDirectory/1631179044 (var444) var970)
(declare-fun toString/180451120 (var970) String)
(declare-fun getHome/-1878330248 (var2761) var1911)
(declare-fun getQualifiedClassName/-1520352682 (var1911) String)
(declare-fun getRemote/-1973766863 (var2761) var1911)
(declare-fun getImplementation/-583548859 (var2761) var1911)
(declare-fun var676_size/-959786421 (var676) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var676_toArray/-775711681 (var676 (Array Int var2877)) (Array Int var2877))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2877__ ((Array Int String)) (Array Int var2877))
(declare-fun cast-from-__Array__Int__var2877__-to-__Array__Int__String__ ((Array Int var2877)) (Array Int String))
(declare-const null-var444 var444)
(declare-const null-var2761 var2761)
(declare-const var1293 var444) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var1293 null-var444)))
(declare-const var1204 var2761) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo 
(assert (not (= var1204 null-var2761)))
(define-const var960 var550 var550-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var960)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var960!1 var550)
(define-const var1401 Bool (debugOutput/1631179044 var1293)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean debugOutput> 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>() 
(assert (= (ite var1401 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1758 String (getBeantype/-40027445 var1204)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>() 
(assert true)
(define-const var484 Bool (= var1758 "stateless")) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("stateless") 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>() 
(assert (not (= (ite var484 1 0) 0))) ; Negate: Cond: $z1 == 0  
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!1) (cast-from-String-to-var2877 "-sl"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-sl") 

(declare-const var960!2 var550)
(declare-const var3291 String)
 ; Statement: goto [?= $z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3797 Bool (getIiop/-2097968149 var1204)) ; Statement: $z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>() 
 ; Statement: if $z6 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>() 
(assert (= (ite var3797 1 0) 0)) ; Cond: $z6 == 0 
(assert true)
(define-const var3986 Bool (getCmp/734034760 var1204)) ; Statement: $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>() 
 ; Statement: if $z3 == 0 goto $z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource> 
(assert (= (ite var3986 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2541 Bool (retainSource/1631179044 var1293)) ; Statement: $z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource> 
 ; Statement: if $z4 == 0 goto $z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>() 
(assert (= (ite var2541 1 0) 0)) ; Cond: $z4 == 0 
(assert true)
(define-const var1654 Bool (getHasession/-333420303 var1204)) ; Statement: $z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>() 
 ; Statement: if $z5 == 0 goto interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath") 
(assert (= (ite var1654 1 0) 0)) ; Cond: $z5 == 0 
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!2) (cast-from-String-to-var2877 "-classpath"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath") 

(declare-const var960!3 var550)
(declare-const var1977 String)
(define-const var528 String (classpath/1631179044 var1293)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath> 
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!3) (cast-from-String-to-var2877 var528))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r5) 

(declare-const var960!4 var550)
(declare-const var528!1 String)
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!4) (cast-from-String-to-var2877 "-d"))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-d") 

(declare-const var960!5 var550)
(declare-const var2314 String)
(define-const var1927 var970 (destDirectory/1631179044 var1293)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert true)
(define-const var1503 String (toString/180451120 var1927)) ; Statement: $r7 = virtualinvoke $r6.<java.io.File: java.lang.String toString()>() 
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!5) (cast-from-String-to-var2877 var1503))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r7) 

(declare-const var960!6 var550)
(declare-const var1503!1 String)
(assert true)
(define-const var3719 var1911 (getHome/-1878330248 var1204)) ; Statement: $r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getHome()>() 
(assert true)
(define-const var1315 String (getQualifiedClassName/-1520352682 var3719)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>() 
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!6) (cast-from-String-to-var2877 var1315))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var960!7 var550)
(declare-const var1315!1 String)
(assert true)
(define-const var668 var1911 (getRemote/-1973766863 var1204)) ; Statement: $r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getRemote()>() 
(assert true)
(define-const var3746 String (getQualifiedClassName/-1520352682 var668)) ; Statement: $r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>() 
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!7) (cast-from-String-to-var2877 var3746))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var960!8 var550)
(declare-const var3746!1 String)
(assert true)
(define-const var3521 var1911 (getImplementation/-583548859 var1204)) ; Statement: $r12 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getImplementation()>() 
(assert true)
(define-const var2357 String (getQualifiedClassName/-1520352682 var3521)) ; Statement: $r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>() 
;(assert (var676_add/328494887 (cast-from-var550-to-var676 var960!8) (cast-from-String-to-var2877 var2357))) ; Statement: interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var960!9 var550)
(declare-const var2357!1 String)
(define-const var1230 Int (var676_size/-959786421 (cast-from-var550-to-var676 var960!9))) ; Statement: $i0 = interfaceinvoke $r0.<java.util.List: int size()>() 
(define-const var1037 (Array Int String) arr-String-init) ; Statement: $r14 = newarray (java.lang.String)[$i0] 
(define-const var838 (Array Int var2877) (var676_toArray/-775711681 (cast-from-var550-to-var676 var960!9) (cast-from-__Array__Int__String__-to-__Array__Int__var2877__ var1037))) ; Statement: $r15 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r14) 
(define-const var2427 (Array Int String) (cast-from-__Array__Int__var2877__-to-__Array__Int__String__ var838)) ; Statement: $r16 = (java.lang.String[]) $r15 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var550-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), debugOutput/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], boolean), getBeantype/-40027445=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], java.lang.String), var676_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var550-to-var676=([java.util.ArrayList], java.util.List), cast-from-String-to-var2877=([java.lang.String], java.lang.Object), getIiop/-2097968149=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], boolean), getCmp/734034760=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], boolean), retainSource/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], boolean), getHasession/-333420303=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], boolean), classpath/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.lang.String), destDirectory/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), toString/180451120=([java.io.File], java.lang.String), getHome/-1878330248=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), getQualifiedClassName/-1520352682=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname], java.lang.String), getRemote/-1973766863=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), getImplementation/-583548859=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname), var676_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), var676_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var2877__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var2877__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var444=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var1293=r1, var2761=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var1204=r2, var550=java.util.ArrayList, var960=$r0, var1401=$z0, var1758=$r3, var484=$z1, var676=java.util.List, var2877=java.lang.Object, var3291="-sl", var3797=$z6, var3986=$z3, var2541=$z4, var1654=$z5, var1977="-classpath", var528=$r5, var2314="-d", var970=java.io.File, var1927=$r6, var1503=$r7, var1911=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname, var3719=$r8, var1315=$r9, var668=$r10, var3746=$r11, var3521=$r12, var2357=$r13, var1230=$i0, var1037=$r14, var838=$r15, var2427=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var444, r1=var1293, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var2761, r2=var1204, java.util.ArrayList=var550, $r0=var960, $z0=var1401, $r3=var1758, $z1=var484, java.util.List=var676, java.lang.Object=var2877, "-sl"=var3291, $z6=var3797, $z3=var3986, $z4=var2541, $z5=var1654, "-classpath"=var1977, $r5=var528, "-d"=var2314, java.io.File=var970, $r6=var1927, $r7=var1503, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname=var1911, $r8=var3719, $r9=var1315, $r10=var668, $r11=var3746, $r12=var3521, $r13=var2357, $i0=var1230, $r14=var1037, $r15=var838, $r16=var2427}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.io.File: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean debugOutput>;	if $z0 == 0 goto $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>();	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("stateless");	if $z1 == 0 goto $r4 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getBeantype()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-sl");	goto [?= $z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>()];	$z6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getIiop()>();	if $z6 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>();	$z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getCmp()>();	if $z3 == 0 goto $z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource>;	$z4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: boolean retainSource>;	if $z4 == 0 goto $z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>();	$z5 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean getHasession()>();	if $z5 == 0 goto interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath");	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-classpath");	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath>;	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r5);	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>("-d");	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	$r7 = virtualinvoke $r6.<java.io.File: java.lang.String toString()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r7);	$r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getHome()>();	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r9);	$r10 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getRemote()>();	$r11 = virtualinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r11);	$r12 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname getImplementation()>();	$r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$Classname: java.lang.String getQualifiedClassName()>();	interfaceinvoke $r0.<java.util.List: boolean add(java.lang.Object)>($r13);	$i0 = interfaceinvoke $r0.<java.util.List: int size()>();	$r14 = newarray (java.lang.String)[$i0];	$r15 = interfaceinvoke $r0.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r14);	$r16 = (java.lang.String[]) $r15;	return $r16
;block_num 8