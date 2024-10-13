(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-Int Int)
(declare-const var1259 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1259 null-Int)))
(declare-const var1313 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1313 null-Int)))
(define-const var1551 String "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz") ; Statement: $r0 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz" 
(define-const var911 Int (cast-from-Int-to-Int var1259)) ; Statement: $i6 = (int) c0 
(assert true)
(define-const var999 Int (indexOf/-1037706067 var1551 var911)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i6) 
(define-const var2642 Int (+ var999 var1313)) ; Statement: $i3 = $i2 + i1 
(define-const var3663 Int (mod var2642 52)) ; Statement: i4 = $i3 % 52 
(define-const var1837 String "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz") ; Statement: $r1 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz" 
(assert (not (and true (and (> (str.len var1837) var3663) (<= 0 var3663)))))
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), charAt/698050440=([java.lang.String, int], char)}
; {var1259=c0, var1313=i1, var1551=$r0, var911=$i6, var999=$i2, var2642=$i3, var3663=i4, var1837=$r1, var3812=$c5}
; {c0=var1259, i1=var1313, $r0=var1551, $i6=var911, $i2=var999, $i3=var2642, i4=var3663, $r1=var1837, $c5=var3812}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts c0 := @parameter0: char;	i1 := @parameter1: int;	$r0 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";	$i6 = (int) c0;	$i2 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i6);	$i3 = $i2 + i1;	i4 = $i3 % 52;	$r1 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";	$c5 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i4);	return $c5
;block_num 1