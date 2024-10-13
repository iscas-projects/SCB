(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var296 0)
(declare-sort var1226 0)
(declare-sort var2428 0)
(declare-sort var1279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2428) void)
(declare-fun cast-from-var296-to-var2428 (var296) var2428)
(declare-fun name/-1281701860 (var296) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1279_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun key/-1281701860 (var296) String)
(declare-fun type/-1281701860 (var296) Int)
(declare-fun value/-1281701860 (var296) Int)
(declare-const null-var296 var296)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var296-$assertionsDisabled Bool)
(declare-const var1333 var296) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser$Name 
(assert (not (= var1333 null-var296)))
(declare-const var661 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var661 null-String)))
(declare-const var2333 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2333 null-Int)))
(declare-const var2365 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2365 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var296-to-var2428 var1333))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1333!1 var296)
(define-const var3638 Bool var296-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.parser.DateParser$Name: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <jdk.nashorn.internal.parser.DateParser$Name: boolean $assertionsDisabled> 
(assert (not (= (ite var3638 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1951 Bool var296-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.parser.DateParser$Name: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto r0.<jdk.nashorn.internal.parser.DateParser$Name: java.lang.String name> = r1 
(assert (not (= (ite var1951 1 0) 0))) ; Cond: $z1 != 0 
(declare-const var1333!2 var296)
(assert (not (= var1333!2 null-var296)))
(assert (= (name/-1281701860 var1333!2) var661)) ; Statement: r0.<jdk.nashorn.internal.parser.DateParser$Name: java.lang.String name> = r1 
(assert true)
(define-const var3285 Int (length/-134980193 var661)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1210 Int (var1279_min/-1112089438 3 var3285)) ; Statement: $i1 = staticinvoke <java.lang.Math: int min(int,int)>(3, $i0) 
(assert (not (and true (and (>= 0 0) (>= (str.len var661) var1210) (>= var1210 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var296-to-var2428=([jdk.nashorn.internal.parser.DateParser$Name], java.lang.Object), name/-1281701860=([jdk.nashorn.internal.parser.DateParser$Name], java.lang.String), length/-134980193=([java.lang.String], int), var1279_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), key/-1281701860=([jdk.nashorn.internal.parser.DateParser$Name], java.lang.String), type/-1281701860=([jdk.nashorn.internal.parser.DateParser$Name], int), value/-1281701860=([jdk.nashorn.internal.parser.DateParser$Name], int)}
; {var296=jdk.nashorn.internal.parser.DateParser$Name, var1333=r0, var661=r1, var1226=null_type, var2333=i2, var2365=i3, var2428=java.lang.Object, var3638=$z0, var1951=$z1, var3285=$i0, var1279=java.lang.Math, var1210=$i1, var2708=$r2}
; {jdk.nashorn.internal.parser.DateParser$Name=var296, r0=var1333, r1=var661, null_type=var1226, i2=var2333, i3=var2365, java.lang.Object=var2428, $z0=var3638, $z1=var1951, $i0=var3285, java.lang.Math=var1279, $i1=var1210, $r2=var2708}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser$Name;	r1 := @parameter0: java.lang.String;	i2 := @parameter1: int;	i3 := @parameter2: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$z0 = <jdk.nashorn.internal.parser.DateParser$Name: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <jdk.nashorn.internal.parser.DateParser$Name: boolean $assertionsDisabled>;	$z1 = <jdk.nashorn.internal.parser.DateParser$Name: boolean $assertionsDisabled>;	if $z1 != 0 goto r0.<jdk.nashorn.internal.parser.DateParser$Name: java.lang.String name> = r1;	r0.<jdk.nashorn.internal.parser.DateParser$Name: java.lang.String name> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = staticinvoke <java.lang.Math: int min(int,int)>(3, $i0);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	r0.<jdk.nashorn.internal.parser.DateParser$Name: java.lang.String key> = $r2;	r0.<jdk.nashorn.internal.parser.DateParser$Name: int type> = i2;	r0.<jdk.nashorn.internal.parser.DateParser$Name: int value> = i3;	return
;block_num 3