(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3236 0)
(declare-sort var2114 0)
(declare-sort var1140 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var3236-to-var3236 ((arg var3236)) var3236 arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1140_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var3236 String Int Int Bool Bool) void)
(declare-const null-var3236 var3236)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2206 var3236) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var2206 null-var3236)))
(declare-const var3806 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3806 null-String)))
(declare-const var3306 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3306 null-Bool)))
(define-const var633 var3236 (cast-from-var3236-to-var3236 var2206)) ; Statement: $r1 = (okhttp3.HttpUrl$Builder) r0 
(define-const var3547 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2327 Int (length/-134980193 var3806)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1609 Int (var1140_delimiterOffset/1183305642 var3806 "/\u005c" var3547 var2327)) ; Statement: $i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r2, "/\\", i5, $i0) 
(assert true)
(define-const var1506 Int (length/-134980193 var3806)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i3 >= $i1 goto $z1 = 0 
(assert (>= var1609 var1506)) ; Cond: $i3 >= $i1 
(define-const var173 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(assert true)
;(assert (push/1526858787 var633 var3806 var3547 var1609 var173 var3306)) ; Statement: specialinvoke $r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r2, i5, $i3, $z1, z0) 

(declare-const var633!1 var3236)
(declare-const var3806!1 String)
(declare-const var3547!1 Int)
(declare-const var1609!1 Int)
(declare-const var173!1 Bool)
(declare-const var3306!1 Bool)
(define-const var3999 Int (+ var1609!1 1)) ; Statement: $i4 = $i3 + 1 
(define-const var3547!2 Int var3999) ; Statement: i5 = $i4 
(assert true)
(define-const var1690 Int (length/-134980193 var3806!1)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= $i2 goto $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (not (<= var3999 var1690))) ; Negate: Cond: $i4 <= $i2  
(define-const var2468 var3236 (cast-from-var3236-to-var3236 var2206)) ; Statement: $r3 = (okhttp3.HttpUrl$Builder) r0 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3236-to-var3236=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), length/-134980193=([java.lang.String], int), var1140_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var3236=okhttp3.HttpUrl$Builder, var2206=r0, var3806=r2, var2114=null_type, var3306=z0, var633=$r1, var3547=i5, var2327=$i0, var1140=okhttp3.internal.Util, var1609=$i3, var1506=$i1, var173=$z1, var3999=$i4, var1690=$i2, var2468=$r3}
; {okhttp3.HttpUrl$Builder=var3236, r0=var2206, r2=var3806, null_type=var2114, z0=var3306, $r1=var633, i5=var3547, $i0=var2327, okhttp3.internal.Util=var1140, $i3=var1609, $i1=var1506, $z1=var173, $i4=var3999, $i2=var1690, $r3=var2468}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 3}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = (okhttp3.HttpUrl$Builder) r0;	i5 = 0;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r2, "/\\", i5, $i0);	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	if $i3 >= $i1 goto $z1 = 0;	$z1 = 0;	specialinvoke $r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r2, i5, $i3, $z1, z0);	$i4 = $i3 + 1;	i5 = $i4;	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	if $i4 <= $i2 goto $i0 = virtualinvoke r2.<java.lang.String: int length()>();	$r3 = (okhttp3.HttpUrl$Builder) r0;	return $r3
;block_num 5