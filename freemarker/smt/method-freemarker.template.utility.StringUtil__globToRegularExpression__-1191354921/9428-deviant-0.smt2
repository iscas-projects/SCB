(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3455 0)
(declare-sort var1804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1804-init () var1804)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1804 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var521 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var521 null-String)))
(declare-const var1527 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1527 null-Bool)))
(define-const var3424 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3424)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3424!1 String)
(assert (= var3424!1 ""))
(define-const var3246 Int 0) ; Statement: i12 = 0 
(define-const var3403 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true)
(define-const var992 Int (length/-134980193 var521)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3057 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
 ; Statement: if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var3057 var992))) ; Negate: Cond: i13 >= i0  
(assert (not (and true (and (> (str.len var521) var3057) (<= 0 var3057)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1804-init=([], java.lang.IllegalArgumentException), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var521=r1, var3455=null_type, var1527=z0, var3424=$r21, var3246=i12, var3403=z1, var992=i0, var3057=i13, var3004=c2, var803=$i15, var3085=$i16, var1378=$i20, var2298=$i21, var1804=java.lang.IllegalArgumentException, var164=$r27, var2187=$r26, var3199=$r6, var2120=$r7, var509=$r8, var1055=$r9, var1199=$r10}
; {r1=var521, null_type=var3455, z0=var1527, $r21=var3424, i12=var3246, z1=var3403, i0=var992, i13=var3057, c2=var3004, $i15=var803, $i16=var3085, $i20=var1378, $i21=var2298, java.lang.IllegalArgumentException=var1804, $r27=var164, $r26=var2187, $r6=var3199, $r7=var2120, $r8=var509, $r9=var1055, $r10=var1199}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	i12 = 0;	z1 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i13 = 0;	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	z1 = 0;	i13 = i13 + 1;	goto [?= (branch)];	if i13 >= i0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i13);	if z1 != 0 goto z1 = 0;	$i15 = (int) c2;	if $i15 != 63 goto $i16 = (int) c2;	$i16 = (int) c2;	if $i16 != 42 goto $i20 = (int) c2;	$i20 = (int) c2;	if $i20 != 92 goto $i21 = (int) c2;	$i21 = (int) c2;	if $i21 == 91 goto $r27 = new java.lang.IllegalArgumentException;	$r27 = new java.lang.IllegalArgumentException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" glob operator is currently unsupported (precede it with \\ for literal matching), in this glob: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r27
;block_num 12