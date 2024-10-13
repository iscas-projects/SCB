(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2071 0)
(declare-sort var1682 0)
(declare-sort var2117 0)
(declare-sort var3236 0)
(declare-sort var3007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun isIllegalFileNameChar/-1319771628 (var2071 Int) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun maxFileNameLength/1047094103 (var2071) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun chars/1152435826 (String) var2117)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3007_bootstrap$/695909756 (var2071 Int) var3236)
(declare-fun var2117_map/1754582279 (var2117 var3236) var2117)
(declare-fun var2117_toArray/-1053331983 (var2117) (Array Int Int))
(declare-fun String-init () String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-var2071 var2071)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1231 var2071) ; Statement: r0 := @this: org.apache.commons.io.FileSystem 
(assert (not (= var1231 null-var2071)))
(declare-const var2143 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2143 null-String)))
(declare-const var3729 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var3729 null-Int)))
(define-const var3786 Int (cast-from-Int-to-Int var3729)) ; Statement: $i5 = (int) c0 
(assert true)
(define-const var908 Bool (isIllegalFileNameChar/-1319771628 var1231 var3786)) ; Statement: $z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5) 
 ; Statement: if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= (ite var908 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var100 Int (length/-134980193 var2143)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3506 Int (maxFileNameLength/1047094103 var1231)) ; Statement: $i1 = r0.<org.apache.commons.io.FileSystem: int maxFileNameLength> 
 ; Statement: if $i2 <= $i1 goto $r14 = r1 
(assert (not (<= var100 var3506))) ; Negate: Cond: $i2 <= $i1  
(define-const var1039 Int (maxFileNameLength/1047094103 var1231)) ; Statement: $i4 = r0.<org.apache.commons.io.FileSystem: int maxFileNameLength> 
(assert (not (and true (and (>= 0 0) (>= (str.len var2143) var1039) (>= var1039 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), isIllegalFileNameChar/-1319771628=([org.apache.commons.io.FileSystem, int], boolean), length/-134980193=([java.lang.String], int), maxFileNameLength/1047094103=([org.apache.commons.io.FileSystem], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), chars/1152435826=([java.lang.CharSequence], java.util.stream.IntStream), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3007_bootstrap$/695909756=([org.apache.commons.io.FileSystem, char], java.util.function.IntUnaryOperator), var2117_map/1754582279=([java.util.stream.IntStream, java.util.function.IntUnaryOperator], java.util.stream.IntStream), var2117_toArray/-1053331983=([java.util.stream.IntStream], int[]), String-init=([], java.lang.String), getLength-Arr-Int-1=([int[]], int), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var2071=org.apache.commons.io.FileSystem, var1231=r0, var2143=r1, var1682=null_type, var3729=c0, var3786=$i5, var908=$z0, var100=$i2, var3506=$i1, var1039=$i4, var843=$r14, var2117=java.util.stream.IntStream, var3590=$r3, var3236=java.util.function.IntUnaryOperator, var3007=org.apache.commons.io.FileSystem$lambda_toLegalFileName_0__1, var623=$r2, var930=$r4, var1820=$r6, var3739=$r16, var2405=$i3, var2108=0}
; {org.apache.commons.io.FileSystem=var2071, r0=var1231, r1=var2143, null_type=var1682, c0=var3729, $i5=var3786, $z0=var908, $i2=var100, $i1=var3506, $i4=var1039, $r14=var843, java.util.stream.IntStream=var2117, $r3=var3590, java.util.function.IntUnaryOperator=var3236, org.apache.commons.io.FileSystem$lambda_toLegalFileName_0__1=var3007, $r2=var623, $r4=var930, $r6=var1820, $r16=var3739, $i3=var2405, 0=var2108}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.CharSequence: java.util.stream.IntStream chars()>;	<java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.CharSequence: java.util.stream.IntStream chars()>": 1,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r0 := @this: org.apache.commons.io.FileSystem;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$i5 = (int) c0;	$z0 = specialinvoke r0.<org.apache.commons.io.FileSystem: boolean isIllegalFileNameChar(int)>($i5);	if $z0 == 0 goto $i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = r0.<org.apache.commons.io.FileSystem: int maxFileNameLength>;	if $i2 <= $i1 goto $r14 = r1;	$i4 = r0.<org.apache.commons.io.FileSystem: int maxFileNameLength>;	$r14 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i4);	goto [?= $r3 = virtualinvoke $r14.<java.lang.String: java.util.stream.IntStream chars()>()];	$r3 = virtualinvoke $r14.<java.lang.String: java.util.stream.IntStream chars()>();	$r2 = staticinvoke <org.apache.commons.io.FileSystem$lambda_toLegalFileName_0__1: java.util.function.IntUnaryOperator bootstrap$(org.apache.commons.io.FileSystem,char)>(r0, c0);	$r4 = interfaceinvoke $r3.<java.util.stream.IntStream: java.util.stream.IntStream map(java.util.function.IntUnaryOperator)>($r2);	$r6 = interfaceinvoke $r4.<java.util.stream.IntStream: int[] toArray()>();	$r16 = new java.lang.String;	$i3 = lengthof $r6;	specialinvoke $r16.<java.lang.String: void <init>(int[],int,int)>($r6, 0, $i3);	return $r16
;block_num 4