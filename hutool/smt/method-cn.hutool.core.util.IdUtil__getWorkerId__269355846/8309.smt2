(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hashCode/-467973558 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-Int Int)
(declare-const null-var3634 var3634)
(declare-const var3737 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3737 null-Int)))
(declare-const var3281 Int) ; Statement: l4 := @parameter1: long 
(assert (not (= var3281 null-Int)))
(define-const var3957 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3957)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3957!1 String)
(assert (= var3957!1 ""))
(assert true)
;(assert (append/-901862667 var3957!1 var3737)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var3957!2 String)
(assert (str.prefixof var3957!1 var3957!2))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var573 var3634) ; Statement: $r2 := @caughtexception 
(assert (not (= var573 null-var3634)))
(assert true) ; Non Conditional
(assert true)
(define-const var2094 String (toString/-2075883882 var3957!2)) ; Statement: $r1 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1629 Int (hashCode/-467973558 var2094)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3477 Int (cast-from-Int-to-Int 65535)) ; Statement: $i9 = (int) 65535 
(define-const var1105 Int (bv2nat (bvand ((_ int2bv 64) var1629) ((_ int2bv 64) var3477)))) ; Statement: $i3 = $i2 & $i9 
(define-const var642 Int (cast-from-Int-to-Int var1105)) ; Statement: $l6 = (long) $i3 
(define-const var904 Int (+ var3281 1)) ; Statement: $l5 = l4 + 1L 
(define-const var1528 Int (mod var642 var904)) ; Statement: $l7 = $l6 % $l5 
 ; Statement: return $l7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hashCode/-467973558=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3737=l0, var3281=l4, var3957=$r3, var3634=cn.hutool.core.exceptions.UtilException, var573=$r2, var2094=$r1, var1629=$i2, var3477=$i9, var1105=$i3, var642=$l6, var904=$l5, var1528=$l7}
; {l0=var3737, l4=var3281, $r3=var3957, cn.hutool.core.exceptions.UtilException=var3634, $r2=var573, $r1=var2094, $i2=var1629, $i9=var3477, $i3=var1105, $l6=var642, $l5=var904, $l7=var1528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts l0 := @parameter0: long;	l4 := @parameter1: long;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r2 := @caughtexception;	$r1 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i9 = (int) 65535;	$i3 = $i2 & $i9;	$l6 = (long) $i3;	$l5 = l4 + 1L;	$l7 = $l6 % $l5;	return $l7
;block_num 3