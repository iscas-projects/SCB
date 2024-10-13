(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var438 0)
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
(declare-const var3587 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3587 null-String)))
(declare-const var3749 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3749 null-Bool)))
(assert true)
(define-const var3155 Int (length/-134980193 var3587)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var789 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (not (>= var789 var3155))) ; Negate: Cond: i6 >= i0  
(assert (not (and true (and (> (str.len var3587) var789) (<= 0 var789)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3587=r0, var438=null_type, var3749=z0, var3155=i0, var789=i6, var767=c7, var3048=$i9, var1934=$r8, var2627=$b8, var1766=$i1, var3925=$i12, var53=$r6}
; {r0=var3587, null_type=var438, z0=var3749, i0=var3155, i6=var789, c7=var767, $i9=var3048, $r8=var1934, $b8=var2627, $i1=var1766, $i12=var3925, $r6=var53}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i9 = (int) c7;	if $i9 == 34 goto $r8 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	if z0 == 0 goto $b8 = 4;	$b8 = 4;	$i1 = i0 + $b8;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i1);	if z0 == 0 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, i6);	$i12 = (int) c7;	if $i12 != 34 goto $i13 = (int) c7;	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\\"");	goto [?= i6 = i6 + 1];	i6 = i6 + 1;	if i6 < i0 goto c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	if z0 == 0 goto $r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 12