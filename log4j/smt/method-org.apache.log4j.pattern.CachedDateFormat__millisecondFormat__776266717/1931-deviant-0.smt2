(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun setCharAt/205981514 (String Int Int) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1795 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1795 null-Int)))
(declare-const var2055 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var2055 null-String)))
(declare-const var600 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var600 null-Int)))
(define-const var1170 String "0123456789") ; Statement: $r1 = "0123456789" 
(define-const var299 Int (div var1795 100)) ; Statement: $i2 = i1 / 100 
(assert (not (and true (and (> (str.len var1170) var299) (<= 0 var299)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), setCharAt/205981514=([java.lang.StringBuffer, int, char], void)}
; {var1795=i1, var2055=r0, var600=i0, var1170=$r1, var299=$i2, var1512=$c3, var765=$i7, var542=$r2, var1842=$i4, var42=$i5, var2178=$c6, var2341=$i10, var2886=$r3, var1489=$i8, var1731=$c9}
; {i1=var1795, r0=var2055, i0=var600, $r1=var1170, $i2=var299, $c3=var1512, $i7=var765, $r2=var542, $i4=var1842, $i5=var42, $c6=var2178, $i10=var2341, $r3=var2886, $i8=var1489, $c9=var1731}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuffer: void setCharAt(int,char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuffer: void setCharAt(int,char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuffer: void setCharAt(int,char)>
;cnt {"<java.lang.String: char charAt(int)>": 3,"<java.lang.StringBuffer: void setCharAt(int,char)>": 3}
;stmts i1 := @parameter0: int;	r0 := @parameter1: java.lang.StringBuffer;	i0 := @parameter2: int;	$r1 = "0123456789";	$i2 = i1 / 100;	$c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	virtualinvoke r0.<java.lang.StringBuffer: void setCharAt(int,char)>(i0, $c3);	$i7 = i0 + 1;	$r2 = "0123456789";	$i4 = i1 / 10;	$i5 = $i4 % 10;	$c6 = virtualinvoke $r2.<java.lang.String: char charAt(int)>($i5);	virtualinvoke r0.<java.lang.StringBuffer: void setCharAt(int,char)>($i7, $c6);	$i10 = i0 + 2;	$r3 = "0123456789";	$i8 = i1 % 10;	$c9 = virtualinvoke $r3.<java.lang.String: char charAt(int)>($i8);	virtualinvoke r0.<java.lang.StringBuffer: void setCharAt(int,char)>($i10, $c9);	return
;block_num 1