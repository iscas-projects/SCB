(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2314 0)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2314 var2314)
(declare-const null-String String)
(declare-const var1986 var2314) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var1986 null-var2314)))
(declare-const var2809 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2809 null-String)))
(assert true)
(define-const var2402 (Array Int Int) (toCharArray/415275702 var2809)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2554 Int (getLength-Arr-Int-1 var2402)) ; Statement: i0 = lengthof r1 
(define-const var3716 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 0 
(assert (>= var3716 var2554)) ; Cond: i2 >= i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var2314=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var1986=r2, var2809=r0, var2606=null_type, var2402=r1, var2554=i0, var3716=i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var2314, r2=var1986, r0=var2809, null_type=var2606, r1=var2402, i0=var2554, i2=var3716}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto return 0;	return 0
;block_num 3