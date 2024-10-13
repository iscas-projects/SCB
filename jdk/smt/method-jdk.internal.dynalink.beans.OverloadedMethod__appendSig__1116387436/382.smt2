(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1600 0)
(declare-sort var2899 0)
(declare-sort var3278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun type/705534411 (var1600) var2899)
(declare-fun parameterArray/1321439148 (var2899) (Array Int ClassObject))
(declare-fun isVarargsCollector/-610413635 (var1600) Bool)
(declare-fun var3278_appendTypes/-1727026421 (String (Array Int ClassObject) Bool) void)
(declare-const null-String String)
(declare-const null-var1600 var1600)
(declare-const var570 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var570 null-String)))
(declare-const var1479 var1600) ; Statement: r1 := @parameter1: java.lang.invoke.MethodHandle 
(assert (not (= var1479 null-var1600)))
(assert true)
;(assert (append/-1166366385 var570 40)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var570!1 String)
(assert (str.prefixof var570 var570!1))
(assert true)
(define-const var15 var2899 (type/705534411 var1479)) ; Statement: $r2 = virtualinvoke r1.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var3589 (Array Int ClassObject) (parameterArray/1321439148 var15)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.invoke.MethodType: java.lang.Class[] parameterArray()>() 
(assert true)
(define-const var3252 Bool (isVarargsCollector/-610413635 var1479)) ; Statement: $z0 = virtualinvoke r1.<java.lang.invoke.MethodHandle: boolean isVarargsCollector()>() 
;(assert (var3278_appendTypes/-1727026421 var570!1 var3589 var3252)) ; Statement: staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: void appendTypes(java.lang.StringBuilder,java.lang.Class[],boolean)>(r0, $r3, $z0) 

(declare-const var570!2 String)
(declare-const var3589!1 (Array Int ClassObject))
(declare-const var3252!1 Bool)
(assert true)
;(assert (append/-1166366385 var570!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var570!3 String)
(assert (str.prefixof var570!2 var570!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), parameterArray/1321439148=([java.lang.invoke.MethodType], java.lang.Class[]), isVarargsCollector/-610413635=([java.lang.invoke.MethodHandle], boolean), var3278_appendTypes/-1727026421=([java.lang.StringBuilder, java.lang.Class[], boolean], void)}
; {var570=r0, var1600=java.lang.invoke.MethodHandle, var1479=r1, var2899=java.lang.invoke.MethodType, var15=$r2, var3589=$r3, var3252=$z0, var3278=jdk.internal.dynalink.beans.OverloadedMethod}
; {r0=var570, java.lang.invoke.MethodHandle=var1600, r1=var1479, java.lang.invoke.MethodType=var2899, $r2=var15, $r3=var3589, $z0=var3252, jdk.internal.dynalink.beans.OverloadedMethod=var3278}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.invoke.MethodHandle;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r2 = virtualinvoke r1.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r3 = virtualinvoke $r2.<java.lang.invoke.MethodType: java.lang.Class[] parameterArray()>();	$z0 = virtualinvoke r1.<java.lang.invoke.MethodHandle: boolean isVarargsCollector()>();	staticinvoke <jdk.internal.dynalink.beans.OverloadedMethod: void appendTypes(java.lang.StringBuilder,java.lang.Class[],boolean)>(r0, $r3, $z0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1