(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2270 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2270 null-Int)))
(declare-const var629 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var629 null-Int)))
(define-const var73 Int (cast-from-Int-to-Int var2270)) ; Statement: $i6 = (int) c0 
 ; Statement: if $i6 < 32 goto $r4 = new java.lang.String 
(assert (< var73 32)) ; Cond: $i6 < 32 
(define-const var933 String String-init) ; Statement: $r4 = new java.lang.String 
(define-const var1621 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (char)[2] 
(declare-const var1621!1 (Array Int Int))
(assert (not (= var1621!1 null-__Array__Int__Int__)))
(assert (= (select var1621!1 0) var2270)) ; Statement: $r3[0] = c0 
(declare-const var1621!2 (Array Int Int))
(assert (not (= var1621!2 null-__Array__Int__Int__)))
(assert (= (select var1621!2 1) var629)) ; Statement: $r3[1] = c1 
(assert true)
;(assert (<init>/-915723298 var933 var1621!2)) ; Statement: specialinvoke $r4.<java.lang.String: void <init>(char[])>($r3) 

(declare-const var933!1 String)
(declare-const var1621!3 (Array Int Int))
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), arr-Int-init=([], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2270=c0, var629=c1, var73=$i6, var933=$r4, var1621=$r3}
; {c0=var2270, c1=var629, $i6=var73, $r4=var933, $r3=var1621}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts c0 := @parameter0: char;	c1 := @parameter1: char;	$i6 = (int) c0;	if $i6 < 32 goto $r4 = new java.lang.String;	$r4 = new java.lang.String;	$r3 = newarray (char)[2];	$r3[0] = c0;	$r3[1] = c1;	specialinvoke $r4.<java.lang.String: void <init>(char[])>($r3);	return $r4
;block_num 2