(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3685 0)
(declare-sort var3918 0)
(declare-sort var2419 0)
(declare-sort var996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3918-init () var3918)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun <init>/1228603609 (var3918 Int) void)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun isInterface/-352192428 (ClassObject) Bool)
(declare-fun var2419_size/-959786421 (var2419) Int)
(declare-fun cast-from-var3918-to-var2419 (var3918) var2419)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var996-init () var996)
(declare-fun <init>/875830710 (var996 String) void)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3685 var3685)
(declare-const null-ClassObject ClassObject)
(declare-const var708 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var708 null-__Array__Int__ClassObject__)))
(declare-const var1162 var3685) ; Statement: r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader 
(assert (not (= var1162 null-var3685)))
(define-const var694 ClassObject null-ClassObject) ; Statement: r24 = null 
(define-const var1843 var3918 var3918-init) ; Statement: $r26 = new java.util.ArrayList 
(define-const var3970 Int (getLength-Arr-ClassObject-1 var708)) ; Statement: $i0 = lengthof r1 
(assert true)
;(assert (<init>/1228603609 var1843 var3970)) ; Statement: specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var1843!1 var3918)
(declare-const var3970!1 Int)
(define-const var280 Int (getLength-Arr-ClassObject-1 var708)) ; Statement: i1 = lengthof r1 
(define-const var2801 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto (branch) 
(assert (not (>= var2801 var280))) ; Negate: Cond: i4 >= i1  
(define-const var3929 ClassObject (select var708 var2801)) ; Statement: r7 = r1[i4] 
(assert true)
(define-const var2458 Int (getModifiers/698981592 var3929)) ; Statement: i2 = virtualinvoke r7.<java.lang.Class: int getModifiers()>() 
(assert true)
(define-const var1827 Bool (isInterface/-352192428 var3929)) ; Statement: $z0 = virtualinvoke r7.<java.lang.Class: boolean isInterface()>() 
 ; Statement: if $z0 != 0 goto $i3 = interfaceinvoke $r26.<java.util.List: int size()>() 
(assert (not (= (ite var1827 1 0) 0))) ; Cond: $z0 != 0 
(define-const var90 Int (var2419_size/-959786421 (cast-from-var3918-to-var2419 var1843!1))) ; Statement: $i3 = interfaceinvoke $r26.<java.util.List: int size()>() 
(define-const var3217 Int (cast-from-Int-to-Int 65535)) ; Statement: $i6 = (int) 65535 
 ; Statement: if $i3 <= $i6 goto interfaceinvoke $r26.<java.util.List: boolean add(java.lang.Object)>(r7) 
(assert (not (<= var90 var3217))) ; Negate: Cond: $i3 <= $i6  
(define-const var2757 var996 var996-init) ; Statement: $r30 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2757 "interface limit exceeded")) ; Statement: specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("interface limit exceeded") 

(declare-const var2757!1 var996)
(declare-const var2063 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var3918-init=([], java.util.ArrayList), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), <init>/1228603609=([java.util.ArrayList, int], void), getModifiers/698981592=([java.lang.Class], int), isInterface/-352192428=([java.lang.Class], boolean), var2419_size/-959786421=([java.util.List], int), cast-from-var3918-to-var2419=([java.util.ArrayList], java.util.List), cast-from-Int-to-Int=([int], int), var996-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var708=r1, var3685=jdk.nashorn.internal.runtime.linker.ClassAndLoader, var1162=r3, var694=r24, var3918=java.util.ArrayList, var1843=$r26, var3970=$i0, var280=i1, var2801=i4, var3929=r7, var2458=i2, var1827=$z0, var2419=java.util.List, var90=$i3, var3217=$i6, var996=java.lang.IllegalArgumentException, var2757=$r30, var2063="interface limit exceeded"}
; {r1=var708, jdk.nashorn.internal.runtime.linker.ClassAndLoader=var3685, r3=var1162, r24=var694, java.util.ArrayList=var3918, $r26=var1843, $i0=var3970, i1=var280, i4=var2801, r7=var3929, i2=var2458, $z0=var1827, java.util.List=var2419, $i3=var90, $i6=var3217, java.lang.IllegalArgumentException=var996, $r30=var2757, "interface limit exceeded"=var2063}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.Class[];	r3 := @parameter1: jdk.nashorn.internal.runtime.linker.ClassAndLoader;	r24 = null;	$r26 = new java.util.ArrayList;	$i0 = lengthof r1;	specialinvoke $r26.<java.util.ArrayList: void <init>(int)>($i0);	i1 = lengthof r1;	i4 = 0;	if i4 >= i1 goto (branch);	r7 = r1[i4];	i2 = virtualinvoke r7.<java.lang.Class: int getModifiers()>();	$z0 = virtualinvoke r7.<java.lang.Class: boolean isInterface()>();	if $z0 != 0 goto $i3 = interfaceinvoke $r26.<java.util.List: int size()>();	$i3 = interfaceinvoke $r26.<java.util.List: int size()>();	$i6 = (int) 65535;	if $i3 <= $i6 goto interfaceinvoke $r26.<java.util.List: boolean add(java.lang.Object)>(r7);	$r30 = new java.lang.IllegalArgumentException;	specialinvoke $r30.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("interface limit exceeded");	throw $r30
;block_num 5