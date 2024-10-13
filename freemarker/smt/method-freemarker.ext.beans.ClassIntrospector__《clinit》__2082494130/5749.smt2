(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1641 0)
(declare-sort var2967 0)
(declare-sort var588 0)
(declare-sort var85 0)
(declare-sort var467 0)
(declare-sort var51 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-const var588!class ClassObject)
(declare-fun var1641_getLogger/-1078495866 (String) var1641)
(declare-fun var2967-init () var2967)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun <init>/-575238732 (var2967 String (Array Int ClassObject)) void)
(declare-fun var85_getSystemProperty/1520031166 (String String) String)
(declare-fun var588-init () var588)
(declare-fun <init>/-279557996 (var588) void)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var467 var467)
(declare-const null-var51 var51)
(define-const var84 var1641 (var1641_getLogger/-1078495866 "freemarker.beans")) ; Statement: $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.beans") 
(define-const var117 var1641 var84) ; Statement: <freemarker.ext.beans.ClassIntrospector: freemarker.log.Logger LOG> = $r0 
(define-const var680 var2967 var2967-init) ; Statement: $r1 = new freemarker.ext.beans.ExecutableMemberSignature 
(define-const var231 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r2 = newarray (java.lang.Class)[1] 
(declare-const var231!1 (Array Int ClassObject))
(assert (not (= var231!1 null-__Array__Int__ClassObject__)))
(assert (= (select var231!1 0) String!class)) ; Statement: $r2[0] = class "Ljava/lang/String;" 
(assert true)
;(assert (<init>/-575238732 var680 "get" var231!1)) ; Statement: specialinvoke $r1.<freemarker.ext.beans.ExecutableMemberSignature: void <init>(java.lang.String,java.lang.Class[])>("get", $r2) 

(declare-const var680!1 var2967)
(declare-const var1750 String)
(declare-const var231!2 (Array Int ClassObject))
(define-const var656 var2967 var680!1) ; Statement: <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_STRING_SIGNATURE> = $r1 
(define-const var2646 var2967 var2967-init) ; Statement: $r3 = new freemarker.ext.beans.ExecutableMemberSignature 
(define-const var2986 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r4 = newarray (java.lang.Class)[1] 
(declare-const var2986!1 (Array Int ClassObject))
(assert (not (= var2986!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2986!1 0) var588!class)) ; Statement: $r4[0] = class "Ljava/lang/Object;" 
(assert true)
;(assert (<init>/-575238732 var2646 "get" var2986!1)) ; Statement: specialinvoke $r3.<freemarker.ext.beans.ExecutableMemberSignature: void <init>(java.lang.String,java.lang.Class[])>("get", $r4) 

(declare-const var2646!1 var2967)
(declare-const var1750!1 String)
(declare-const var2986!2 (Array Int ClassObject))
(define-const var3008 var2967 var2646!1) ; Statement: <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_OBJECT_SIGNATURE> = $r3 
(define-const var1861 var2967 var2967-init) ; Statement: $r5 = new freemarker.ext.beans.ExecutableMemberSignature 
(define-const var1274 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r6 = newarray (java.lang.Class)[0] 
(assert true)
;(assert (<init>/-575238732 var1861 "toString" var1274)) ; Statement: specialinvoke $r5.<freemarker.ext.beans.ExecutableMemberSignature: void <init>(java.lang.String,java.lang.Class[])>("toString", $r6) 

(declare-const var1861!1 var2967)
(declare-const var1696 String)
(declare-const var1274!1 (Array Int ClassObject))
(define-const var2688 var2967 var1861!1) ; Statement: <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature TO_STRING_SIGNATURE> = $r5 
(define-const var3402 String "true") ; Statement: $r8 = "true" 
(define-const var3982 String (var85_getSystemProperty/1520031166 "freemarker.development" "false")) ; Statement: $r7 = staticinvoke <freemarker.template.utility.SecurityUtilities: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("freemarker.development", "false") 
(assert true)
(define-const var1355 Bool (= var3402 var3982)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
(define-const var2706 Bool var1355) ; Statement: <freemarker.ext.beans.ClassIntrospector: boolean DEVELOPMENT_MODE> = $z0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2828 var467) ; Statement: $r15 := @caughtexception 
(assert (not (= var2828 null-var467)))
(define-const var55 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3700 var467) ; Statement: $r14 := @caughtexception 
(assert (not (= var3700 null-var467)))
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto r17 = null 
(assert (= (ite var55 1 0) 0)) ; Cond: z2 == 0 
(define-const var3993 var51 null-var51) ; Statement: r17 = null 
(assert true) ; Non Conditional
(define-const var2456 var51 var3993) ; Statement: <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ClassChangeNotifier CLASS_CHANGE_NOTIFIER> = r17 
(define-const var2653 var588 var588-init) ; Statement: $r18 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var2653)) ; Statement: specialinvoke $r18.<java.lang.Object: void <init>()>() 

(declare-const var2653!1 var588)
(define-const var1803 var588 var2653!1) ; Statement: <freemarker.ext.beans.ClassIntrospector: java.lang.Object ARG_TYPES_BY_METHOD_KEY> = $r18 
(define-const var2689 var588 var588-init) ; Statement: $r19 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var2689)) ; Statement: specialinvoke $r19.<java.lang.Object: void <init>()>() 

(declare-const var2689!1 var588)
(define-const var3660 var588 var2689!1) ; Statement: <freemarker.ext.beans.ClassIntrospector: java.lang.Object CONSTRUCTORS_KEY> = $r19 
(define-const var1164 var588 var588-init) ; Statement: $r20 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var1164)) ; Statement: specialinvoke $r20.<java.lang.Object: void <init>()>() 

(declare-const var1164!1 var588)
(define-const var794 var588 var1164!1) ; Statement: <freemarker.ext.beans.ClassIntrospector: java.lang.Object GENERIC_GET_KEY> = $r20 
(define-const var20 var588 var588-init) ; Statement: $r21 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var20)) ; Statement: specialinvoke $r21.<java.lang.Object: void <init>()>() 

(declare-const var20!1 var588)
(define-const var3960 var588 var20!1) ; Statement: <freemarker.ext.beans.ClassIntrospector: java.lang.Object TO_STRING_HIDDEN_FLAG_KEY> = $r21 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1641_getLogger/-1078495866=([java.lang.String], freemarker.log.Logger), var2967-init=([], freemarker.ext.beans.ExecutableMemberSignature), arr-ClassObject-init=([], java.lang.Class[]), <init>/-575238732=([freemarker.ext.beans.ExecutableMemberSignature, java.lang.String, java.lang.Class[]], void), var85_getSystemProperty/1520031166=([java.lang.String, java.lang.String], java.lang.String), var588-init=([], java.lang.Object), <init>/-279557996=([java.lang.Object], void)}
; {var1641=freemarker.log.Logger, var84=$r0, var117=<freemarker.ext.beans.ClassIntrospector: freemarker.log.Logger LOG>, var2967=freemarker.ext.beans.ExecutableMemberSignature, var680=$r1, var231=$r2, var1750="get", var656=<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_STRING_SIGNATURE>, var2646=$r3, var2986=$r4, var588=java.lang.Object, var3008=<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_OBJECT_SIGNATURE>, var1861=$r5, var1274=$r6, var1696="toString", var2688=<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature TO_STRING_SIGNATURE>, var3402=$r8, var85=freemarker.template.utility.SecurityUtilities, var3982=$r7, var1355=$z0, var2706=<freemarker.ext.beans.ClassIntrospector: boolean DEVELOPMENT_MODE>, var467=java.lang.Throwable, var2828=$r15, var55=z2, var3700=$r14, var51=freemarker.ext.beans.ClassChangeNotifier, var3993=r17, var2456=<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ClassChangeNotifier CLASS_CHANGE_NOTIFIER>, var2653=$r18, var1803=<freemarker.ext.beans.ClassIntrospector: java.lang.Object ARG_TYPES_BY_METHOD_KEY>, var2689=$r19, var3660=<freemarker.ext.beans.ClassIntrospector: java.lang.Object CONSTRUCTORS_KEY>, var1164=$r20, var794=<freemarker.ext.beans.ClassIntrospector: java.lang.Object GENERIC_GET_KEY>, var20=$r21, var3960=<freemarker.ext.beans.ClassIntrospector: java.lang.Object TO_STRING_HIDDEN_FLAG_KEY>}
; {freemarker.log.Logger=var1641, $r0=var84, <freemarker.ext.beans.ClassIntrospector: freemarker.log.Logger LOG>=var117, freemarker.ext.beans.ExecutableMemberSignature=var2967, $r1=var680, $r2=var231, "get"=var1750, <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_STRING_SIGNATURE>=var656, $r3=var2646, $r4=var2986, java.lang.Object=var588, <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_OBJECT_SIGNATURE>=var3008, $r5=var1861, $r6=var1274, "toString"=var1696, <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature TO_STRING_SIGNATURE>=var2688, $r8=var3402, freemarker.template.utility.SecurityUtilities=var85, $r7=var3982, $z0=var1355, <freemarker.ext.beans.ClassIntrospector: boolean DEVELOPMENT_MODE>=var2706, java.lang.Throwable=var467, $r15=var2828, z2=var55, $r14=var3700, freemarker.ext.beans.ClassChangeNotifier=var51, r17=var3993, <freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ClassChangeNotifier CLASS_CHANGE_NOTIFIER>=var2456, $r18=var2653, <freemarker.ext.beans.ClassIntrospector: java.lang.Object ARG_TYPES_BY_METHOD_KEY>=var1803, $r19=var2689, <freemarker.ext.beans.ClassIntrospector: java.lang.Object CONSTRUCTORS_KEY>=var3660, $r20=var1164, <freemarker.ext.beans.ClassIntrospector: java.lang.Object GENERIC_GET_KEY>=var794, $r21=var20, <freemarker.ext.beans.ClassIntrospector: java.lang.Object TO_STRING_HIDDEN_FLAG_KEY>=var3960}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.beans");	<freemarker.ext.beans.ClassIntrospector: freemarker.log.Logger LOG> = $r0;	$r1 = new freemarker.ext.beans.ExecutableMemberSignature;	$r2 = newarray (java.lang.Class)[1];	$r2[0] = class "Ljava/lang/String;";	specialinvoke $r1.<freemarker.ext.beans.ExecutableMemberSignature: void <init>(java.lang.String,java.lang.Class[])>("get", $r2);	<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_STRING_SIGNATURE> = $r1;	$r3 = new freemarker.ext.beans.ExecutableMemberSignature;	$r4 = newarray (java.lang.Class)[1];	$r4[0] = class "Ljava/lang/Object;";	specialinvoke $r3.<freemarker.ext.beans.ExecutableMemberSignature: void <init>(java.lang.String,java.lang.Class[])>("get", $r4);	<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature GET_OBJECT_SIGNATURE> = $r3;	$r5 = new freemarker.ext.beans.ExecutableMemberSignature;	$r6 = newarray (java.lang.Class)[0];	specialinvoke $r5.<freemarker.ext.beans.ExecutableMemberSignature: void <init>(java.lang.String,java.lang.Class[])>("toString", $r6);	<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ExecutableMemberSignature TO_STRING_SIGNATURE> = $r5;	$r8 = "true";	$r7 = staticinvoke <freemarker.template.utility.SecurityUtilities: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("freemarker.development", "false");	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	<freemarker.ext.beans.ClassIntrospector: boolean DEVELOPMENT_MODE> = $z0;	$r15 := @caughtexception;	z2 = 0;	$r14 := @caughtexception;	if z2 == 0 goto r17 = null;	r17 = null;	<freemarker.ext.beans.ClassIntrospector: freemarker.ext.beans.ClassChangeNotifier CLASS_CHANGE_NOTIFIER> = r17;	$r18 = new java.lang.Object;	specialinvoke $r18.<java.lang.Object: void <init>()>();	<freemarker.ext.beans.ClassIntrospector: java.lang.Object ARG_TYPES_BY_METHOD_KEY> = $r18;	$r19 = new java.lang.Object;	specialinvoke $r19.<java.lang.Object: void <init>()>();	<freemarker.ext.beans.ClassIntrospector: java.lang.Object CONSTRUCTORS_KEY> = $r19;	$r20 = new java.lang.Object;	specialinvoke $r20.<java.lang.Object: void <init>()>();	<freemarker.ext.beans.ClassIntrospector: java.lang.Object GENERIC_GET_KEY> = $r20;	$r21 = new java.lang.Object;	specialinvoke $r21.<java.lang.Object: void <init>()>();	<freemarker.ext.beans.ClassIntrospector: java.lang.Object TO_STRING_HIDDEN_FLAG_KEY> = $r21;	return
;block_num 6