(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2055 0)
(declare-sort var2286 0)
(declare-sort var325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2055 var2055)
(declare-const null-var2286 var2286)
(declare-const null-String String)
(declare-const var2562 var2055) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var2562 null-var2055)))
(declare-const var758 var2286) ; Statement: r4 := @parameter0: java.io.File 
(assert (not (= var758 null-var2286)))
(declare-const var3657 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3657 null-String)))
(assert true)
(define-const var2084 Int (lastIndexOf/-1292097097 var3657 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1815 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var2084 var1815)))) ; Negate: Cond: i0 != $i2  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2055=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var2562=r2, var2286=java.io.File, var758=r4, var3657=r0, var325=null_type, var2084=i0, var1815=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var2055, r2=var2562, java.io.File=var2286, r4=var758, r0=var3657, null_type=var325, i0=var2084, $i2=var1815}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	r4 := @parameter0: java.io.File;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return
;block_num 2