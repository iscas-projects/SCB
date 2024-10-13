(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1212 0)
(declare-sort var804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReference/-1089173962 (var804) Bool)
(declare-fun cast-from-var1212-to-var804 (var1212) var804)
(declare-fun toString/1668676610 (var1212) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1212 var1212)
(declare-const var1845 var1212) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1845 null-var1212)))
(declare-const var1185 var1212) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource 
(assert (not (= var1185 null-var1212)))
(assert true)
(define-const var2042 Bool (isReference/-1089173962 (cast-from-var1212-to-var804 var1845))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isReference()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>() 
(assert (= (ite var2042 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var889 String (toString/1668676610 var1845)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>() 
(assert true)
(define-const var3727 String (toString/1668676610 var1185)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>() 
(assert true)
(define-const var401 Int (compareTo/1411385946 var889 var3727)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var889 var3727)) (this<=other (str.<= var889 var3727)) (compareRes (compareTo/1411385946 var889 var3727))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {isReference/-1089173962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], boolean), cast-from-var1212-to-var804=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), toString/1668676610=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1212=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var1845=r0, var1185=r1, var804=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var2042=$z0, var889=$r3, var3727=$r2, var401=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1212, r0=var1845, r1=var1185, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var804, $z0=var2042, $r3=var889, $r2=var3727, $i0=var401}
;seq <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: boolean isReference()>();	if $z0 == 0 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource: java.lang.String toString()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 2