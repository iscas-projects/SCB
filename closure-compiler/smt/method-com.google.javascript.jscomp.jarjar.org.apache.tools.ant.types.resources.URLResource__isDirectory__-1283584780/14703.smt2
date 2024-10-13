(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1439 0)
(declare-sort var3691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isReference/-1089173962 (var3691) Bool)
(declare-fun cast-from-var1439-to-var3691 (var1439) var3691)
(declare-fun getName/350879925 (var1439) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var1439 var1439)
(declare-const var1220 var1439) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource 
(assert (not (= var1220 null-var1439)))
(assert true)
(define-const var2224 Bool (isReference/-1089173962 (cast-from-var1439-to-var3691 var1220))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: boolean isReference()>() 
 ; Statement: if $z0 == 0 goto $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.lang.String getName()>() 
(assert (= (ite var2224 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1790 String (getName/350879925 var1220)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.lang.String getName()>() 
(assert true)
(define-const var3610 Bool (endsWith/985337093 var1790 "/")) ; Statement: $z1 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {isReference/-1089173962=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType], boolean), cast-from-var1439-to-var3691=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType), getName/350879925=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1439=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource, var1220=r0, var3691=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType, var2224=$z0, var1790=$r1, var3610=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource=var1439, r0=var1220, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.DataType=var3691, $z0=var2224, $r1=var1790, $z1=var3610}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: boolean isReference()>();	if $z0 == 0 goto $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.lang.String getName()>();	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.URLResource: java.lang.String getName()>();	$z1 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("/");	return $z1
;block_num 3