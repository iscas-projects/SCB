(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var498 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var498 null-String)))
(declare-const var3192 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3192 null-Bool)))
(assert true)
(define-const var1207 Int (length/-134980193 var498)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1938 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var1938 var1207))) ; Negate: Cond: i6 >= i0  
(assert (and true (and (> (str.len var498) var1938) (<= 0 var1938))))
(define-const var3937 Int (charAt/698050440 var498 var1938)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(define-const var2448 Int (cast-from-Int-to-Int var3937)) ; Statement: $i9 = (int) c7 
 ; Statement: if $i9 == 34 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var2448 34))) ; Negate: Cond: $i9 == 34  
(define-const var2173 Int (cast-from-Int-to-Int var3937)) ; Statement: $i10 = (int) c7 
 ; Statement: if $i10 == 92 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var2173 92))) ; Negate: Cond: $i10 == 92  
(define-const var2274 Int (cast-from-Int-to-Int var3937)) ; Statement: $i11 = (int) c7 
 ; Statement: if $i11 >= 32 goto i6 = i6 + 1 
(assert (>= var2274 32)) ; Cond: $i11 >= 32 
(define-const var1938!1 Int (+ var1938 1)) ; Statement: i6 = i6 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (>= var1938!1 var1207)) ; Cond: i6 >= i0 
 ; Statement: if z0 == 0 goto $r7 = r0 
(assert (not (= (ite var3192 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3771 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3771)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3771!1 String)
(assert (= var3771!1 ""))
(assert true)
(define-const var2992 String (append/-1166366385 var3771!1 34)) ; Statement: $r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3771!2 String)
(assert (str.prefixof var3771!1 var3771!2))
(assert true)
(define-const var3825 String (append/672562846 var2992 var498)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2992!1 String)
(assert (= var2992!1 (str.++ var2992 var498)))
(assert true)
(define-const var3827 String (append/-1166366385 var3825 34)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3825!1 String)
(assert (str.prefixof var3825 var3825!1))
(assert true)
(define-const var1879 String (toString/-2075883882 var3827)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r7] 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var498=r0, var3097=null_type, var3192=z0, var1207=i0, var1938=i6, var3937=c7, var2448=$i9, var2173=$i10, var2274=$i11, var3771=$r9, var2992=$r2, var3825=$r3, var3827=$r4, var1879=$r7}
; {r0=var498, null_type=var3097, z0=var3192, i0=var1207, i6=var1938, c7=var3937, $i9=var2448, $i10=var2173, $i11=var2274, $r9=var3771, $r2=var2992, $r3=var3825, $r4=var3827, $r7=var1879}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$i10 = (int) c7;	if $i10 == 92 goto $r8 = new java.lang.StringBuilder;	$i11 = (int) c7;	if $i11 >= 32 goto i6 = i6 + 1;	i6 = i6 + 1;	goto [?= (branch)];	if i6 >= i0 goto (branch);	if z0 == 0 goto $r7 = r0;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r7];	return $r7
;block_num 10