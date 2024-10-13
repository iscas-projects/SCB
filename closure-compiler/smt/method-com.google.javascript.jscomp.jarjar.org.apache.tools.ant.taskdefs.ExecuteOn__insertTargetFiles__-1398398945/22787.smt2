(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var526 0)
(declare-sort var995 0)
(declare-sort var3661 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var995_arraycopy/-325913181 (var3661 Int var3661 Int Int) void)
(declare-fun cast-from-__Array__Int__String__-to-var3661 ((Array Int String)) var3661)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1343 (Array Int String)) ; Statement: r1 := @parameter0: java.lang.String[] 
(assert (not (= var1343 null-__Array__Int__String__)))
(declare-const var3065 (Array Int String)) ; Statement: r2 := @parameter1: java.lang.String[] 
(assert (not (= var3065 null-__Array__Int__String__)))
(declare-const var1397 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1397 null-Int)))
(declare-const var859 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var859 null-String)))
(declare-const var1231 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var1231 null-String)))
(assert true)
(define-const var1937 Bool (isEmpty/-1285796103 var859)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto i3 = 0 
(assert (not (= (ite var1937 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3209 Bool (isEmpty/-1285796103 var1231)) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto i3 = 0 
(assert (not (= (ite var3209 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var99 Int (getLength-Arr-String-1 var1343)) ; Statement: $i2 = lengthof r1 
;(assert (var995_arraycopy/-325913181 (cast-from-__Array__Int__String__-to-var3661 var1343) 0 (cast-from-__Array__Int__String__-to-var3661 var3065) var1397 var99)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r1, 0, r2, i0, $i2) 

(declare-const var1343!1 (Array Int String))
(declare-const var3427 Int)
(declare-const var3065!1 (Array Int String))
(declare-const var1397!1 Int)
(declare-const var99!1 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), getLength-Arr-String-1=([java.lang.String[]], int), var995_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__String__-to-var3661=([java.lang.String[]], java.lang.Object)}
; {var1343=r1, var3065=r2, var1397=i0, var859=r0, var526=null_type, var1231=r6, var1937=$z0, var3209=$z1, var99=$i2, var995=java.lang.System, var3661=java.lang.Object, var3427=0}
; {r1=var1343, r2=var3065, i0=var1397, r0=var859, null_type=var526, r6=var1231, $z0=var1937, $z1=var3209, $i2=var99, java.lang.System=var995, java.lang.Object=var3661, 0=var3427}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 2}
;stmts r1 := @parameter0: java.lang.String[];	r2 := @parameter1: java.lang.String[];	i0 := @parameter2: int;	r0 := @parameter3: java.lang.String;	r6 := @parameter4: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto i3 = 0;	$z1 = virtualinvoke r6.<java.lang.String: boolean isEmpty()>();	if $z1 == 0 goto i3 = 0;	$i2 = lengthof r1;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>(r1, 0, r2, i0, $i2);	goto [?= return];	return
;block_num 4