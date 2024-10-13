(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var201 0)
(declare-sort var1158 0)
(declare-sort var2849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getDeclaringClass/729915409 (var201) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1158_appendExecutableParameters/855155441 (var2849 String) void)
(declare-fun cast-from-var201-to-var2849 (var201) var2849)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var201 var201)
(declare-const var2738 var201) ; Statement: r1 := @parameter0: java.lang.reflect.Constructor 
(assert (not (= var2738 null-var201)))
(define-const var1315 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3252 ClassObject (getDeclaringClass/729915409 var2738)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var3567 String (getName/-1958580599 var3252)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var1315 var3567)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var1315!1 String)
(assert (= var1315!1 var3567))
;(assert (var1158_appendExecutableParameters/855155441 (cast-from-var201-to-var2849 var2738) var1315!1)) ; Statement: staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: void appendExecutableParameters(java.lang.reflect.AccessibleObject,java.lang.StringBuilder)>(r1, $r0) 

(declare-const var2738!1 var201)
(declare-const var1315!2 String)
(assert true)
(define-const var2303 String (toString/-2075883882 var1315!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getDeclaringClass/729915409=([java.lang.reflect.Constructor], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1158_appendExecutableParameters/855155441=([java.lang.reflect.AccessibleObject, java.lang.StringBuilder], void), cast-from-var201-to-var2849=([java.lang.reflect.Constructor], java.lang.reflect.AccessibleObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var201=java.lang.reflect.Constructor, var2738=r1, var1315=$r0, var3252=$r2, var3567=$r3, var1158=com.google.gson.internal.reflect.ReflectionHelper, var2849=java.lang.reflect.AccessibleObject, var2303=$r4}
; {java.lang.reflect.Constructor=var201, r1=var2738, $r0=var1315, $r2=var3252, $r3=var3567, com.google.gson.internal.reflect.ReflectionHelper=var1158, java.lang.reflect.AccessibleObject=var2849, $r4=var2303}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.Constructor;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: void appendExecutableParameters(java.lang.reflect.AccessibleObject,java.lang.StringBuilder)>(r1, $r0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1