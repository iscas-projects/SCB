(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var2793_fill/1918582986 ((Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var2720 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var2720 null-Int)))
(declare-const var1278 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1278 null-Int)))
(define-const var3798 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[i0] 
;(assert (var2793_fill/1918582986 var3798 var2720)) ; Statement: staticinvoke <java.util.Arrays: void fill(char[],char)>(r0, c1) 

(declare-const var3798!1 (Array Int Int))
(declare-const var2720!1 Int)
(define-const var3092 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3092 var3798!1)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var3092!1 String)
(declare-const var3798!2 (Array Int Int))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), var2793_fill/1918582986=([char[], char], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2720=c1, var1278=i0, var3798=r0, var2793=java.util.Arrays, var3092=$r1}
; {c1=var2720, i0=var1278, r0=var3798, java.util.Arrays=var2793, $r1=var3092}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts c1 := @parameter0: char;	i0 := @parameter1: int;	r0 = newarray (char)[i0];	staticinvoke <java.util.Arrays: void fill(char[],char)>(r0, c1);	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0);	return $r1
;block_num 1