(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3755 0)
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
(declare-const var2327 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2327 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2327 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3148 Int (length/-134980193 var2327)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var153 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var1003 Int (+ var3148 6)) ; Statement: $i1 = i0 + 6 
(assert true)
;(assert (<init>/543593434 var153 var1003)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var153!1 String)
(declare-const var1003!1 Int)
(assert true)
;(assert (append/-1166366385 var153!1 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var153!2 String)
(assert (str.prefixof var153!1 var153!2))
(define-const var3496 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (not (>= var3496 var3148))) ; Negate: Cond: i7 >= i0  
(assert (and true (and (> (str.len var2327) var3496) (<= 0 var3496))))
(define-const var3303 Int (charAt/698050440 var2327 var3496)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7) 
(define-const var3738 Int (cast-from-Int-to-Int var3303)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 != 34 goto $i9 = (int) c2 
(assert (not (= var3738 34))) ; Cond: $i8 != 34 
(define-const var3257 Int (cast-from-Int-to-Int var3303)) ; Statement: $i9 = (int) c2 
 ; Statement: if $i9 != 92 goto $i10 = (int) c2 
(assert (not (= var3257 92))) ; Cond: $i9 != 92 
(define-const var2030 Int (cast-from-Int-to-Int var3303)) ; Statement: $i10 = (int) c2 
 ; Statement: if $i10 != 60 goto $i11 = (int) c2 
(assert (not (= var2030 60))) ; Cond: $i10 != 60 
(define-const var2530 Int (cast-from-Int-to-Int var3303)) ; Statement: $i11 = (int) c2 
 ; Statement: if $i11 >= 32 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(assert (not (>= var2530 32))) ; Negate: Cond: $i11 >= 32  
(define-const var3839 Int (cast-from-Int-to-Int var3303)) ; Statement: $i12 = (int) c2 
 ; Statement: if $i12 != 10 goto $i13 = (int) c2 
(assert (not (not (= var3839 10)))) ; Negate: Cond: $i12 != 10  
(assert true)
;(assert (append/672562846 var153!2 "\u005cn")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\n") 
(declare-const var153!3 String)
(assert (= var153!3 (str.++ var153!2 "\u005cn")))
 ; Statement: goto [?= i7 = i7 + 1] 
(assert true) ; Non Conditional
(define-const var3496!1 Int (+ var3496 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var3496!1 var3148)) ; Cond: i7 >= i0 
(assert true)
;(assert (append/-1166366385 var153!3 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var153!4 String)
(assert (str.prefixof var153!3 var153!4))
(assert true)
(define-const var2379 String (toString/-2075883882 var153!4)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2327=r0, var3755=null_type, var3148=i0, var153=$r3, var1003=$i1, var3496=i7, var3303=c2, var3738=$i8, var3257=$i9, var2030=$i10, var2530=$i11, var3839=$i12, var2379=$r2}
; {r0=var2327, null_type=var3755, i0=var3148, $r3=var153, $i1=var1003, i7=var3496, c2=var3303, $i8=var3738, $i9=var3257, $i10=var2030, $i11=var2530, $i12=var3839, $r2=var2379}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 + 6;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i7 = 0;	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$i8 = (int) c2;	if $i8 != 34 goto $i9 = (int) c2;	$i9 = (int) c2;	if $i9 != 92 goto $i10 = (int) c2;	$i10 = (int) c2;	if $i10 != 60 goto $i11 = (int) c2;	$i11 = (int) c2;	if $i11 >= 32 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	$i12 = (int) c2;	if $i12 != 10 goto $i13 = (int) c2;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\n");	goto [?= i7 = i7 + 1];	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 12