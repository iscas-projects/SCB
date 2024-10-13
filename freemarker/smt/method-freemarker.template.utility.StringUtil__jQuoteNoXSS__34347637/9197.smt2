(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2699 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2699 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2699 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1797 Int (length/-134980193 var2699)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2755 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var1510 Int (+ var1797 6)) ; Statement: $i1 = i0 + 6 
(assert true)
;(assert (<init>/543593434 var2755 var1510)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2755!1 String)
(declare-const var1510!1 Int)
(assert true)
;(assert (append/-1166366385 var2755!1 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2755!2 String)
(assert (str.prefixof var2755!1 var2755!2))
(define-const var3909 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (not (>= var3909 var1797))) ; Negate: Cond: i7 >= i0  
(assert (and true (and (> (str.len var2699) var3909) (<= 0 var3909))))
(define-const var1464 Int (charAt/698050440 var2699 var3909)) ; Statement: c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7) 
(define-const var777 Int (cast-from-Int-to-Int var1464)) ; Statement: $i8 = (int) c2 
 ; Statement: if $i8 != 34 goto $i9 = (int) c2 
(assert (not (= var777 34))) ; Cond: $i8 != 34 
(define-const var167 Int (cast-from-Int-to-Int var1464)) ; Statement: $i9 = (int) c2 
 ; Statement: if $i9 != 92 goto $i10 = (int) c2 
(assert (not (= var167 92))) ; Cond: $i9 != 92 
(define-const var2204 Int (cast-from-Int-to-Int var1464)) ; Statement: $i10 = (int) c2 
 ; Statement: if $i10 != 60 goto $i11 = (int) c2 
(assert (not (= var2204 60))) ; Cond: $i10 != 60 
(define-const var3633 Int (cast-from-Int-to-Int var1464)) ; Statement: $i11 = (int) c2 
 ; Statement: if $i11 >= 32 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(assert (>= var3633 32)) ; Cond: $i11 >= 32 
(assert true)
;(assert (append/-1166366385 var2755!2 var1464)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(declare-const var2755!3 String)
(assert (str.prefixof var2755!2 var2755!3))
(assert true) ; Non Conditional
(define-const var3909!1 Int (+ var3909 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (>= var3909!1 var1797)) ; Cond: i7 >= i0 
(assert true)
;(assert (append/-1166366385 var2755!3 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2755!4 String)
(assert (str.prefixof var2755!3 var2755!4))
(assert true)
(define-const var152 String (toString/-2075883882 var2755!4)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2699=r0, var544=null_type, var1797=i0, var2755=$r3, var1510=$i1, var3909=i7, var1464=c2, var777=$i8, var167=$i9, var2204=$i10, var3633=$i11, var152=$r2}
; {r0=var2699, null_type=var544, i0=var1797, $r3=var2755, $i1=var1510, i7=var3909, c2=var1464, $i8=var777, $i9=var167, $i10=var2204, $i11=var3633, $r2=var152}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 + 6;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i7 = 0;	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$i8 = (int) c2;	if $i8 != 34 goto $i9 = (int) c2;	$i9 = (int) c2;	if $i9 != 92 goto $i10 = (int) c2;	$i10 = (int) c2;	if $i10 != 60 goto $i11 = (int) c2;	$i11 = (int) c2;	if $i11 >= 32 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 11