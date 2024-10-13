(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun indexOf/-1077578550 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1658 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1658 null-String)))
(define-const var1643 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1643 var1658)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var1643!1 String)
(assert (= var1643!1 var1658))
(assert true)
(define-const var496 Int (indexOf/-1077578550 var1643!1 "-")) ; Statement: i2 = virtualinvoke $r3.<java.lang.StringBuilder: int indexOf(java.lang.String)>("-") 
(assert true) ; Non Conditional
(define-const var2559 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i2 == $i4 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var496 var2559)) ; Cond: i2 == $i4 
(assert true)
(define-const var1857 String (toString/-2075883882 var1643!1)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), indexOf/-1077578550=([java.lang.StringBuilder, java.lang.String], int), cast-from-Int-to-Int=([int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1658=r1, var1974=null_type, var1643=$r3, var496=i2, var2559=$i4, var1857=$r2}
; {r1=var1658, null_type=var1974, $r3=var1643, i2=var496, $i4=var2559, $r2=var1857}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	i2 = virtualinvoke $r3.<java.lang.StringBuilder: int indexOf(java.lang.String)>("-");	$i4 = (int) -1;	if i2 == $i4 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3