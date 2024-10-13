(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3052 0)
(declare-sort var1917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun to/-347182536 (var1917 var1917 String) String)
(declare-const null-String String)
(declare-const var1917-UPPER_UNDERSCORE var1917)
(declare-const var1917-LOWER_CAMEL var1917)
(declare-const var2471 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2471 null-String)))
(assert true)
(define-const var1520 Int (length/-134980193 var2471)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i1 <= 0 goto $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (<= var1520 0)) ; Cond: i1 <= 0 
(assert true)
(define-const var3282 Int (length/-134980193 var2471)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 != $i4 goto $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE> 
(assert (not (not (= var1520 var3282)))) ; Negate: Cond: i1 != $i4  
(define-const var22 var1917 var1917-UPPER_UNDERSCORE) ; Statement: $r8 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE> 
(define-const var1948 var1917 var1917-LOWER_CAMEL) ; Statement: $r7 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_CAMEL> 
(assert true)
(define-const var140 String (to/-347182536 var22 var1948 var2471)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: java.lang.String 'to'(com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat,java.lang.String)>($r7, r0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), to/-347182536=([com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, java.lang.String], java.lang.String)}
; {var2471=r0, var3052=null_type, var1520=i1, var3282=$i4, var1917=com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat, var22=$r8, var1948=$r7, var140=$r9}
; {r0=var2471, null_type=var3052, i1=var1520, $i4=var3282, com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat=var1917, $r8=var22, $r7=var1948, $r9=var140}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 <= 0 goto $i4 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 != $i4 goto $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE>;	$r8 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat UPPER_UNDERSCORE>;	$r7 = <com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat LOWER_CAMEL>;	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat: java.lang.String 'to'(com.google.javascript.jscomp.jarjar.com.google.common.base.CaseFormat,java.lang.String)>($r7, r0);	return $r9
;block_num 4