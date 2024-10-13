(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2950 0)
(declare-sort var857 0)
(declare-sort var1200 0)
(declare-sort var2642 0)
(declare-sort var2329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun map/1060277413 (var2950) var1200)
(declare-fun toLowerCase/1946809429 (String var2642) String)
(declare-fun var1200_put/1464166817 (var1200 var2329 var2329) var2329)
(declare-fun cast-from-String-to-var2329 (String) var2329)
(declare-const null-var2950 var2950)
(declare-const null-String String)
(declare-const var2642-ENGLISH var2642)
(declare-const var2697 var2950) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance 
(assert (not (= var2697 null-var2950)))
(declare-const var490 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var490 null-String)))
(declare-const var2579 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2579 null-String)))
(define-const var2590 var1200 (map/1060277413 var2697)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map map> 
(define-const var3678 var2642 var2642-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var279 String (toLowerCase/1946809429 var490 var3678)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
;(assert (var1200_put/1464166817 var2590 (cast-from-String-to-var2329 var279) (cast-from-String-to-var2329 var2579))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r4) 

(declare-const var2590!1 var1200)
(declare-const var279!1 String)
(declare-const var2579!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {map/1060277413=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1200_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2329=([java.lang.String], java.lang.Object)}
; {var2950=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance, var2697=r0, var490=r1, var857=null_type, var2579=r4, var1200=java.util.Map, var2590=$r3, var2642=java.util.Locale, var3678=$r2, var279=$r5, var2329=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance=var2950, r0=var2697, r1=var490, null_type=var857, r4=var2579, java.util.Map=var1200, $r3=var2590, java.util.Locale=var2642, $r2=var3678, $r5=var279, java.lang.Object=var2329}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroInstance: java.util.Map map>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r4);	return
;block_num 1