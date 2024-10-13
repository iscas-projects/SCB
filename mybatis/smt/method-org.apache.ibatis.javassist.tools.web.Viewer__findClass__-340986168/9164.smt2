(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var98 0)
(declare-sort var1406 0)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun findSystemClass/227913647 (var347 String) ClassObject)
(declare-fun cast-from-var98-to-var347 (var98) var347)
(declare-const null-var98 var98)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2883 var98) ; Statement: r1 := @this: org.apache.ibatis.javassist.tools.web.Viewer 
(assert (not (= var2883 null-var98)))
(declare-const var1003 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1003 null-String)))
(define-const var2491 ClassObject null-ClassObject) ; Statement: r3 = null 
(assert true)
(define-const var3060 Bool (startsWith/-1785782452 var1003 "java.")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z0 != 0 goto r3 = virtualinvoke r1.<org.apache.ibatis.javassist.tools.web.Viewer: java.lang.Class findSystemClass(java.lang.String)>(r0) 
(assert (not (= (ite var3060 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2491!1 ClassObject (findSystemClass/227913647 (cast-from-var98-to-var347 var2883) var1003)) ; Statement: r3 = virtualinvoke r1.<org.apache.ibatis.javassist.tools.web.Viewer: java.lang.Class findSystemClass(java.lang.String)>(r0) 
(assert true) ; Non Conditional
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2491!1 null-ClassObject))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), findSystemClass/227913647=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var98-to-var347=([org.apache.ibatis.javassist.tools.web.Viewer], java.lang.ClassLoader)}
; {var98=org.apache.ibatis.javassist.tools.web.Viewer, var2883=r1, var1003=r0, var1406=null_type, var2491=r3, var3060=$z0, var347=java.lang.ClassLoader}
; {org.apache.ibatis.javassist.tools.web.Viewer=var98, r1=var2883, r0=var1003, null_type=var1406, r3=var2491, $z0=var3060, java.lang.ClassLoader=var347}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.tools.web.Viewer;	r0 := @parameter0: java.lang.String;	r3 = null;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z0 != 0 goto r3 = virtualinvoke r1.<org.apache.ibatis.javassist.tools.web.Viewer: java.lang.Class findSystemClass(java.lang.String)>(r0);	r3 = virtualinvoke r1.<org.apache.ibatis.javassist.tools.web.Viewer: java.lang.Class findSystemClass(java.lang.String)>(r0);	if r3 != null goto return r3;	return r3
;block_num 4