(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNameLength/-166081749 (var2608 Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun shuffledFirst/-1850189368 (var2608) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2608 var2608)
(declare-const null-Int Int)
(declare-const var2185 var2608) ; Statement: r1 := @this: com.google.javascript.jscomp.RandomNameGenerator 
(assert (not (= var2185 null-var2608)))
(declare-const var1350 Int) ; Statement: i7 := @parameter0: int 
(assert (not (= var1350 null-Int)))
(declare-const var3376 Int) ; Statement: i8 := @parameter1: int 
(assert (not (= var3376 null-Int)))
(define-const var1175 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1175)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1175!1 String)
(assert (= var1175!1 ""))
(assert true)
(define-const var217 Int (getNameLength/-166081749 var2185 var1350 var3376)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.RandomNameGenerator: int getNameLength(int,int)>(i7, i8) 
(define-const var43 Int (+ var3376 1)) ; Statement: i9 = i8 + 1 
(assert true) ; Non Conditional
(define-const var3105 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var188 Int (+ var43 var3105)) ; Statement: i10 = i9 + $i13 
 ; Statement: if i7 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction murmur3_128()>() 
(assert (not (not (= var1350 0)))) ; Negate: Cond: i7 != 0  
(define-const var3226 String (shuffledFirst/-1850189368 var2185)) ; Statement: r7 = r1.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String shuffledFirst> 
 ; Statement: goto [?= $i4 = virtualinvoke r7.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3605 Int (length/-134980193 var3226)) ; Statement: $i4 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var505 Int (mod var188 var3605)) ; Statement: $i3 = i10 % $i4 
(assert (and true (and (> (str.len var3226) var505) (<= 0 var505))))
(define-const var1375 Int (charAt/698050440 var3226 var505)) ; Statement: $c5 = virtualinvoke r7.<java.lang.String: char charAt(int)>($i3) 
(assert true)
;(assert (append/-1166366385 var1175!1 var1375)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5) 
(declare-const var1175!2 String)
(assert (str.prefixof var1175!1 var1175!2))
(define-const var969 Int (div var188 var3605)) ; Statement: $i6 = i10 / $i4 
(define-const var43!1 Int var969) ; Statement: i9 = $i6 
(define-const var1350!1 Int (+ var1350 1)) ; Statement: i7 = i7 + 1 
 ; Statement: if $i6 > 0 goto $i13 = (int) -1 
(assert (not (> var969 0))) ; Negate: Cond: $i6 > 0  
(assert true)
(define-const var1353 String (toString/-2075883882 var1175!2)) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNameLength/-166081749=([com.google.javascript.jscomp.RandomNameGenerator, int, int], int), cast-from-Int-to-Int=([int], int), shuffledFirst/-1850189368=([com.google.javascript.jscomp.RandomNameGenerator], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2608=com.google.javascript.jscomp.RandomNameGenerator, var2185=r1, var1350=i7, var3376=i8, var1175=$r9, var217=i0, var43=i9, var3105=$i13, var188=i10, var3226=r7, var3605=$i4, var505=$i3, var1375=$c5, var969=$i6, var1353=$r6}
; {com.google.javascript.jscomp.RandomNameGenerator=var2608, r1=var2185, i7=var1350, i8=var3376, $r9=var1175, i0=var217, i9=var43, $i13=var3105, i10=var188, r7=var3226, $i4=var3605, $i3=var505, $c5=var1375, $i6=var969, $r6=var1353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.RandomNameGenerator;	i7 := @parameter0: int;	i8 := @parameter1: int;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	i0 = virtualinvoke r1.<com.google.javascript.jscomp.RandomNameGenerator: int getNameLength(int,int)>(i7, i8);	i9 = i8 + 1;	$i13 = (int) -1;	i10 = i9 + $i13;	if i7 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction murmur3_128()>();	r7 = r1.<com.google.javascript.jscomp.RandomNameGenerator: java.lang.String shuffledFirst>;	goto [?= $i4 = virtualinvoke r7.<java.lang.String: int length()>()];	$i4 = virtualinvoke r7.<java.lang.String: int length()>();	$i3 = i10 % $i4;	$c5 = virtualinvoke r7.<java.lang.String: char charAt(int)>($i3);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5);	$i6 = i10 / $i4;	i9 = $i6;	i7 = i7 + 1;	if $i6 > 0 goto $i13 = (int) -1;	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5