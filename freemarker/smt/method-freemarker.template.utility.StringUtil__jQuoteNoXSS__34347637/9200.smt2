(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3672 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3672 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3672 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3734 Int (length/-134980193 var3672)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1075 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var3319 Int (+ var3734 6)) ; Statement: $i1 = i0 + 6 
(assert true)
;(assert (<init>/543593434 var1075 var3319)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1075!1 String)
(declare-const var3319!1 Int)
(assert true)
;(assert (append/-1166366385 var1075!1 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1075!2 String)
(assert (str.prefixof var1075!1 var1075!2))
(define-const var1823 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (not (>= var1823 var3734))) ; Negate: Cond: i7 >= i0  
(assert (and true (and (> (str.len var3672) var1823) (<= 0 var1823))))
(define-const var3418 Int (charAt/698050440 var3672 var1823)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7) 
(define-const var434 Int (cast-from-Int-to-Int var3418)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 != 34 goto $i9 = (int) c2 
(assert (not (not (= var434 34)))) ; Negate: Cond: $i8 != 34  
(assert true)
;(assert (append/672562846 var1075!2 "\u005c\u0022")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"") 
(declare-const var1075!3 String)
(assert (= var1075!3 (str.++ var1075!2 "\u005c\u0022")))
 ; Statement: goto [?= i7 = i7 + 1] 
(assert true) ; Non Conditional
(define-const var1823!1 Int (+ var1823 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (not (>= var1823!1 var3734))) ; Negate: Cond: i7 >= i0  
(assert (and true (and (> (str.len var3672) var1823!1) (<= 0 var1823!1))))
(define-const var3418!1 Int (charAt/698050440 var3672 var1823!1)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7) 
(define-const var434!1 Int (cast-from-Int-to-Int var3418!1)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 != 34 goto $i9 = (int) c2 
(assert (not (= var434!1 34))) ; Cond: $i8 != 34 
(define-const var1553 Int (cast-from-Int-to-Int var3418!1)) ; Statement: $i9 = (int) c2 
 ; Statement: if $i9 != 92 goto $i10 = (int) c2 
(assert (not (not (= var1553 92)))) ; Negate: Cond: $i9 != 92  
(assert true)
;(assert (append/672562846 var1075!3 "\u005c\u005c")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\") 
(declare-const var1075!4 String)
(assert (= var1075!4 (str.++ var1075!3 "\u005c\u005c")))
 ; Statement: goto [?= i7 = i7 + 1] 
(assert true) ; Non Conditional
(define-const var1823!2 Int (+ var1823!1 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var1823!2 var3734)) ; Cond: i7 >= i0 
(assert true)
;(assert (append/-1166366385 var1075!4 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1075!5 String)
(assert (str.prefixof var1075!4 var1075!5))
(assert true)
(define-const var2690 String (toString/-2075883882 var1075!5)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3672=r0, var125=null_type, var3734=i0, var1075=$r3, var3319=$i1, var1823=i7, var3418=c2, var434=$i8, var1553=$i9, var2690=$r2}
; {r0=var3672, null_type=var125, i0=var3734, $r3=var1075, $i1=var3319, i7=var1823, c2=var3418, $i8=var434, $i9=var1553, $r2=var2690}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: char charAt(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 + 6;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i7 = 0;	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$i8 = (int) c2;	if $i8 != 34 goto $i9 = (int) c2;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i7 = i7 + 1];	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$i8 = (int) c2;	if $i8 != 34 goto $i9 = (int) c2;	$i9 = (int) c2;	if $i9 != 92 goto $i10 = (int) c2;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\");	goto [?= i7 = i7 + 1];	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 13