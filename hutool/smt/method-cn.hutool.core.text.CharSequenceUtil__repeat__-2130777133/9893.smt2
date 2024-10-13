(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1924_fill/1918582986 ((Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var1865 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var1865 null-Int)))
(declare-const var1193 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1193 null-Int)))
 ; Statement: if i0 > 0 goto r0 = newarray (char)[i0] 
(assert (> var1193 0)) ; Cond: i0 > 0 
(define-const var543 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[i0] 
;(assert (var1924_fill/1918582986 var543 var1865)) ; Statement: staticinvoke <java.util.Arrays: void fill(char[],char)>(r0, c1) 

(declare-const var543!1 (Array Int Int))
(declare-const var1865!1 Int)
(define-const var1695 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1695 var543!1)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var1695!1 String)
(declare-const var543!2 (Array Int Int))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), var1924_fill/1918582986=([char[], char], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1865=c1, var1193=i0, var543=r0, var1924=java.util.Arrays, var1695=$r1}
; {c1=var1865, i0=var1193, r0=var543, java.util.Arrays=var1924, $r1=var1695}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts c1 := @parameter0: char;	i0 := @parameter1: int;	if i0 > 0 goto r0 = newarray (char)[i0];	r0 = newarray (char)[i0];	staticinvoke <java.util.Arrays: void fill(char[],char)>(r0, c1);	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0);	return $r1
;block_num 2