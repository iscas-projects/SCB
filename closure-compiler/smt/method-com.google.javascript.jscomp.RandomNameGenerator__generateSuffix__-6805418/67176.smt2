(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3007 0)
(declare-sort var332 0)
(declare-sort var2760 0)
(declare-sort var621 0)
(declare-sort var1605 0)
(declare-sort var2908 0)
(declare-sort var2988 0)
(declare-sort var3029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getNameLength/-166081749 (var3007 Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2760_murmur3_128/745418938 () var332)
(declare-fun var332_newHasher/-663141193 (var332) var621)
(declare-fun var621_putInt/-1529367802 (var621 Int) var621)
(declare-fun var621_putUnencodedChars/-1460803973 (var621 String) var621)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var621_hash/-1889255931 (var621) var1605)
(declare-fun asInt/-341430774 (var1605) Int)
(declare-fun shuffledNonFirst/-1850189368 (var3007) var2908)
(declare-fun get/-1216255739 (var3029 Int) var2988)
(declare-fun cast-from-var2908-to-var3029 (var2908) var3029)
(declare-fun cast-from-var2988-to-String (var2988) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3007 var3007)
(declare-const null-Int Int)
(declare-const var3350 var3007) ; Statement: r1 := @this: com.google.javascript.jscomp.RandomNameGenerator 
(assert (not (= var3350 null-var3007)))
(declare-const var619 Int) ; Statement: i7 := @parameter0: int 
(assert (not (= var619 null-Int)))
(declare-const var1748 Int) ; Statement: i8 := @parameter1: int 
(assert (not (= var1748 null-Int)))
(define-const var704 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var704)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var704!1 String)
(assert (= var704!1 ""))
(assert true)
(define-const var3763 Int (getNameLength/-166081749 var3350 var619 var1748)) ; Statement: i0 = virtualinvoke r1.<com.google.javascript.jscomp.RandomNameGenerator: int getNameLength(int,int)>(i7, i8) 
(define-const var3786 Int (+ var1748 1)) ; Statement: i9 = i8 + 1 
(assert true) ; Non Conditional
(define-const var1506 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
(define-const var250 Int (+ var3786 var1506)) ; Statement: i10 = i9 + $i13 
 ; Statement: if i7 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction murmur3_128()>() 
(assert (not (= var619 0))) ; Cond: i7 != 0 
(define-const var1091 var332 var2760_murmur3_128/745418938) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction murmur3_128()>() 
(define-const var583 var621 (var332_newHasher/-663141193 var1091)) ; Statement: r8 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher newHasher()>() 
;(assert (var621_putInt/-1529367802 var583 var3763)) ; Statement: interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putInt(int)>(i0) 

(declare-const var583!1 var621)
(declare-const var3763!1 Int)
;(assert (var621_putUnencodedChars/-1460803973 var583!1 (cast-from-String-to-String var704!1))) ; Statement: interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putUnencodedChars(java.lang.CharSequence)>($r9) 

(declare-const var583!2 var621)
(declare-const var704!2 String)
(define-const var3284 var1605 (var621_hash/-1889255931 var583!2)) ; Statement: $r3 = interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hash()>() 
(assert true)
(define-const var2572 Int (asInt/-341430774 var3284)) ; Statement: $i1 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: int asInt()>() 
(define-const var111 Int (bv2nat (bvand ((_ int2bv 64) var2572) ((_ int2bv 64) 2147483647)))) ; Statement: $i2 = $i1 & 2147483647 
(define-const var964 Int (mod var111 16)) ; Statement: i11 = $i2 % 16 
(define-const var3743 var2908 (shuffledNonFirst/-1850189368 var3350)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.RandomNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList shuffledNonFirst> 
(assert true)
(define-const var1968 var2988 (get/-1216255739 (cast-from-var2908-to-var3029 var3743) var964)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: java.lang.Object get(int)>(i11) 
(define-const var777 String (cast-from-var2988-to-String var1968)) ; Statement: r7 = (java.lang.String) $r5 
(assert true) ; Non Conditional
(assert true)
(define-const var278 Int (length/-134980193 var777)) ; Statement: $i4 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var3208 Int (mod var250 var278)) ; Statement: $i3 = i10 % $i4 
(assert (and true (and (> (str.len var777) var3208) (<= 0 var3208))))
(define-const var1568 Int (charAt/698050440 var777 var3208)) ; Statement: $c5 = virtualinvoke r7.<java.lang.String: char charAt(int)>($i3) 
(assert true)
;(assert (append/-1166366385 var704!2 var1568)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5) 
(declare-const var704!3 String)
(assert (str.prefixof var704!2 var704!3))
(define-const var2963 Int (div var250 var278)) ; Statement: $i6 = i10 / $i4 
(define-const var3786!1 Int var2963) ; Statement: i9 = $i6 
(define-const var619!1 Int (+ var619 1)) ; Statement: i7 = i7 + 1 
 ; Statement: if $i6 > 0 goto $i13 = (int) -1 
(assert (not (> var2963 0))) ; Negate: Cond: $i6 > 0  
(assert true)
(define-const var3800 String (toString/-2075883882 var704!3)) ; Statement: $r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getNameLength/-166081749=([com.google.javascript.jscomp.RandomNameGenerator, int, int], int), cast-from-Int-to-Int=([int], int), var2760_murmur3_128/745418938=([], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction), var332_newHasher/-663141193=([com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction], com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher), var621_putInt/-1529367802=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher, int], com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher), var621_putUnencodedChars/-1460803973=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher, java.lang.CharSequence], com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence), var621_hash/-1889255931=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher], com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode), asInt/-341430774=([com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode], int), shuffledNonFirst/-1850189368=([com.google.javascript.jscomp.RandomNameGenerator], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var2908-to-var3029=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], java.util.List), cast-from-var2988-to-String=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3007=com.google.javascript.jscomp.RandomNameGenerator, var3350=r1, var619=i7, var1748=i8, var704=$r9, var3763=i0, var3786=i9, var1506=$i13, var250=i10, var332=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction, var2760=com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing, var1091=$r2, var621=com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher, var583=r8, var1605=com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode, var3284=$r3, var2572=$i1, var111=$i2, var964=i11, var2908=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3743=$r4, var2988=java.lang.Object, var3029=java.util.List, var1968=$r5, var777=r7, var278=$i4, var3208=$i3, var1568=$c5, var2963=$i6, var3800=$r6}
; {com.google.javascript.jscomp.RandomNameGenerator=var3007, r1=var3350, i7=var619, i8=var1748, $r9=var704, i0=var3763, i9=var3786, $i13=var1506, i10=var250, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction=var332, com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing=var2760, $r2=var1091, com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher=var621, r8=var583, com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode=var1605, $r3=var3284, $i1=var2572, $i2=var111, i11=var964, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2908, $r4=var3743, java.lang.Object=var2988, java.util.List=var3029, $r5=var1968, r7=var777, $i4=var278, $i3=var3208, $c5=var1568, $i6=var2963, $r6=var3800}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.RandomNameGenerator;	i7 := @parameter0: int;	i8 := @parameter1: int;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	i0 = virtualinvoke r1.<com.google.javascript.jscomp.RandomNameGenerator: int getNameLength(int,int)>(i7, i8);	i9 = i8 + 1;	$i13 = (int) -1;	i10 = i9 + $i13;	if i7 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction murmur3_128()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.hash.Hashing: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction murmur3_128()>();	r8 = interfaceinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashFunction: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher newHasher()>();	interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putInt(int)>(i0);	interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher putUnencodedChars(java.lang.CharSequence)>($r9);	$r3 = interfaceinvoke r8.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Hasher: com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode hash()>();	$i1 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.hash.HashCode: int asInt()>();	$i2 = $i1 & 2147483647;	i11 = $i2 % 16;	$r4 = r1.<com.google.javascript.jscomp.RandomNameGenerator: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList shuffledNonFirst>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: java.lang.Object get(int)>(i11);	r7 = (java.lang.String) $r5;	$i4 = virtualinvoke r7.<java.lang.String: int length()>();	$i3 = i10 % $i4;	$c5 = virtualinvoke r7.<java.lang.String: char charAt(int)>($i3);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c5);	$i6 = i10 / $i4;	i9 = $i6;	i7 = i7 + 1;	if $i6 > 0 goto $i13 = (int) -1;	$r6 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5