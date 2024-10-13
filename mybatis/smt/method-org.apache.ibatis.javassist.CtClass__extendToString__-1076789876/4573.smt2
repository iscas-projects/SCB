(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var2904) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2904 var2904)
(declare-const null-String String)
(declare-const var1413 var2904) ; Statement: r1 := @this: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1413 null-var2904)))
(declare-const var2917 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2917 null-String)))
(assert true)
(define-const var147 String (getName/1611768686 var1413)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var2917 var147)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2917!1 String)
(assert (= var2917!1 (str.++ var2917 var147)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2904=org.apache.ibatis.javassist.CtClass, var1413=r1, var2917=r0, var147=$r2}
; {org.apache.ibatis.javassist.CtClass=var2904, r1=var1413, r0=var2917, $r2=var147}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.CtClass;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 1