(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var896 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var896 null-String)))
(define-const var196 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var196)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var196!1 String)
(assert (= var196!1 ""))
(define-const var3386 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3022 Int (length/-134980193 var896)) ; Statement: $i5 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i5 goto $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3386 var3022)) ; Cond: i4 >= $i5 
(assert true)
(define-const var1013 String (toString/-2075883882 var196!1)) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var896=r1, var3368=null_type, var196=$r6, var3386=i4, var3022=$i5, var1013=$r2}
; {r1=var896, null_type=var3368, $r6=var196, i4=var3386, $i5=var3022, $r2=var1013}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	i4 = 0;	$i5 = virtualinvoke r1.<java.lang.String: int length()>();	if i4 >= $i5 goto $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3