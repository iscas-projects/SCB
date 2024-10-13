(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2586 0)
(declare-sort var3445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun p/-1870102386 (var2586) Int)
(declare-fun ln/-1870102386 (var2586) Int)
(declare-fun src/-1870102386 (var2586) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2586 var2586)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var842 var2586) ; Statement: r0 := @this: freemarker.core.JSONParser 
(assert (not (= var842 null-var2586)))
(declare-const var1592 Int) ; Statement: c4 := @parameter0: char 
(assert (not (= var1592 null-Int)))
(declare-const var1604 Int) ; Statement: c7 := @parameter1: char 
(assert (not (= var1604 null-Int)))
(declare-const var2439 String) ; Statement: r20 := @parameter2: java.lang.String 
(assert (not (= var2439 null-String)))
(declare-const var2684 Int) ; Statement: i8 := @parameter3: int 
(assert (not (= var2684 null-Int)))
(define-const var3369 Int (p/-1870102386 var842)) ; Statement: $i1 = r0.<freemarker.core.JSONParser: int p> 
(define-const var1589 Int (ln/-1870102386 var842)) ; Statement: $i0 = r0.<freemarker.core.JSONParser: int ln> 
 ; Statement: if $i1 < $i0 goto $r1 = r0.<freemarker.core.JSONParser: java.lang.String src> 
(assert (< var3369 var1589)) ; Cond: $i1 < $i0 
(define-const var469 String (src/-1870102386 var842)) ; Statement: $r1 = r0.<freemarker.core.JSONParser: java.lang.String src> 
(define-const var1579 Int (p/-1870102386 var842)) ; Statement: $i2 = r0.<freemarker.core.JSONParser: int p> 
(assert (and true (and (> (str.len var469) var1579) (<= 0 var1579))))
(define-const var618 Int (charAt/698050440 var469 var1579)) ; Statement: c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2) 
(define-const var2600 Int (cast-from-Int-to-Int var618)) ; Statement: $i12 = (int) c3 
(define-const var561 Int (cast-from-Int-to-Int var1592)) ; Statement: $i13 = (int) c4 
 ; Statement: if $i12 == $i13 goto $i5 = r0.<freemarker.core.JSONParser: int p> 
(assert (= var2600 var561)) ; Cond: $i12 == $i13 
(define-const var1295 Int (p/-1870102386 var842)) ; Statement: $i5 = r0.<freemarker.core.JSONParser: int p> 
(define-const var212 Int (+ var1295 1)) ; Statement: $i6 = $i5 + 1 
(declare-const var842!1 var2586)
(assert (not (= var842!1 null-var2586)))
(assert (= (p/-1870102386 var842!1) var212)) ; Statement: r0.<freemarker.core.JSONParser: int p> = $i6 
 ; Statement: return c3 
(check-sat)
(get-model)
(get-unsat-core)
; {p/-1870102386=([freemarker.core.JSONParser], int), ln/-1870102386=([freemarker.core.JSONParser], int), src/-1870102386=([freemarker.core.JSONParser], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var2586=freemarker.core.JSONParser, var842=r0, var1592=c4, var1604=c7, var2439=r20, var3445=null_type, var2684=i8, var3369=$i1, var1589=$i0, var469=$r1, var1579=$i2, var618=c3, var2600=$i12, var561=$i13, var1295=$i5, var212=$i6}
; {freemarker.core.JSONParser=var2586, r0=var842, c4=var1592, c7=var1604, r20=var2439, null_type=var3445, i8=var2684, $i1=var3369, $i0=var1589, $r1=var469, $i2=var1579, c3=var618, $i12=var2600, $i13=var561, $i5=var1295, $i6=var212}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: freemarker.core.JSONParser;	c4 := @parameter0: char;	c7 := @parameter1: char;	r20 := @parameter2: java.lang.String;	i8 := @parameter3: int;	$i1 = r0.<freemarker.core.JSONParser: int p>;	$i0 = r0.<freemarker.core.JSONParser: int ln>;	if $i1 < $i0 goto $r1 = r0.<freemarker.core.JSONParser: java.lang.String src>;	$r1 = r0.<freemarker.core.JSONParser: java.lang.String src>;	$i2 = r0.<freemarker.core.JSONParser: int p>;	c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	$i12 = (int) c3;	$i13 = (int) c4;	if $i12 == $i13 goto $i5 = r0.<freemarker.core.JSONParser: int p>;	$i5 = r0.<freemarker.core.JSONParser: int p>;	$i6 = $i5 + 1;	r0.<freemarker.core.JSONParser: int p> = $i6;	return c3
;block_num 3