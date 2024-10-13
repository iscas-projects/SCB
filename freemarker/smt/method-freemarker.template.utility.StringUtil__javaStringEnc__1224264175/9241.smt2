(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2217 0)
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
(declare-const var2557 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2557 null-String)))
(declare-const var2148 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2148 null-Bool)))
(assert true)
(define-const var3628 Int (length/-134980193 var2557)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1118 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var1118 var3628))) ; Negate: Cond: i6 >= i0  
(assert (and true (and (> (str.len var2557) var1118) (<= 0 var1118))))
(define-const var3023 Int (charAt/698050440 var2557 var1118)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(define-const var2921 Int (cast-from-Int-to-Int var3023)) ; Statement: $i9 = (int) c7 
 ; Statement: if $i9 == 34 goto $r8 = new java.lang.StringBuilder 
(assert (= var2921 34)) ; Cond: $i9 == 34 
(define-const var3858 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
 ; Statement: if z0 == 0 goto $b8 = 4 
(assert (= (ite var2148 1 0) 0)) ; Cond: z0 == 0 
(define-const var3680 Int 4) ; Statement: $b8 = 4 
(assert true) ; Non Conditional
(define-const var1114 Int (+ var3628 var3680)) ; Statement: $i1 = i0 + $b8 
(assert true)
;(assert (<init>/543593434 var3858 var1114)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3858!1 String)
(declare-const var1114!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(assert (= (ite var2148 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/50905802 var3858!1 (cast-from-String-to-String var2557) 0 var1118)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(declare-const var3858!2 String)
(assert (str.prefixof var3858!1 var3858!2))
(assert true) ; Non Conditional
(define-const var2808 Int (cast-from-Int-to-Int var3023)) ; Statement: $i12 = (int) c7 
 ; Statement: if $i12 != 34 goto $i13 = (int) c7 
(assert (not (not (= var2808 34)))) ; Negate: Cond: $i12 != 34  
(assert true)
;(assert (append/672562846 var3858!2 "\u005c\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"") 
(declare-const var3858!3 String)
(assert (= var3858!3 (str.++ var3858!2 "\u005c\u0022")))
 ; Statement: goto [?= i6 = i6 + 1] 
(assert true) ; Non Conditional
(define-const var1118!1 Int (+ var1118 1)) ; Statement: i6 = i6 + 1 
 ; Statement: if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(assert (not (< var1118!1 var3628))) ; Negate: Cond: i6 < i0  
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2148 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var3858!3 "\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3858!4 String)
(assert (= var3858!4 (str.++ var3858!3 "\u0022")))
(assert true) ; Non Conditional
(assert true)
(define-const var3760 String (toString/-2075883882 var3858!4)) ; Statement: $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2557=r0, var2217=null_type, var2148=z0, var3628=i0, var1118=i6, var3023=c7, var2921=$i9, var3858=$r8, var3680=$b8, var1114=$i1, var2808=$i12, var3760=$r6}
; {r0=var2557, null_type=var2217, z0=var2148, i0=var3628, i6=var1118, c7=var3023, $i9=var2921, $r8=var3858, $b8=var3680, $i1=var1114, $i12=var2808, $r6=var3760}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	if z0 == 0 goto $b8 = 4;	$b8 = 4;	$i1 = i0 + $b8;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	$i12 = (int) c7;	if $i12 != 34 goto $i13 = (int) c7;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 13