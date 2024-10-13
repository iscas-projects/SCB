(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun var2723_makeDesc/-677107583 (String ClassObject) void)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1463 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1463 null-String)))
(declare-const var2273 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var2273 null-ClassObject)))
(assert true)
(define-const var1547 Bool (isArray/1369458484 var2273)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>() 
(assert (not (= (ite var1547 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/-1166366385 var1463 91)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1463!1 String)
(assert (str.prefixof var1463 var1463!1))
(assert true)
(define-const var2240 ClassObject (getComponentType/1960034130 var2273)) ; Statement: $r21 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>() 
;(assert (var2723_makeDesc/-677107583 var1463!1 var2240)) ; Statement: staticinvoke <org.apache.ibatis.javassist.util.proxy.RuntimeSupport: void makeDesc(java.lang.StringBuilder,java.lang.Class)>(r1, $r21) 

(declare-const var1463!2 String)
(declare-const var2240!1 ClassObject)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isArray/1369458484=([java.lang.Class], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getComponentType/1960034130=([java.lang.Class], java.lang.Class), var2723_makeDesc/-677107583=([java.lang.StringBuilder, java.lang.Class], void)}
; {var1463=r1, var2273=r0, var1547=$z0, var2240=$r21, var2723=org.apache.ibatis.javassist.util.proxy.RuntimeSupport}
; {r1=var1463, r0=var2273, $z0=var1547, $r21=var2240, org.apache.ibatis.javassist.util.proxy.RuntimeSupport=var2723}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.Class;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isArray()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r21 = virtualinvoke r0.<java.lang.Class: java.lang.Class getComponentType()>();	staticinvoke <org.apache.ibatis.javassist.util.proxy.RuntimeSupport: void makeDesc(java.lang.StringBuilder,java.lang.Class)>(r1, $r21);	goto [?= return];	return
;block_num 3