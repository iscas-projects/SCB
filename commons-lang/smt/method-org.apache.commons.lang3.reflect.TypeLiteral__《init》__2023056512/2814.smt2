(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3237 0)
(declare-sort var2205 0)
(declare-sort var3263 0)
(declare-sort var155 0)
(declare-sort var86 0)
(declare-sort var1532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3237!class ClassObject)
(declare-fun <init>/-279557996 (var2205) void)
(declare-fun cast-from-var3237-to-var2205 (var3237) var2205)
(declare-fun getClass/1258963082 (var2205) ClassObject)
(declare-fun var155_getTypeArguments/-124415641 (ClassObject ClassObject) var3263)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var3263_get/1088891777 (var3263 var2205) var2205)
(declare-fun cast-from-var86-to-var2205 (var86) var2205)
(declare-fun cast-from-var2205-to-ClassObject (var2205) ClassObject)
(declare-fun arr-var2205-init () (Array Int var2205))
(declare-fun cast-from-ClassObject-to-var2205 (ClassObject) var2205)
(declare-fun var155_toLongString/1204546232 (var86) String)
(declare-fun cast-from-String-to-var2205 (String) var2205)
(declare-fun var1532_notNull/-1935316562 (var2205 String (Array Int var2205)) var2205)
(declare-fun value/527982463 (var3237) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun var155_toString/367894200 (ClassObject) String)
(declare-fun String_format/1339386452 (String (Array Int var2205)) String)
(declare-fun toString/527982463 (var3237) String)
(declare-const null-var3237 var3237)
(declare-const var3237-T var86)
(declare-const null-__Array__Int__var2205__ (Array Int var2205))
(declare-const var735 var3237) ; Statement: r0 := @this: org.apache.commons.lang3.reflect.TypeLiteral 
(assert (not (= var735 null-var3237)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3237-to-var2205 var735))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var735!1 var3237)
(assert true)
(define-const var705 ClassObject (getClass/1258963082 (cast-from-var3237-to-var2205 var735!1))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var951 var3263 (var155_getTypeArguments/-124415641 (cast-from-ClassObject-to-ClassObject var705) var3237!class)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.util.Map getTypeArguments(java.lang.reflect.Type,java.lang.Class)>($r1, class "Lorg/apache/commons/lang3/reflect/TypeLiteral;") 
(define-const var3295 var86 var3237-T) ; Statement: $r2 = <org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.TypeVariable T> 
(define-const var179 var2205 (var3263_get/1088891777 var951 (cast-from-var86-to-var2205 var3295))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1444 ClassObject (cast-from-var2205-to-ClassObject var179)) ; Statement: $r9 = (java.lang.reflect.Type) $r4 
(define-const var2411 (Array Int var2205) arr-var2205-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2116 ClassObject (getClass/1258963082 (cast-from-var3237-to-var2205 var735!1))) ; Statement: $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(declare-const var2411!1 (Array Int var2205))
(assert (not (= var2411!1 null-__Array__Int__var2205__)))
(assert (= (select var2411!1 0) (cast-from-ClassObject-to-var2205 var2116))) ; Statement: $r5[0] = $r6 
(define-const var2633 var86 var3237-T) ; Statement: $r7 = <org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.TypeVariable T> 
(define-const var927 String (var155_toLongString/1204546232 var2633)) ; Statement: $r8 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toLongString(java.lang.reflect.TypeVariable)>($r7) 
(declare-const var2411!2 (Array Int var2205))
(assert (not (= var2411!2 null-__Array__Int__var2205__)))
(assert (= (select var2411!2 1) (cast-from-String-to-var2205 var927))) ; Statement: $r5[1] = $r8 
(define-const var1709 var2205 (var1532_notNull/-1935316562 (cast-from-ClassObject-to-var2205 var1444) "%s does not assign type parameter %s" var2411!2)) ; Statement: $r10 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>($r9, "%s does not assign type parameter %s", $r5) 
(define-const var2744 ClassObject (cast-from-var2205-to-ClassObject var1709)) ; Statement: $r11 = (java.lang.reflect.Type) $r10 
(declare-const var735!2 var3237)
(assert (not (= var735!2 null-var3237)))
(assert (= (value/527982463 var735!2) var2744)) ; Statement: r0.<org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.Type value> = $r11 
(define-const var649 (Array Int var2205) arr-var2205-init) ; Statement: $r12 = newarray (java.lang.Object)[2] 
(define-const var1740 ClassObject var3237!class) ; Statement: $r13 = class "Lorg/apache/commons/lang3/reflect/TypeLiteral;" 
(assert true)
(define-const var1560 String (getSimpleName/-390194377 var1740)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var649!1 (Array Int var2205))
(assert (not (= var649!1 null-__Array__Int__var2205__)))
(assert (= (select var649!1 0) (cast-from-String-to-var2205 var1560))) ; Statement: $r12[0] = $r14 
(define-const var721 ClassObject (value/527982463 var735!2)) ; Statement: $r15 = r0.<org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.Type value> 
(define-const var1006 String (var155_toString/367894200 var721)) ; Statement: $r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r15) 
(declare-const var649!2 (Array Int var2205))
(assert (not (= var649!2 null-__Array__Int__var2205__)))
(assert (= (select var649!2 1) (cast-from-String-to-var2205 var1006))) ; Statement: $r12[1] = $r16 
(define-const var2482 String (String_format/1339386452 "%s<%s>" var649!2)) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s<%s>", $r12) 
(declare-const var735!3 var3237)
(assert (not (= var735!3 null-var3237)))
(assert (= (toString/527982463 var735!3) var2482)) ; Statement: r0.<org.apache.commons.lang3.reflect.TypeLiteral: java.lang.String toString> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3237-to-var2205=([org.apache.commons.lang3.reflect.TypeLiteral], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), var155_getTypeArguments/-124415641=([java.lang.reflect.Type, java.lang.Class], java.util.Map), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var3263_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var86-to-var2205=([java.lang.reflect.TypeVariable], java.lang.Object), cast-from-var2205-to-ClassObject=([java.lang.Object], java.lang.reflect.Type), arr-var2205-init=([], java.lang.Object[]), cast-from-ClassObject-to-var2205=([java.lang.Class], java.lang.Object), var155_toLongString/1204546232=([java.lang.reflect.TypeVariable], java.lang.String), cast-from-String-to-var2205=([java.lang.String], java.lang.Object), var1532_notNull/-1935316562=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), value/527982463=([org.apache.commons.lang3.reflect.TypeLiteral], java.lang.reflect.Type), getSimpleName/-390194377=([java.lang.Class], java.lang.String), var155_toString/367894200=([java.lang.reflect.Type], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), toString/527982463=([org.apache.commons.lang3.reflect.TypeLiteral], java.lang.String)}
; {var3237=org.apache.commons.lang3.reflect.TypeLiteral, var735=r0, var2205=java.lang.Object, var705=$r1, var3263=java.util.Map, var155=org.apache.commons.lang3.reflect.TypeUtils, var951=$r3, var86=java.lang.reflect.TypeVariable, var3295=$r2, var179=$r4, var1444=$r9, var2411=$r5, var2116=$r6, var2633=$r7, var927=$r8, var1532=org.apache.commons.lang3.Validate, var1709=$r10, var2744=$r11, var649=$r12, var1740=$r13, var1560=$r14, var721=$r15, var1006=$r16, var2482=$r17}
; {org.apache.commons.lang3.reflect.TypeLiteral=var3237, r0=var735, java.lang.Object=var2205, $r1=var705, java.util.Map=var3263, org.apache.commons.lang3.reflect.TypeUtils=var155, $r3=var951, java.lang.reflect.TypeVariable=var86, $r2=var3295, $r4=var179, $r9=var1444, $r5=var2411, $r6=var2116, $r7=var2633, $r8=var927, org.apache.commons.lang3.Validate=var1532, $r10=var1709, $r11=var2744, $r12=var649, $r13=var1740, $r14=var1560, $r15=var721, $r16=var1006, $r17=var2482}
;seq <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.commons.lang3.reflect.TypeLiteral;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.util.Map getTypeArguments(java.lang.reflect.Type,java.lang.Class)>($r1, class "Lorg/apache/commons/lang3/reflect/TypeLiteral;");	$r2 = <org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.TypeVariable T>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	$r9 = (java.lang.reflect.Type) $r4;	$r5 = newarray (java.lang.Object)[2];	$r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5[0] = $r6;	$r7 = <org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.TypeVariable T>;	$r8 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toLongString(java.lang.reflect.TypeVariable)>($r7);	$r5[1] = $r8;	$r10 = staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>($r9, "%s does not assign type parameter %s", $r5);	$r11 = (java.lang.reflect.Type) $r10;	r0.<org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.Type value> = $r11;	$r12 = newarray (java.lang.Object)[2];	$r13 = class "Lorg/apache/commons/lang3/reflect/TypeLiteral;";	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getSimpleName()>();	$r12[0] = $r14;	$r15 = r0.<org.apache.commons.lang3.reflect.TypeLiteral: java.lang.reflect.Type value>;	$r16 = staticinvoke <org.apache.commons.lang3.reflect.TypeUtils: java.lang.String toString(java.lang.reflect.Type)>($r15);	$r12[1] = $r16;	$r17 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s<%s>", $r12);	r0.<org.apache.commons.lang3.reflect.TypeLiteral: java.lang.String toString> = $r17;	return
;block_num 1