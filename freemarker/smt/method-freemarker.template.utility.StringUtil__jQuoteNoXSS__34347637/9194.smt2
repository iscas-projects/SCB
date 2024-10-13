(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1148 0)
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
(declare-const var3839 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3839 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3839 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3610 Int (length/-134980193 var3839)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3981 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var2274 Int (+ var3610 6)) ; Statement: $i1 = i0 + 6 
(assert true)
;(assert (<init>/543593434 var3981 var2274)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3981!1 String)
(declare-const var2274!1 Int)
(assert true)
;(assert (append/-1166366385 var3981!1 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3981!2 String)
(assert (str.prefixof var3981!1 var3981!2))
(define-const var3521 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (not (>= var3521 var3610))) ; Negate: Cond: i7 >= i0  
(assert (and true (and (> (str.len var3839) var3521) (<= 0 var3521))))
(define-const var32 Int (charAt/698050440 var3839 var3521)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7) 
(define-const var2579 Int (cast-from-Int-to-Int var32)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 != 34 goto $i9 = (int) c2 
(assert (not (not (= var2579 34)))) ; Negate: Cond: $i8 != 34  
(assert true)
;(assert (append/672562846 var3981!2 "\u005c\u0022")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"") 
(declare-const var3981!3 String)
(assert (= var3981!3 (str.++ var3981!2 "\u005c\u0022")))
 ; Statement: goto [?= i7 = i7 + 1] 
(assert true) ; Non Conditional
(define-const var3521!1 Int (+ var3521 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var3521!1 var3610)) ; Cond: i7 >= i0 
(assert true)
;(assert (append/-1166366385 var3981!3 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3981!4 String)
(assert (str.prefixof var3981!3 var3981!4))
(assert true)
(define-const var2701 String (toString/-2075883882 var3981!4)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3839=r0, var1148=null_type, var3610=i0, var3981=$r3, var2274=$i1, var3521=i7, var32=c2, var2579=$i8, var2701=$r2}
; {r0=var3839, null_type=var1148, i0=var3610, $r3=var3981, $i1=var2274, i7=var3521, c2=var32, $i8=var2579, $r2=var2701}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 + 6;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i7 = 0;	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$i8 = (int) c2;	if $i8 != 34 goto $i9 = (int) c2;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i7 = i7 + 1];	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 8