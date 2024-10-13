(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3158 0)
(declare-sort var1678 0)
(declare-sort var1730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-var3158-to-var3158 ((arg var3158)) var3158 arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1730_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var3158 String Int Int Bool Bool) void)
(declare-const null-var3158 var3158)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var422 var3158) ; Statement: r0 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var422 null-var3158)))
(declare-const var1412 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1412 null-String)))
(declare-const var215 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var215 null-Bool)))
(define-const var3027 var3158 (cast-from-var3158-to-var3158 var422)) ; Statement: $r1 = (okhttp3.HttpUrl$Builder) r0 
(define-const var1718 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var450 Int (length/-134980193 var1412)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1268 Int (var1730_delimiterOffset/1183305642 var1412 "/\u005c" var1718 var450)) ; Statement: $i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r2, "/\\", i5, $i0) 
(assert true)
(define-const var1099 Int (length/-134980193 var1412)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i3 >= $i1 goto $z1 = 0 
(assert (not (>= var1268 var1099))) ; Negate: Cond: $i3 >= $i1  
(define-const var1267 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= specialinvoke $r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r2, i5, $i3, $z1, z0)] 
(assert true) ; Non Conditional
(assert true)
;(assert (push/1526858787 var3027 var1412 var1718 var1268 var1267 var215)) ; Statement: specialinvoke $r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r2, i5, $i3, $z1, z0) 

(declare-const var3027!1 var3158)
(declare-const var1412!1 String)
(declare-const var1718!1 Int)
(declare-const var1268!1 Int)
(declare-const var1267!1 Bool)
(declare-const var215!1 Bool)
(define-const var1446 Int (+ var1268!1 1)) ; Statement: $i4 = $i3 + 1 
(define-const var1718!2 Int var1446) ; Statement: i5 = $i4 
(assert true)
(define-const var2645 Int (length/-134980193 var1412!1)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
 ; Statement: if $i4 <= $i2 goto $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (not (<= var1446 var2645))) ; Negate: Cond: $i4 <= $i2  
(define-const var1052 var3158 (cast-from-var3158-to-var3158 var422)) ; Statement: $r3 = (okhttp3.HttpUrl$Builder) r0 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3158-to-var3158=([okhttp3.HttpUrl$Builder], okhttp3.HttpUrl$Builder), length/-134980193=([java.lang.String], int), var1730_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var3158=okhttp3.HttpUrl$Builder, var422=r0, var1412=r2, var1678=null_type, var215=z0, var3027=$r1, var1718=i5, var450=$i0, var1730=okhttp3.internal.Util, var1268=$i3, var1099=$i1, var1267=$z1, var1446=$i4, var2645=$i2, var1052=$r3}
; {okhttp3.HttpUrl$Builder=var3158, r0=var422, r2=var1412, null_type=var1678, z0=var215, $r1=var3027, i5=var1718, $i0=var450, okhttp3.internal.Util=var1730, $i3=var1268, $i1=var1099, $z1=var1267, $i4=var1446, $i2=var2645, $r3=var1052}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 3}
;stmts r0 := @this: okhttp3.HttpUrl$Builder;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = (okhttp3.HttpUrl$Builder) r0;	i5 = 0;	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r2, "/\\", i5, $i0);	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	if $i3 >= $i1 goto $z1 = 0;	$z1 = 1;	goto [?= specialinvoke $r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r2, i5, $i3, $z1, z0)];	specialinvoke $r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r2, i5, $i3, $z1, z0);	$i4 = $i3 + 1;	i5 = $i4;	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	if $i4 <= $i2 goto $i0 = virtualinvoke r2.<java.lang.String: int length()>();	$r3 = (okhttp3.HttpUrl$Builder) r0;	return $r3
;block_num 5