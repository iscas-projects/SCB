(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1138 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var755-init () var755)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var755 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1552 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1552 null-String)))
(declare-const var2372 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2372 null-Bool)))
(define-const var2294 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2294)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2294!1 String)
(assert (= var2294!1 ""))
(define-const var440 Int 0) ; Statement: i12 = 0 
(define-const var1028 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var2322 Int (length/-134980193 var1552)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2876 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var2876 var2322))) ; Negate: Cond: i13 >= i0  
(assert (not (and true (and (> (str.len var1552) var2876) (<= 0 var2876)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var755-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1552=r1, var1138=null_type, var2372=z0, var2294=$r21, var440=i12, var1028=z1, var2322=i0, var2876=i13, var1721=c2, var3795=$i15, var1484=$i16, var452=$i20, var1638=$i21, var755=java.lang.IllegalArgumentException, var398=$r27, var1521=$r26, var3117=$r6, var3591=$r7, var1749=$r8, var3856=$r9, var1319=$r10}
; {r1=var1552, null_type=var1138, z0=var2372, $r21=var2294, i12=var440, z1=var1028, i0=var2322, i13=var2876, c2=var1721, $i15=var3795, $i16=var1484, $i20=var452, $i21=var1638, java.lang.IllegalArgumentException=var755, $r27=var398, $r26=var1521, $r6=var3117, $r7=var3591, $r8=var1749, $r9=var3856, $r10=var1319}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	$i20 = (int) c2;	if $i20 != 92 goto $i21 = (int) c2;	$i21 = (int) c2;	if $i21 == 91 goto $r27 = new java.lang.IllegalArgumentException;	$r27 = new java.lang.IllegalArgumentException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" glob operator is currently unsupported (precede it with \\ for literal matching), in this glob: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r27
;block_num 8