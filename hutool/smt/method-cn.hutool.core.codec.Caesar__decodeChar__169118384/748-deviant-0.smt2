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
(declare-const var1992 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1992 null-Int)))
(declare-const var2440 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2440 null-Int)))
(define-const var3376 String "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz") ; Statement: $r0 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz" 
(define-const var2611 Int (cast-from-Int-to-Int var1992)) ; Statement: $i6 = (int) c0 
(assert true)
(define-const var2910 Int (indexOf/-1037706067 var3376 var2611)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i6) 
(define-const var1827 Int (- var2910 var2440)) ; Statement: $i3 = $i2 - i1 
(define-const var1241 Int (mod var1827 52)) ; Statement: i5 = $i3 % 52 
 ; Statement: if i5 >= 0 goto $r1 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz" 
(assert (>= var1241 0)) ; Cond: i5 >= 0 
(define-const var1764 String "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz") ; Statement: $r1 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz" 
(assert (not (and true (and (> (str.len var1764) var1241) (<= 0 var1241)))))
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), charAt/698050440=([java.lang.String, int], char)}
; {var1992=c0, var2440=i1, var3376=$r0, var2611=$i6, var2910=$i2, var1827=$i3, var1241=i5, var1764=$r1, var261=$c4}
; {c0=var1992, i1=var2440, $r0=var3376, $i6=var2611, $i2=var2910, $i3=var1827, i5=var1241, $r1=var1764, $c4=var261}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts c0 := @parameter0: char;	i1 := @parameter1: int;	$r0 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";	$i6 = (int) c0;	$i2 = virtualinvoke $r0.<java.lang.String: int indexOf(int)>($i6);	$i3 = $i2 - i1;	i5 = $i3 % 52;	if i5 >= 0 goto $r1 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";	$r1 = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";	$c4 = virtualinvoke $r1.<java.lang.String: char charAt(int)>(i5);	return $c4
;block_num 2