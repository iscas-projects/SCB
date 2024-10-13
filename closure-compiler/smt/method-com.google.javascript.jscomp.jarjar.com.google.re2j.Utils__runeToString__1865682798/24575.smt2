(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun var2286_toChars/-1738819595 (Int) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-Int Int)
(declare-const var732 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var732 null-Int)))
(define-const var1838 Int (cast-from-Int-to-Int var732)) ; Statement: c1 = (char) i0 
(define-const var1386 Int (cast-from-Int-to-Int var1838)) ; Statement: $i2 = (int) c1 
 ; Statement: if i0 != $i2 goto $r2 = new java.lang.String 
(assert (not (= var732 var1386))) ; Cond: i0 != $i2 
(define-const var1591 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var2978 String var1591) ; Statement: $r1 = $r2 
(define-const var749 Int (cast-from-Int-to-Int var1838)) ; Statement: $i3 = (int) c1 
(define-const var1106 (Array Int Int) (var2286_toChars/-1738819595 var749)) ; Statement: $r0 = staticinvoke <java.lang.Character: char[] toChars(int)>($i3) 
(assert true)
;(assert (<init>/-915723298 var1591 var1106)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>($r0) 

(declare-const var1591!1 String)
(declare-const var1106!1 (Array Int Int))
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), String-init=([], java.lang.String), var2286_toChars/-1738819595=([int], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var732=i0, var1838=c1, var1386=$i2, var1591=$r2, var2978=$r1, var749=$i3, var2286=java.lang.Character, var1106=$r0}
; {i0=var732, c1=var1838, $i2=var1386, $r2=var1591, $r1=var2978, $i3=var749, java.lang.Character=var2286, $r0=var1106}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts i0 := @parameter0: int;	c1 = (char) i0;	$i2 = (int) c1;	if i0 != $i2 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	$r1 = $r2;	$i3 = (int) c1;	$r0 = staticinvoke <java.lang.Character: char[] toChars(int)>($i3);	specialinvoke $r2.<java.lang.String: void <init>(char[])>($r0);	return $r1
;block_num 3