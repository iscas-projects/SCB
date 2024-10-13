(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3733 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3733 null-String)))
(declare-const var513 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var513 null-Bool)))
(assert true)
(define-const var3992 Int (length/-134980193 var3733)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3073 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var3073 var3992))) ; Negate: Cond: i6 >= i0  
(assert (and true (and (> (str.len var3733) var3073) (<= 0 var3073))))
(define-const var3729 Int (charAt/698050440 var3733 var3073)) ; Statement: c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(define-const var3457 Int (cast-from-Int-to-Int var3729)) ; Statement: $i9 = (int) c7 
 ; Statement: if $i9 == 34 goto $r8 = new java.lang.StringBuilder 
(assert (= var3457 34)) ; Cond: $i9 == 34 
(define-const var2621 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
 ; Statement: if z0 == 0 goto $b8 = 4 
(assert (= (ite var513 1 0) 0)) ; Cond: z0 == 0 
(define-const var722 Int 4) ; Statement: $b8 = 4 
(assert true) ; Non Conditional
(define-const var613 Int (+ var3992 var722)) ; Statement: $i1 = i0 + $b8 
(assert true)
;(assert (<init>/543593434 var2621 var613)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2621!1 String)
(declare-const var613!1 Int)
 ; Statement: if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(assert (not (= (ite var513 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
;(assert (append/672562846 var2621!1 "\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2621!2 String)
(assert (= var2621!2 (str.++ var2621!1 "\u0022")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/50905802 var2621!2 (cast-from-String-to-String var3733) 0 var3073)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6) 
(declare-const var2621!3 String)
(assert (str.prefixof var2621!2 var2621!3))
(assert true) ; Non Conditional
(define-const var2263 Int (cast-from-Int-to-Int var3729)) ; Statement: $i12 = (int) c7 
 ; Statement: if $i12 != 34 goto $i13 = (int) c7 
(assert (not (not (= var2263 34)))) ; Negate: Cond: $i12 != 34  
(assert true)
;(assert (append/672562846 var2621!3 "\u005c\u0022")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"") 
(declare-const var2621!4 String)
(assert (= var2621!4 (str.++ var2621!3 "\u005c\u0022")))
 ; Statement: goto [?= i6 = i6 + 1] 
(assert true) ; Non Conditional
(define-const var3073!1 Int (+ var3073 1)) ; Statement: i6 = i6 + 1 
 ; Statement: if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6) 
(assert (not (< var3073!1 var3992))) ; Negate: Cond: i6 < i0  
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var513 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var777 String (toString/-2075883882 var2621!4)) ; Statement: $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3733=r0, var2105=null_type, var513=z0, var3992=i0, var3073=i6, var3729=c7, var3457=$i9, var2621=$r8, var722=$b8, var613=$i1, var2263=$i12, var777=$r6}
; {r0=var3733, null_type=var2105, z0=var513, i0=var3992, i6=var3073, c7=var3729, $i9=var3457, $r8=var2621, $b8=var722, $i1=var613, $i12=var2263, $r6=var777}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	if z0 == 0 goto $b8 = 4;	$b8 = 4;	$i1 = i0 + $b8;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	$i12 = (int) c7;	if $i12 != 34 goto $i13 = (int) c7;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 13