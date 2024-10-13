(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var770 0)
(declare-sort var3510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBeginToken/-1587000614 (var770) String)
(declare-fun getEndToken/405649484 (var770) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var770 var770)
(declare-const null-String String)
(declare-const var702 var770) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet 
(assert (not (= var702 null-var770)))
(declare-const var678 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var678 null-String)))
(assert true)
(define-const var3270 String (getBeginToken/-1587000614 var702)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getBeginToken()>() 
(assert true)
(define-const var481 String (getEndToken/405649484 var702)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getEndToken()>() 
(assert true)
(define-const var3736 Int (indexOf/-1209756239 var678 var3270)) ; Statement: i7 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var135 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
 ; Statement: if i7 <= $i15 goto return r3 
(assert (<= var3736 var135)) ; Cond: i7 <= $i15 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getBeginToken/-1587000614=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet], java.lang.String), getEndToken/405649484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var770=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet, var702=r0, var678=r3, var3510=null_type, var3270=r1, var481=r2, var3736=i7, var135=$i15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet=var770, r0=var702, r3=var678, null_type=var3510, r1=var3270, r2=var481, i7=var3736, $i15=var135}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet;	r3 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getBeginToken()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.FilterSet: java.lang.String getEndToken()>();	i7 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i15 = (int) -1;	if i7 <= $i15 goto return r3;	return r3
;block_num 2