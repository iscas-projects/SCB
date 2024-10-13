(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1070 0)
(declare-sort var1325 0)
(declare-sort var1171 0)
(declare-sort var516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReference/-1089173962 (var1325) Bool)
(declare-fun cast-from-var1070-to-var1325 (var1070) var1325)
(declare-fun getURL/947259256 (var1070) var1171)
(declare-fun String_valueOf/-333372740 (var516) String)
(declare-fun cast-from-var1171-to-var516 (var1171) var516)
(declare-const null-var1070 var1070)
(declare-const var1556 var1070) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource 
(assert (not (= var1556 null-var1070)))
(assert true)
(define-const var1787 Bool (isReference/-1089173962 (cast-from-var1070-to-var1325 var1556))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: boolean isReference()>() 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.net.URL getURL()>() 
(assert (= (ite var1787 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var828 var1171 (getURL/947259256 var1556)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.net.URL getURL()>() 
(define-const var2524 String (String_valueOf/-333372740 (cast-from-var1171-to-var516 var828))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isReference/-1089173962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], boolean), cast-from-var1070-to-var1325=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), getURL/947259256=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource], java.net.URL), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var1171-to-var516=([java.net.URL], java.lang.Object)}
; {var1070=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource, var1556=r0, var1325=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var1787=$z0, var1171=java.net.URL, var828=$r1, var516=java.lang.Object, var2524=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource=var1070, r0=var1556, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var1325, $z0=var1787, java.net.URL=var1171, $r1=var828, java.lang.Object=var516, $r3=var2524}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: boolean isReference()>();	if $z0 == 0 goto $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.net.URL getURL()>();	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.net.URL getURL()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r3
;block_num 3