(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3188 0)
(declare-sort var3817 0)
(declare-sort var2045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const null-var3817 var3817)
(declare-const null-Int Int)
(declare-const null-var2045 var2045)
(declare-const var2236 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2236 null-String)))
(declare-const var923 var3817) ; Statement: r13 := @parameter1: java.util.Map 
(assert (not (= var923 null-var3817)))
(declare-const var1241 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1241 null-String)))
(declare-const var881 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var881 null-String)))
(declare-const var2171 String) ; Statement: r6 := @parameter4: java.lang.StringBuilder 
(assert (not (= var2171 null-String)))
(declare-const var2840 Int) ; Statement: i4 := @parameter5: int 
(assert (not (= var2840 null-Int)))
(declare-const var2755 Int) ; Statement: i5 := @parameter6: int 
(assert (not (= var2755 null-Int)))
(declare-const var1753 var2045) ; Statement: r4 := @parameter7: java.util.ArrayList 
(assert (not (= var1753 null-var2045)))
(declare-const var2114 var2045) ; Statement: r10 := @parameter8: java.util.ArrayList 
(assert (not (= var2114 null-var2045)))
(assert true)
(define-const var1912 (Array Int String) (split/-636890950 var1241 "\u005c$")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\$") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1241 "\u005c$") i) (re.++ (re.* re.all) (str.to_re "$") (re.* re.all))))))
(assert true)
(define-const var816 (Array Int String) (split/-636890950 var881 "\u005c$")) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\$") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var881 "\u005c$") i) (re.++ (re.* re.all) (str.to_re "$") (re.* re.all))))))
(define-const var2197 Int (getLength-Arr-String-1 var1912)) ; Statement: $i1 = lengthof r1 
(define-const var2271 Int (getLength-Arr-String-1 var816)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i1 != $i0 goto return 0 
(assert (not (= var2197 var2271))) ; Cond: $i1 != $i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2236=r7, var3188=null_type, var3817=java.util.Map, var923=r13, var1241=r0, var881=r2, var2171=r6, var2840=i4, var2755=i5, var2045=java.util.ArrayList, var1753=r4, var2114=r10, var1912=r1, var816=r3, var2197=$i1, var2271=$i0}
; {r7=var2236, null_type=var3188, java.util.Map=var3817, r13=var923, r0=var1241, r2=var881, r6=var2171, i4=var2840, i5=var2755, java.util.ArrayList=var2045, r4=var1753, r10=var2114, r1=var1912, r3=var816, $i1=var2197, $i0=var2271}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 2}
;stmts r7 := @parameter0: java.lang.String;	r13 := @parameter1: java.util.Map;	r0 := @parameter2: java.lang.String;	r2 := @parameter3: java.lang.String;	r6 := @parameter4: java.lang.StringBuilder;	i4 := @parameter5: int;	i5 := @parameter6: int;	r4 := @parameter7: java.util.ArrayList;	r10 := @parameter8: java.util.ArrayList;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\$");	r3 = virtualinvoke r2.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\$");	$i1 = lengthof r1;	$i0 = lengthof r3;	if $i1 != $i0 goto return 0;	return 0
;block_num 2