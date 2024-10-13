(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3196_fill/1918582986 ((Array Int Int) Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var3624 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var3624 null-Int)))
(declare-const var2061 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2061 null-Int)))
 ; Statement: if i0 > 0 goto r0 = newarray (char)[i0] 
(assert (> var2061 0)) ; Cond: i0 > 0 
(define-const var2282 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[i0] 
;(assert (var3196_fill/1918582986 var2282 var3624)) ; Statement: staticinvoke <java.util.Arrays: void fill(char[],char)>(r0, c1) 

(declare-const var2282!1 (Array Int Int))
(declare-const var3624!1 Int)
(define-const var2867 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var2867 var2282!1)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0) 

(declare-const var2867!1 String)
(declare-const var2282!2 (Array Int Int))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), var3196_fill/1918582986=([char[], char], void), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var3624=c1, var2061=i0, var2282=r0, var3196=java.util.Arrays, var2867=$r1}
; {c1=var3624, i0=var2061, r0=var2282, java.util.Arrays=var3196, $r1=var2867}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts c1 := @parameter0: char;	i0 := @parameter1: int;	if i0 > 0 goto r0 = newarray (char)[i0];	r0 = newarray (char)[i0];	staticinvoke <java.util.Arrays: void fill(char[],char)>(r0, c1);	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[])>(r0);	return $r1
;block_num 2