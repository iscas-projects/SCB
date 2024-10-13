(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var379 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var379 null-String)))
(declare-const var3716 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3716 null-Bool)))
(assert true)
(define-const var905 Int (length/-134980193 var379)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3443 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var3443 var905))) ; Negate: Cond: i6 >= i0  
(assert (and true (and (> (str.len var379) var3443) (<= 0 var3443))))
(define-const var2041 Int (charAt/698050440 var379 var3443)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(define-const var1108 Int (cast-from-Int-to-Int var2041)) ; Statement: $i9 = (int) c7 
 ; Statement: if $i9 == 34 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var1108 34))) ; Negate: Cond: $i9 == 34  
(define-const var3362 Int (cast-from-Int-to-Int var2041)) ; Statement: $i10 = (int) c7 
 ; Statement: if $i10 == 92 goto $r8 = new java.lang.StringBuilder 
(assert (= var3362 92)) ; Cond: $i10 == 92 
(define-const var2324 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
 ; Statement: if z0 == 0 goto $b8 = 4 
(assert (not (= (ite var3716 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var813 Int 6) ; Statement: $b8 = 6 
 ; Statement: goto [?= $i1 = i0 + $b8] 
(assert true) ; Non Conditional
(define-const var2720 Int (+ var905 var813)) ; Statement: $i1 = i0 + $b8 
(assert true)
;(assert (<init>/543593434 var2324 var2720)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2324!1 String)
(declare-const var2720!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(assert (= (ite var3716 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/50905802 var2324!1 (cast-from-String-to-String var379) 0 var3443)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(declare-const var2324!2 String)
(assert (str.prefixof var2324!1 var2324!2))
(assert true) ; Non Conditional
(define-const var174 Int (cast-from-Int-to-Int var2041)) ; Statement: $i12 = (int) c7 
 ; Statement: if $i12 != 34 goto $i13 = (int) c7 
(assert (not (not (= var174 34)))) ; Negate: Cond: $i12 != 34  
(assert true)
;(assert (append/672562846 var2324!2 "\u005c\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"") 
(declare-const var2324!3 String)
(assert (= var2324!3 (str.++ var2324!2 "\u005c\u0022")))
 ; Statement: goto [?= i6 = i6 + 1] 
(assert true) ; Non Conditional
(define-const var3443!1 Int (+ var3443 1)) ; Statement: i6 = i6 + 1 
 ; Statement: if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(assert (not (< var3443!1 var905))) ; Negate: Cond: i6 < i0  
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3716 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1213 String (toString/-2075883882 var2324!3)) ; Statement: $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var379=r0, var3973=null_type, var3716=z0, var905=i0, var3443=i6, var2041=c7, var1108=$i9, var3362=$i10, var2324=$r8, var813=$b8, var2720=$i1, var174=$i12, var1213=$r6}
; {r0=var379, null_type=var3973, z0=var3716, i0=var905, i6=var3443, c7=var2041, $i9=var1108, $i10=var3362, $r8=var2324, $b8=var813, $i1=var2720, $i12=var174, $r6=var1213}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$i10 = (int) c7;	if $i10 == 92 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	if z0 == 0 goto $b8 = 4;	$b8 = 6;	goto [?= $i1 = i0 + $b8];	$i1 = i0 + $b8;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	$i12 = (int) c7;	if $i12 != 34 goto $i13 = (int) c7;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 13