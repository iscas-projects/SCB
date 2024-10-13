(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort var1758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1758_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1073 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1073 null-String)))
(declare-const var3584 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3584 null-Int)))
(define-const var3676 Bool (var1758_isEmpty/1595667738 (cast-from-String-to-String var1073))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0) 
(assert (= (ite var3676 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2281 Int (lastIndexOf/-1292097097 var1073 var3584)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0) 
(define-const var1103 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i1 == $i6 goto return "" 
(assert (not (= var2281 var1103))) ; Negate: Cond: i1 == $i6  
(assert true)
(define-const var2159 Int (length/-134980193 var1073)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1409 Int (- var2159 1)) ; Statement: $i3 = $i2 - 1 
 ; Statement: if i1 != $i3 goto $i4 = i1 + 1 
(assert (not (= var2281 var1409))) ; Cond: i1 != $i3 
(define-const var2240 Int (+ var2281 1)) ; Statement: $i4 = i1 + 1 
(assert (and true (and (>= var2240 0) (>= (str.len var1073) var2240))))
(define-const var1892 String (substring/850833817 var1073 var2240)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i4) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1758_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1073=r0, var889=null_type, var3584=i0, var1758=org.apache.commons.lang3.StringUtils, var3676=$z0, var2281=i1, var1103=$i6, var2159=$i2, var1409=$i3, var2240=$i4, var1892=$r1}
; {r0=var1073, null_type=var889, i0=var3584, org.apache.commons.lang3.StringUtils=var1758, $z0=var3676, i1=var2281, $i6=var1103, $i2=var2159, $i3=var1409, $i4=var2240, $r1=var1892}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0);	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(i0);	$i6 = (int) -1;	if i1 == $i6 goto return "";	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 1;	if i1 != $i3 goto $i4 = i1 + 1;	$i4 = i1 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i4);	return $r1
;block_num 4