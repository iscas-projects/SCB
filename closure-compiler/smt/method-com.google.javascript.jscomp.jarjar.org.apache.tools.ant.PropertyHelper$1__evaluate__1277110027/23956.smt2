(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3952 0)
(declare-sort var427 0)
(declare-sort var2031 0)
(declare-sort var1089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun toString/-522406933 (var1089) String)
(declare-const null-var3952 var3952)
(declare-const null-String String)
(declare-const null-var2031 var2031)
(declare-const null-var1089 var1089)
(declare-const var2263 var3952) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1 
(assert (not (= var2263 null-var3952)))
(declare-const var1677 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1677 null-String)))
(declare-const var2252 var2031) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper 
(assert (not (= var2252 null-var2031)))
(define-const var277 var1089 null-var1089) ; Statement: r6 = null 
(assert true)
(define-const var2756 Bool (startsWith/-1785782452 var1677 "toString:")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("toString:") 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2756 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r6 != null goto $r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= var277 null-var1089))) ; Cond: r6 != null 
(assert true)
(define-const var9 String (toString/-522406933 var277)) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), toString/-522406933=([java.lang.Object], java.lang.String)}
; {var3952=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1, var2263=r3, var1677=r0, var427=null_type, var2031=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper, var2252=r1, var1089=java.lang.Object, var277=r6, var2756=$z0, var9=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1=var3952, r3=var2263, r0=var1677, null_type=var427, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper=var2031, r1=var2252, java.lang.Object=var1089, r6=var277, $z0=var2756, $r7=var9}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper$1;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper;	r6 = null;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("toString:");	if $z0 == 0 goto (branch);	if r6 != null goto $r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.String toString()>();	return $r7
;block_num 4