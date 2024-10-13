(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1793 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1793 null-String)))
(assert true)
(define-const var165 Int (lastIndexOf/-1292097097 var1793 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(assert true)
(define-const var2772 Int (length/-134980193 var1793)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2288 Int (- var2772 1)) ; Statement: $i1 = i4 - 1 
(assert (and true (and (> (str.len var1793) var2288) (<= 0 var2288))))
(define-const var3917 Int (charAt/698050440 var1793 var2288)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1) 
(define-const var1801 Int (cast-from-Int-to-Int var3917)) ; Statement: $i5 = (int) $c2 
 ; Statement: if $i5 != 59 goto $i9 = (int) -1 
(assert (not (= var1801 59))) ; Cond: $i5 != 59 
(define-const var1479 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $i3 = i0 + 1 
(assert (not (= var165 var1479))) ; Cond: i0 != $i9 
(define-const var435 Int (+ var165 1)) ; Statement: $i3 = i0 + 1 
(assert (and true (and (>= var435 0) (>= (str.len var1793) var2772) (>= var2772 var435))))
(define-const var1127 String (substring/-1240304868 var1793 var435 var2772)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i3, i4) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1793=r0, var1550=null_type, var165=i0, var2772=i4, var2288=$i1, var3917=$c2, var1801=$i5, var1479=$i9, var435=$i3, var1127=$r1}
; {r0=var1793, null_type=var1550, i0=var165, i4=var2772, $i1=var2288, $c2=var3917, $i5=var1801, $i9=var1479, $i3=var435, $r1=var1127}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	i4 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = i4 - 1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1);	$i5 = (int) $c2;	if $i5 != 59 goto $i9 = (int) -1;	$i9 = (int) -1;	if i0 != $i9 goto $i3 = i0 + 1;	$i3 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i3, i4);	return $r1
;block_num 4