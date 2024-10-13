(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3530 0)
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
(declare-const var954 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var954 null-String)))
(declare-const var2757 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2757 null-Bool)))
(assert true)
(define-const var1222 Int (length/-134980193 var954)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3830 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var3830 var1222))) ; Negate: Cond: i6 >= i0  
(assert (and true (and (> (str.len var954) var3830) (<= 0 var3830))))
(define-const var3811 Int (charAt/698050440 var954 var3830)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(define-const var235 Int (cast-from-Int-to-Int var3811)) ; Statement: $i9 = (int) c7 
 ; Statement: if $i9 == 34 goto $r8 = new java.lang.StringBuilder 
(assert (not (= var235 34))) ; Negate: Cond: $i9 == 34  
(define-const var3824 Int (cast-from-Int-to-Int var3811)) ; Statement: $i10 = (int) c7 
 ; Statement: if $i10 == 92 goto $r8 = new java.lang.StringBuilder 
(assert (= var3824 92)) ; Cond: $i10 == 92 
(define-const var188 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
 ; Statement: if z0 == 0 goto $b8 = 4 
(assert (= (ite var2757 1 0) 0)) ; Cond: z0 == 0 
(define-const var823 Int 4) ; Statement: $b8 = 4 
(assert true) ; Non Conditional
(define-const var1046 Int (+ var1222 var823)) ; Statement: $i1 = i0 + $b8 
(assert true)
;(assert (<init>/543593434 var188 var1046)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var188!1 String)
(declare-const var1046!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(assert (= (ite var2757 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/50905802 var188!1 (cast-from-String-to-String var954) 0 var3830)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(declare-const var188!2 String)
(assert (str.prefixof var188!1 var188!2))
(assert true) ; Non Conditional
(define-const var3684 Int (cast-from-Int-to-Int var3811)) ; Statement: $i12 = (int) c7 
 ; Statement: if $i12 != 34 goto $i13 = (int) c7 
(assert (not (not (= var3684 34)))) ; Negate: Cond: $i12 != 34  
(assert true)
;(assert (append/672562846 var188!2 "\u005c\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"") 
(declare-const var188!3 String)
(assert (= var188!3 (str.++ var188!2 "\u005c\u0022")))
 ; Statement: goto [?= i6 = i6 + 1] 
(assert true) ; Non Conditional
(define-const var3830!1 Int (+ var3830 1)) ; Statement: i6 = i6 + 1 
 ; Statement: if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(assert (not (< var3830!1 var1222))) ; Negate: Cond: i6 < i0  
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2757 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2280 String (toString/-2075883882 var188!3)) ; Statement: $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var954=r0, var3530=null_type, var2757=z0, var1222=i0, var3830=i6, var3811=c7, var235=$i9, var3824=$i10, var188=$r8, var823=$b8, var1046=$i1, var3684=$i12, var2280=$r6}
; {r0=var954, null_type=var3530, z0=var2757, i0=var1222, i6=var3830, c7=var3811, $i9=var235, $i10=var3824, $r8=var188, $b8=var823, $i1=var1046, $i12=var3684, $r6=var2280}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$i10 = (int) c7;	if $i10 == 92 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	if z0 == 0 goto $b8 = 4;	$b8 = 4;	$i1 = i0 + $b8;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	$i12 = (int) c7;	if $i12 != 34 goto $i13 = (int) c7;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 13