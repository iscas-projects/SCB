(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var236 0)
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
(declare-const var562 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var562 null-String)))
(declare-const var263 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var263 null-Bool)))
(assert true)
(define-const var1759 Int (length/-134980193 var562)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3891 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var3891 var1759))) ; Negate: Cond: i6 >= i0  
(assert (and true (and (> (str.len var562) var3891) (<= 0 var3891))))
(define-const var3955 Int (charAt/698050440 var562 var3891)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(define-const var3650 Int (cast-from-Int-to-Int var3955)) ; Statement: $i9 = (int) c7 
 ; Statement: if $i9 == 34 goto $r8 = new java.lang.StringBuilder 
(assert (= var3650 34)) ; Cond: $i9 == 34 
(define-const var3405 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
 ; Statement: if z0 == 0 goto $b8 = 4 
(assert (not (= (ite var263 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3942 Int 6) ; Statement: $b8 = 6 
 ; Statement: goto [?= $i1 = i0 + $b8] 
(assert true) ; Non Conditional
(define-const var708 Int (+ var1759 var3942)) ; Statement: $i1 = i0 + $b8 
(assert true)
;(assert (<init>/543593434 var3405 var708)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3405!1 String)
(declare-const var708!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(assert (= (ite var263 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/50905802 var3405!1 (cast-from-String-to-String var562) 0 var3891)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(declare-const var3405!2 String)
(assert (str.prefixof var3405!1 var3405!2))
(assert true) ; Non Conditional
(define-const var415 Int (cast-from-Int-to-Int var3955)) ; Statement: $i12 = (int) c7 
 ; Statement: if $i12 != 34 goto $i13 = (int) c7 
(assert (not (= var415 34))) ; Cond: $i12 != 34 
(define-const var1867 Int (cast-from-Int-to-Int var3955)) ; Statement: $i13 = (int) c7 
 ; Statement: if $i13 != 92 goto $i14 = (int) c7 
(assert (not (not (= var1867 92)))) ; Negate: Cond: $i13 != 92  
(assert true)
;(assert (append/672562846 var3405!2 "\u005c\u005c")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\") 
(declare-const var3405!3 String)
(assert (= var3405!3 (str.++ var3405!2 "\u005c\u005c")))
 ; Statement: goto [?= i6 = i6 + 1] 
(assert true) ; Non Conditional
(define-const var3891!1 Int (+ var3891 1)) ; Statement: i6 = i6 + 1 
 ; Statement: if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(assert (not (< var3891!1 var1759))) ; Negate: Cond: i6 < i0  
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var263 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2654 String (toString/-2075883882 var3405!3)) ; Statement: $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var562=r0, var236=null_type, var263=z0, var1759=i0, var3891=i6, var3955=c7, var3650=$i9, var3405=$r8, var3942=$b8, var708=$i1, var415=$i12, var1867=$i13, var2654=$r6}
; {r0=var562, null_type=var236, z0=var263, i0=var1759, i6=var3891, c7=var3955, $i9=var3650, $r8=var3405, $b8=var3942, $i1=var708, $i12=var415, $i13=var1867, $r6=var2654}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	if z0 == 0 goto $b8 = 4;	$b8 = 6;	goto [?= $i1 = i0 + $b8];	$i1 = i0 + $b8;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	$i12 = (int) c7;	if $i12 != 34 goto $i13 = (int) c7;	$i13 = (int) c7;	if $i13 != 92 goto $i14 = (int) c7;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\\");	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 13