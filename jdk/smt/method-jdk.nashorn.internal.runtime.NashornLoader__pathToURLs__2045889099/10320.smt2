(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1760 0)
(declare-sort var1592 0)
(declare-sort var3706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-var3706-init () (Array Int var3706))
(declare-fun getLength-Arr-var3706-1 ((Array Int var3706)) Int)
(declare-const null-String String)
(declare-const var1592-pathSeparator String)
(declare-const var859 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var859 null-String)))
(define-const var431 String var1592-pathSeparator) ; Statement: $r1 = <java.io.File: java.lang.String pathSeparator> 
(assert true)
(define-const var171 (Array Int String) (split/-636890950 var859 var431)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>($r1) 
(define-const var2243 Int (getLength-Arr-String-1 var171)) ; Statement: $i0 = lengthof r2 
(define-const var440 (Array Int var3706) arr-var3706-init) ; Statement: r5 = newarray (java.net.URL)[$i0] 
(define-const var3403 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3140 Int (getLength-Arr-String-1 var171)) ; Statement: $i1 = lengthof r2 
 ; Statement: if i4 >= $i1 goto $i2 = lengthof r5 
(assert (>= var3403 var3140)) ; Cond: i4 >= $i1 
(define-const var626 Int (getLength-Arr-var3706-1 var440)) ; Statement: $i2 = lengthof r5 
 ; Statement: if $i2 == i4 goto return r5 
(assert (= var626 var3403)) ; Cond: $i2 == i4 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-var3706-init=([], java.net.URL[]), getLength-Arr-var3706-1=([java.net.URL[]], int)}
; {var859=r0, var1760=null_type, var1592=java.io.File, var431=$r1, var171=r2, var2243=$i0, var3706=java.net.URL, var440=r5, var3403=i4, var3140=$i1, var626=$i2}
; {r0=var859, null_type=var1760, java.io.File=var1592, $r1=var431, r2=var171, $i0=var2243, java.net.URL=var3706, r5=var440, i4=var3403, $i1=var3140, $i2=var626}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.io.File: java.lang.String pathSeparator>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>($r1);	$i0 = lengthof r2;	r5 = newarray (java.net.URL)[$i0];	i4 = 0;	$i1 = lengthof r2;	if i4 >= $i1 goto $i2 = lengthof r5;	$i2 = lengthof r5;	if $i2 == i4 goto return r5;	return r5
;block_num 4