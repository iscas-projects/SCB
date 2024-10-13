(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3388 0)
(declare-sort var1104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1104_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1104_startsWith/-1523570395 (String String) Bool)
(declare-fun var1104_endsWith/932405132 (String String) Bool)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2 null-String)))
(declare-const var620 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var620 null-String)))
(define-const var1722 Bool (var1104_isEmpty/1595667738 (cast-from-String-to-String var2))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1722 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2118 Bool (var1104_isEmpty/1595667738 (cast-from-String-to-String var620))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 != 0 goto return r0 
(assert (not (not (= (ite var2118 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var105 Int (length/-134980193 var2)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2043 Int (length/-134980193 var620)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1382 Int (* 2 var2043)) ; Statement: $i1 = 2 * $i0 
 ; Statement: if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
(assert (>= var105 var1382)) ; Cond: $i2 >= $i1 
(define-const var2435 Bool (var1104_startsWith/-1523570395 (cast-from-String-to-String var2) (cast-from-String-to-String var620))) ; Statement: $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
 ; Statement: if $z2 == 0 goto return r0 
(assert (not (= (ite var2435 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var891 Bool (var1104_endsWith/932405132 (cast-from-String-to-String var2) (cast-from-String-to-String var620))) ; Statement: $z3 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean endsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
 ; Statement: if $z3 == 0 goto return r0 
(assert (not (= (ite var891 1 0) 0))) ; Negate: Cond: $z3 == 0  
(assert true)
(define-const var3805 Int (length/-134980193 var620)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var3587 Int (lastIndexOf/-618837785 var2 var620)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1) 
(assert (not (and true (and (>= var3805 0) (>= (str.len var2) var3587) (>= var3587 var3805)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1104_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var1104_startsWith/-1523570395=([java.lang.CharSequence, java.lang.CharSequence], boolean), var1104_endsWith/932405132=([java.lang.CharSequence, java.lang.CharSequence], boolean), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2=r0, var3388=null_type, var620=r1, var1104=org.apache.commons.lang3.StringUtils, var1722=$z0, var2118=$z1, var105=$i2, var2043=$i0, var1382=$i1, var2435=$z2, var891=$z3, var3805=$i4, var3587=$i3, var668=$r2}
; {r0=var2, null_type=var3388, r1=var620, org.apache.commons.lang3.StringUtils=var1104, $z0=var1722, $z1=var2118, $i2=var105, $i0=var2043, $i1=var1382, $z2=var2435, $z3=var891, $i4=var3805, $i3=var3587, $r2=var668}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 != 0 goto return r0;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 2 * $i0;	if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	$z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	if $z2 == 0 goto return r0;	$z3 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean endsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	if $z3 == 0 goto return r0;	$i4 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i4, $i3);	return $r2
;block_num 6