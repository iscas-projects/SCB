(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3427 0)
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
(declare-const var1419 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1419 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1419 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2766 Int (length/-134980193 var1419)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2516 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var2403 Int (+ var2766 6)) ; Statement: $i1 = i0 + 6 
(assert true)
;(assert (<init>/543593434 var2516 var2403)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2516!1 String)
(declare-const var2403!1 Int)
(assert true)
;(assert (append/-1166366385 var2516!1 34)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var2516!2 String)
(assert (str.prefixof var2516!1 var2516!2))
(define-const var269 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(assert (not (>= var269 var2766))) ; Negate: Cond: i7 >= i0  
(assert (not (and true (and (> (str.len var1419) var269) (<= 0 var269)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1419=r0, var3427=null_type, var2766=i0, var2516=$r3, var2403=$i1, var269=i7, var2663=c2, var1872=$i8, var2078=$r2}
; {r0=var1419, null_type=var3427, i0=var2766, $r3=var2516, $i1=var2403, i7=var269, c2=var2663, $i8=var1872, $r2=var2078}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: char charAt(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r3 = new java.lang.StringBuilder;	$i1 = i0 + 6;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	i7 = 0;	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$i8 = (int) c2;	if $i8 != 34 goto $i9 = (int) c2;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i7 = i7 + 1];	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i7);	$i8 = (int) c2;	if $i8 != 34 goto $i9 = (int) c2;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i7 = i7 + 1];	i7 = i7 + 1;	goto [?= (branch)];	if i7 >= i0 goto virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 12