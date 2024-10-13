(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort var553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun basename/-1028346880 (var1290) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getClass/1258963082 (var553) ClassObject)
(declare-fun cast-from-var1290-to-var553 (var1290) var553)
(declare-const null-var1290 var1290)
(declare-const var2218 var1290) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var2218 null-var1290)))
(define-const var3902 String (basename/-1028346880 var2218)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var2675 Bool (startsWith/-1785782452 var3902 "org.apache.ibatis.javassist.util.proxy.")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.") 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= (ite var2675 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3231 ClassObject (getClass/1258963082 (cast-from-var1290-to-var553 var2218))) ; Statement: $r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1290-to-var553=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Object)}
; {var1290=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2218=r0, var3902=$r1, var2675=$z0, var553=java.lang.Object, var3231=$r11}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1290, r0=var2218, $r1=var3902, $z0=var2675, java.lang.Object=var553, $r11=var3231}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.");	if $z0 == 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	return $r11
;block_num 2