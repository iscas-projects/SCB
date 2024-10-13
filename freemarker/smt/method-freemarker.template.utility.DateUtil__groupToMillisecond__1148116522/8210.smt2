(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2734 0)
(declare-sort var3865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3865_groupToInt/-279273435 (String String Int Int) Int)
(declare-const null-String String)
(declare-const var3832 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3832 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3832 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2784 Int (length/-134980193 var3832)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 3 goto $i3 = staticinvoke <freemarker.template.utility.DateUtil: int groupToInt(java.lang.String,java.lang.String,int,int)>(r0, "partial-seconds", 0, 2147483647) 
(assert (<= var2784 3)) ; Cond: $i0 <= 3 
(define-const var2631 Int (var3865_groupToInt/-279273435 var3832 "partial-seconds" 0 2147483647)) ; Statement: $i3 = staticinvoke <freemarker.template.utility.DateUtil: int groupToInt(java.lang.String,java.lang.String,int,int)>(r0, "partial-seconds", 0, 2147483647) 
(assert true)
(define-const var1277 Int (length/-134980193 var3832)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= var1277 1)))) ; Negate: Cond: $i1 != 1  
(define-const var1947 Int (* var2631 100)) ; Statement: $i4 = $i3 * 100 
 ; Statement: goto [?= return $i4] 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3865_groupToInt/-279273435=([java.lang.String, java.lang.String, int, int], int)}
; {var3832=r0, var2734=null_type, var2784=$i0, var3865=freemarker.template.utility.DateUtil, var2631=$i3, var1277=$i1, var1947=$i4}
; {r0=var3832, null_type=var2734, $i0=var2784, freemarker.template.utility.DateUtil=var3865, $i3=var2631, $i1=var1277, $i4=var1947}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 3 goto $i3 = staticinvoke <freemarker.template.utility.DateUtil: int groupToInt(java.lang.String,java.lang.String,int,int)>(r0, "partial-seconds", 0, 2147483647);	$i3 = staticinvoke <freemarker.template.utility.DateUtil: int groupToInt(java.lang.String,java.lang.String,int,int)>(r0, "partial-seconds", 0, 2147483647);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 != 1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 * 100;	goto [?= return $i4];	return $i4
;block_num 5