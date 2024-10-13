(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var56 0)
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
(declare-const var1400 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1400 null-String)))
(declare-const var2458 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2458 null-Bool)))
(assert true)
(define-const var2950 Int (length/-134980193 var1400)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2619 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var2619 var2950))) ; Negate: Cond: i6 >= i0  
(assert (not (and true (and (> (str.len var1400) var2619) (<= 0 var2619)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1400=r0, var56=null_type, var2458=z0, var2950=i0, var2619=i6, var309=c7, var291=$i9, var1859=$r8, var787=$b8, var963=$i1, var1093=$i12, var2273=$r6}
; {r0=var1400, null_type=var56, z0=var2458, i0=var2950, i6=var2619, c7=var309, $i9=var291, $r8=var1859, $b8=var787, $i1=var963, $i12=var1093, $r6=var2273}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	if z0 == 0 goto $b8 = 4;	$b8 = 6;	goto [?= $i1 = i0 + $b8];	$i1 = i0 + $b8;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	$i12 = (int) c7;	if $i12 != 34 goto $i13 = (int) c7;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 12