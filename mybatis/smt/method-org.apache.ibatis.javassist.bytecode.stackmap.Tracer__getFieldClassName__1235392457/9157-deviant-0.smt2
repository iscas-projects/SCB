(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var34 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1811 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1811 null-String)))
(declare-const var2385 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2385 null-Int)))
(define-const var2417 Int (+ var2385 1)) ; Statement: $i3 = i0 + 1 
(assert true)
(define-const var2748 Int (length/-134980193 var1811)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2134 Int (- var2748 1)) ; Statement: $i2 = $i1 - 1 
(assert (not (and true (and (>= var2417 0) (>= (str.len var1811) var2134) (>= var2134 var2417)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1811=r0, var34=null_type, var2385=i0, var2417=$i3, var2748=$i1, var2134=$i2, var1998=$r1, var1055=$r2}
; {r0=var1811, null_type=var34, i0=var2385, $i3=var2417, $i1=var2748, $i2=var2134, $r1=var1998, $r2=var1055}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i3 = i0 + 1;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i3, $i2);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	return $r2
;block_num 1