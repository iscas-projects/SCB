(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var797 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var797 null-Int)))
(declare-const var3107 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3107 null-Int)))
(define-const var1809 Int 73) ; Statement: c2 = 73 
 ; Statement: lookupswitch(i0) {     case 301: goto c2 = 90;     case 303: goto c2 = 66;     case 306: goto c2 = 67;     case 312: goto c2 = 68;     case 317: goto c2 = 70;     case 324: goto c2 = 73;     case 326: goto c2 = 74;     case 334: goto c2 = 83;     case 344: goto c2 = 86;     default: goto $r2 = new java.lang.StringBuilder; } 
(assert (and (not (= var797 344)) (and (not (= var797 334)) (and (not (= var797 326)) (and (not (= var797 324)) (and (not (= var797 317)) (and (not (= var797 312)) (and (not (= var797 306)) (and (not (= var797 303)) (and (not (= var797 301)) true)))))))))) ; Intersect: Negate: Cond: i0 == 344   and Intersect: Negate: Cond: i0 == 334   and Intersect: Negate: Cond: i0 == 326   and Intersect: Negate: Cond: i0 == 324   and Intersect: Negate: Cond: i0 == 317   and Intersect: Negate: Cond: i0 == 312   and Intersect: Negate: Cond: i0 == 306   and Intersect: Negate: Cond: i0 == 303   and Intersect: Negate: Cond: i0 == 301   and Non Conditional         
(define-const var3370 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3370)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3370!1 String)
(assert (= var3370!1 ""))
(assert true) ; Non Conditional
(define-const var3514 Int var3107) ; Statement: $i3 = i1 
(define-const var2426 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(define-const var3107!1 Int (+ var3107 var2426)) ; Statement: i1 = i1 + $i5 
 ; Statement: if $i3 <= 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(assert (<= var3514 0)) ; Cond: $i3 <= 0 
(assert true)
;(assert (append/-1166366385 var3370!1 var1809)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(declare-const var3370!2 String)
(assert (str.prefixof var3370!1 var3370!2))
(assert true)
(define-const var3170 String (toString/-2075883882 var3370!2)) ; Statement: $r0 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-Int-to-Int=([int], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var797=i0, var3107=i1, var1809=c2, var3370=$r2, var3514=$i3, var2426=$i5, var3170=$r0}
; {i0=var797, i1=var3107, c2=var1809, $r2=var3370, $i3=var3514, $i5=var2426, $r0=var3170}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	c2 = 73;	lookupswitch(i0) {     case 301: goto c2 = 90;     case 303: goto c2 = 66;     case 306: goto c2 = 67;     case 312: goto c2 = 68;     case 317: goto c2 = 70;     case 324: goto c2 = 73;     case 326: goto c2 = 74;     case 334: goto c2 = 83;     case 344: goto c2 = 86;     default: goto $r2 = new java.lang.StringBuilder; };	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$i3 = i1;	$i5 = (int) -1;	i1 = i1 + $i5;	if $i3 <= 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	$r0 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r0
;block_num 4