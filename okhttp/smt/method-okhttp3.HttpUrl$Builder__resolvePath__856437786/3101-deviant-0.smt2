(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var673 0)
(declare-sort var1024 0)
(declare-sort var1547 0)
(declare-sort var702 0)
(declare-sort var1117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun encodedPathSegments/627676127 (var673) var1547)
(declare-fun var1547_clear/2124191932 (var1547) void)
(declare-fun var1547_add/328494887 (var1547 var702) Bool)
(declare-fun cast-from-String-to-var702 (String) var702)
(declare-fun var1117_delimiterOffset/1183305642 (String String Int Int) Int)
(declare-fun push/1526858787 (var673 String Int Int Bool Bool) void)
(declare-const null-var673 var673)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3014 var673) ; Statement: r1 := @this: okhttp3.HttpUrl$Builder 
(assert (not (= var3014 null-var673)))
(declare-const var3505 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3505 null-String)))
(declare-const var3750 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3750 null-Int)))
(declare-const var192 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var192 null-Int)))
(define-const var1295 Int var3750) ; Statement: i6 = i0 
 ; Statement: if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
(assert (not (= var3750 var192))) ; Cond: i0 != i1 
(assert (not (and true (and (> (str.len var3505) var3750) (<= 0 var3750)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), encodedPathSegments/627676127=([okhttp3.HttpUrl$Builder], java.util.List), var1547_clear/2124191932=([java.util.List], void), var1547_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var702=([java.lang.String], java.lang.Object), var1117_delimiterOffset/1183305642=([java.lang.String, java.lang.String, int, int], int), push/1526858787=([okhttp3.HttpUrl$Builder, java.lang.String, int, int, boolean, boolean], void)}
; {var673=okhttp3.HttpUrl$Builder, var3014=r1, var3505=r0, var1024=null_type, var3750=i0, var192=i1, var1295=i6, var3542=c2, var2186=$i8, var1184=$i9, var1547=java.util.List, var3916=$r2, var533=$r3, var702=java.lang.Object, var2980="", var3572=i7, var1117=okhttp3.internal.Util, var3814=i3, var3286=$z2, var3692=$z1, var1426=1}
; {okhttp3.HttpUrl$Builder=var673, r1=var3014, r0=var3505, null_type=var1024, i0=var3750, i1=var192, i6=var1295, c2=var3542, $i8=var2186, $i9=var1184, java.util.List=var1547, $r2=var3916, $r3=var533, java.lang.Object=var702, ""=var2980, i7=var3572, okhttp3.internal.Util=var1117, i3=var3814, $z2=var3286, $z1=var3692, 1=var1426}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: okhttp3.HttpUrl$Builder;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	i6 = i0;	if i0 != i1 goto c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	$i8 = (int) c2;	if $i8 == 47 goto $r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$i9 = (int) c2;	if $i9 != 92 goto $r5 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	$r2 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r2.<java.util.List: void clear()>();	$r3 = r1.<okhttp3.HttpUrl$Builder: java.util.List encodedPathSegments>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>("");	i6 = i0 + 1;	goto [?= i7 = i6];	i7 = i6;	if i7 >= i1 goto return;	i3 = staticinvoke <okhttp3.internal.Util: int delimiterOffset(java.lang.String,java.lang.String,int,int)>(r0, "/\\", i7, i1);	if i3 >= i1 goto $z2 = 0;	$z2 = 1;	$z1 = 1;	goto [?= specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1)];	specialinvoke r1.<okhttp3.HttpUrl$Builder: void push(java.lang.String,int,int,boolean,boolean)>(r0, i7, i3, $z2, 1);	i7 = i3;	if $z1 == 0 goto (branch);	if i7 >= i1 goto return;	return
;block_num 11