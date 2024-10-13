(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var1049 0)
(declare-sort var3224 0)
(declare-sort var2637 0)
(declare-sort var1345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLocation/479856632 (var3224) var2637)
(declare-fun var1131_get/1088891777 (var1131 var1345) var1345)
(declare-fun cast-from-var2637-to-var1345 (var2637) var1345)
(declare-fun cast-from-var1345-to-var3224 (var1345) var3224)
(declare-fun var1131_put/1464166817 (var1131 var1345 var1345) var1345)
(declare-fun cast-from-var3224-to-var1345 (var3224) var1345)
(declare-const null-var1131 var1131)
(declare-const null-String String)
(declare-const null-var3224 var3224)
(declare-const var1746 var1131) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var1746 null-var1131)))
(declare-const var2634 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var2634 null-String)))
(declare-const var3440 var3224) ; Statement: r1 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target 
(assert (not (= var3440 null-var3224)))
(assert true)
(define-const var1983 var2637 (getLocation/479856632 var3440)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(define-const var3711 var1345 (var1131_get/1088891777 var1746 (cast-from-var2637-to-var1345 var1983))) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var3582 var3224 (cast-from-var1345-to-var3224 var3711)) ; Statement: r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target) $r3 
 ; Statement: if r4 == null goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert (= var3582 null-var3224)) ; Cond: r4 == null 
(assert true)
(define-const var163 var2637 (getLocation/479856632 var3440)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
;(assert (var1131_put/1464166817 var1746 (cast-from-var2637-to-var1345 var163) (cast-from-var3224-to-var1345 var3440))) ; Statement: interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r1) 

(declare-const var1746!1 var1131)
(declare-const var163!1 var2637)
(declare-const var3440!1 var3224)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLocation/479856632=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), var1131_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2637-to-var1345=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.Object), cast-from-var1345-to-var3224=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), var1131_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3224-to-var1345=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.Object)}
; {var1131=java.util.Map, var1746=r0, var2634=r7, var1049=null_type, var3224=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var3440=r1, var2637=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1983=$r2, var1345=java.lang.Object, var3711=$r3, var3582=r4, var163=$r5}
; {java.util.Map=var1131, r0=var1746, r7=var2634, null_type=var1049, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3224, r1=var3440, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2637, $r2=var1983, java.lang.Object=var1345, $r3=var3711, r4=var3582, $r5=var163}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.util.Map;	r7 := @parameter1: java.lang.String;	r1 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	$r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target) $r3;	if r4 == null goto $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r5, r1);	return
;block_num 3