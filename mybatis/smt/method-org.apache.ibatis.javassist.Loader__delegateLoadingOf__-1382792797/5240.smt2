(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort var265 0)
(declare-sort var3080 0)
(declare-sort var3087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun notDefinedHere/60359931 (var2103) var3080)
(declare-fun put/-1127386829 (var3080 var3087 var3087) var3087)
(declare-fun cast-from-String-to-var3087 (String) var3087)
(declare-fun cast-from-var2103-to-var3087 (var2103) var3087)
(declare-const null-var2103 var2103)
(declare-const null-String String)
(declare-const var3274 var2103) ; Statement: r1 := @this: org.apache.ibatis.javassist.Loader 
(assert (not (= var3274 null-var2103)))
(declare-const var255 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var255 null-String)))
(assert true)
(define-const var2876 Bool (endsWith/985337093 var255 ".")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.Loader: java.util.HashMap notDefinedHere> 
(assert (= (ite var2876 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2863 var3080 (notDefinedHere/60359931 var3274)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.Loader: java.util.HashMap notDefinedHere> 
(assert true)
;(assert (put/-1127386829 var2863 (cast-from-String-to-var3087 var255) (cast-from-var2103-to-var3087 var3274))) ; Statement: virtualinvoke $r2.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r1) 

(declare-const var2863!1 var3080)
(declare-const var255!1 String)
(declare-const var3274!1 var2103)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), notDefinedHere/60359931=([org.apache.ibatis.javassist.Loader], java.util.HashMap), put/-1127386829=([java.util.HashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3087=([java.lang.String], java.lang.Object), cast-from-var2103-to-var3087=([org.apache.ibatis.javassist.Loader], java.lang.Object)}
; {var2103=org.apache.ibatis.javassist.Loader, var3274=r1, var255=r0, var265=null_type, var2876=$z0, var3080=java.util.HashMap, var2863=$r2, var3087=java.lang.Object}
; {org.apache.ibatis.javassist.Loader=var2103, r1=var3274, r0=var255, null_type=var265, $z0=var2876, java.util.HashMap=var3080, $r2=var2863, java.lang.Object=var3087}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.Loader;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.Loader: java.util.HashMap notDefinedHere>;	$r2 = r1.<org.apache.ibatis.javassist.Loader: java.util.HashMap notDefinedHere>;	virtualinvoke $r2.<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r1);	return
;block_num 3