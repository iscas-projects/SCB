(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var875 0)
(declare-sort var2301 0)
(declare-sort var1824 0)
(declare-sort var3384 0)
(declare-sort var1991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isIllegalFileNameChar/-1319771628 (var875 Int) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun maxFileNameLength/1047094103 (var875) Int)
(declare-fun chars/1152435826 (String) var1824)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1991_bootstrap$/695909756 (var875 Int) var3384)
(declare-fun var1824_map/1754582279 (var1824 var3384) var1824)
(declare-fun var1824_toArray/-1053331983 (var1824) (Array Int Int))
(declare-fun String-init () String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-var875 var875)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var153 var875) ; Statement: r0 := @this: org.apache.commons.io.FileSystem 
(assert (not (= var153 null-var875)))
(declare-const var458 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var458 null-String)))
(declare-const var3571 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var3571 null-Int)))
(define-const var2071 Int (cast-from-Int-to-Int var3571)) ; Statement: $i5 = (int) c0 
(assert true)
(define-const var566 Bool (isIllegalFileNameChar/-1319771628 var153 var2071)) ; Statement: $z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= (ite var566 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1178 Int (length/-134980193 var458)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1941 Int (maxFileNameLength/1047094103 var153)) ; Statement: $i1 = r0.<org.apache.commons.io.FileSystem: int maxFileNameLength> 
 ; Statement: if $i2 <= $i1 goto $r14 = r1 
(assert (<= var1178 var1941)) ; Cond: $i2 <= $i1 
(define-const var1106 String var458) ; Statement: $r14 = r1 
(assert true) ; Non Conditional
(assert true)
(define-const var2323 var1824 (chars/1152435826 (cast-from-String-to-String var1106))) ; Statement: $r3 = virtualinvoke $r14.<java.lang.String: java.util.stream.IntStream chars()>() 
(define-const var1097 var3384 (var1991_bootstrap$/695909756 var153 var3571)) ; Statement: $r2 = staticinvoke <org.apache.commons.io.FileSystem$lambda_toLegalFileName_0__1: java.util.function.IntUnaryOperator bootstrap$(org.apache.commons.io.FileSystem,char)>(r0, c0) 
(define-const var729 var1824 (var1824_map/1754582279 var2323 var1097)) ; Statement: $r4 = interfaceinvoke $r3.<java.util.stream.IntStream: java.util.stream.IntStream map(java.util.function.IntUnaryOperator)>($r2) 
(define-const var1499 (Array Int Int) (var1824_toArray/-1053331983 var729)) ; Statement: $r6 = interfaceinvoke $r4.<java.util.stream.IntStream: int[] toArray()>() 
(define-const var189 String String-init) ; Statement: $r16 = new java.lang.String 
(define-const var3538 Int (getLength-Arr-Int-1 var1499)) ; Statement: $i3 = lengthof $r6 
(assert true)
;(assert (<init>/1703972987 var189 var1499 0 var3538)) ; Statement: specialinvoke $r16.<java.lang.String: void <init>(int[],int,int)>($r6, 0, $i3) 

(declare-const var189!1 String)
(declare-const var1499!1 (Array Int Int))
(declare-const var2114 Int)
(declare-const var3538!1 Int)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), isIllegalFileNameChar/-1319771628=([org.apache.commons.io.FileSystem, int], boolean), length/-134980193=([java.lang.String], int), maxFileNameLength/1047094103=([org.apache.commons.io.FileSystem], int), chars/1152435826=([java.lang.CharSequence], java.util.stream.IntStream), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1991_bootstrap$/695909756=([org.apache.commons.io.FileSystem, char], java.util.function.IntUnaryOperator), var1824_map/1754582279=([java.util.stream.IntStream, java.util.function.IntUnaryOperator], java.util.stream.IntStream), var1824_toArray/-1053331983=([java.util.stream.IntStream], int[]), String-init=([], java.lang.String), getLength-Arr-Int-1=([int[]], int), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var875=org.apache.commons.io.FileSystem, var153=r0, var458=r1, var2301=null_type, var3571=c0, var2071=$i5, var566=$z0, var1178=$i2, var1941=$i1, var1106=$r14, var1824=java.util.stream.IntStream, var2323=$r3, var3384=java.util.function.IntUnaryOperator, var1991=org.apache.commons.io.FileSystem$lambda_toLegalFileName_0__1, var1097=$r2, var729=$r4, var1499=$r6, var189=$r16, var3538=$i3, var2114=0}
; {org.apache.commons.io.FileSystem=var875, r0=var153, r1=var458, null_type=var2301, c0=var3571, $i5=var2071, $z0=var566, $i2=var1178, $i1=var1941, $r14=var1106, java.util.stream.IntStream=var1824, $r3=var2323, java.util.function.IntUnaryOperator=var3384, org.apache.commons.io.FileSystem$lambda_toLegalFileName_0__1=var1991, $r2=var1097, $r4=var729, $r6=var1499, $r16=var189, $i3=var3538, 0=var2114}
;seq <java.lang.String: int length()>;	<java.lang.CharSequence: java.util.stream.IntStream chars()>;	<java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.CharSequence: java.util.stream.IntStream chars()>": 1,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.io.FileSystem;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$i5 = (int) c0;	$z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5);	if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = r0.<org.apache.commons.io.FileSystem: int maxFileNameLength>;	if $i2 <= $i1 goto $r14 = r1;	$r14 = r1;	$r3 = virtualinvoke $r14.<java.lang.String: java.util.stream.IntStream chars()>();	$r2 = staticinvoke <org.apache.commons.io.FileSystem$lambda_toLegalFileName_0__1: java.util.function.IntUnaryOperator bootstrap$(org.apache.commons.io.FileSystem,char)>(r0, c0);	$r4 = interfaceinvoke $r3.<java.util.stream.IntStream: java.util.stream.IntStream map(java.util.function.IntUnaryOperator)>($r2);	$r6 = interfaceinvoke $r4.<java.util.stream.IntStream: int[] toArray()>();	$r16 = new java.lang.String;	$i3 = lengthof $r6;	specialinvoke $r16.<java.lang.String: void <init>(int[],int,int)>($r6, 0, $i3);	return $r16
;block_num 4