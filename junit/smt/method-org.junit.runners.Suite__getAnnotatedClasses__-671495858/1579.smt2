(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var21 0)
(declare-sort var2550 0)
(declare-sort var121 0)
(declare-sort var235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2550!class ClassObject)
(declare-fun getAnnotation/-664766848 (ClassObject ClassObject) var21)
(declare-fun cast-from-var21-to-var2550 (var21) var2550)
(declare-fun var121-init () var121)
(declare-fun arr-var235-init () (Array Int var235))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var235 (String) var235)
(declare-fun String_format/1339386452 (String (Array Int var235)) String)
(declare-fun <init>/-760309220 (var121 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2550 var2550)
(declare-const null-__Array__Int__var235__ (Array Int var235))
(declare-const var679 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var679 null-ClassObject)))
(assert true)
(define-const var3930 var21 (getAnnotation/-664766848 var679 var2550!class)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/junit/runners/Suite$SuiteClasses;") 
(define-const var1384 var2550 (cast-from-var21-to-var2550 var3930)) ; Statement: r2 = (org.junit.runners.Suite$SuiteClasses) $r1 
 ; Statement: if r2 != null goto $r3 = interfaceinvoke r2.<org.junit.runners.Suite$SuiteClasses: java.lang.Class[] value()>() 
(assert (not (not (= var1384 null-var2550)))) ; Negate: Cond: r2 != null  
(define-const var809 var121 var121-init) ; Statement: $r4 = new org.junit.runners.model.InitializationError 
(define-const var1470 (Array Int var235) arr-var235-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var3993 String (getName/-1958580599 var679)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1470!1 (Array Int var235))
(assert (not (= var1470!1 null-__Array__Int__var235__)))
(assert (= (select var1470!1 0) (cast-from-String-to-var235 var3993))) ; Statement: $r5[0] = $r6 
(define-const var2491 String (String_format/1339386452 "class \u0027%s\u0027 must have a SuiteClasses annotation" var1470!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("class \'%s\' must have a SuiteClasses annotation", $r5) 
(assert true)
;(assert (<init>/-760309220 var809 var2491)) ; Statement: specialinvoke $r4.<org.junit.runners.model.InitializationError: void <init>(java.lang.String)>($r7) 

(declare-const var809!1 var121)
(declare-const var2491!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotation/-664766848=([java.lang.Class, java.lang.Class], java.lang.annotation.Annotation), cast-from-var21-to-var2550=([java.lang.annotation.Annotation], org.junit.runners.Suite$SuiteClasses), var121-init=([], org.junit.runners.model.InitializationError), arr-var235-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var235=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-760309220=([org.junit.runners.model.InitializationError, java.lang.String], void)}
; {var679=r0, var21=java.lang.annotation.Annotation, var2550=org.junit.runners.Suite$SuiteClasses, var3930=$r1, var1384=r2, var121=org.junit.runners.model.InitializationError, var809=$r4, var235=java.lang.Object, var1470=$r5, var3993=$r6, var2491=$r7}
; {r0=var679, java.lang.annotation.Annotation=var21, org.junit.runners.Suite$SuiteClasses=var2550, $r1=var3930, r2=var1384, org.junit.runners.model.InitializationError=var121, $r4=var809, java.lang.Object=var235, $r5=var1470, $r6=var3993, $r7=var2491}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.'annotation'.Annotation getAnnotation(java.lang.Class)>(class "Lorg/junit/runners/Suite$SuiteClasses;");	r2 = (org.junit.runners.Suite$SuiteClasses) $r1;	if r2 != null goto $r3 = interfaceinvoke r2.<org.junit.runners.Suite$SuiteClasses: java.lang.Class[] value()>();	$r4 = new org.junit.runners.model.InitializationError;	$r5 = newarray (java.lang.Object)[1];	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r5[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("class \'%s\' must have a SuiteClasses annotation", $r5);	specialinvoke $r4.<org.junit.runners.model.InitializationError: void <init>(java.lang.String)>($r7);	throw $r4
;block_num 2