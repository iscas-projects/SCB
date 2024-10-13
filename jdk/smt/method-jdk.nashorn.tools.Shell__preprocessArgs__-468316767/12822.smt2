(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var29 0)
(declare-sort var1796 0)
(declare-sort var1899 0)
(declare-sort var3291 0)
(declare-sort var480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var29-init () var29)
(declare-fun <init>/-325640736 (var29) void)
(declare-fun var1899_asList/1779083644 ((Array Int var3291)) var1796)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var3291__ ((Array Int String)) (Array Int var3291))
(declare-fun var1796_addAll/-525367613 (var1796 var480) Bool)
(declare-fun cast-from-var29-to-var1796 (var29) var1796)
(declare-fun cast-from-var1796-to-var480 (var1796) var480)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1796_size/-959786421 (var1796) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1796_toArray/-775711681 (var1796 (Array Int var3291)) (Array Int var3291))
(declare-fun cast-from-__Array__Int__var3291__-to-__Array__Int__String__ ((Array Int var3291)) (Array Int String))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3296 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var3296 null-__Array__Int__String__)))
(define-const var3637 Int (getLength-Arr-String-1 var3296)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 0 goto $r23 = new java.util.ArrayList 
(assert (not (= var3637 0))) ; Cond: $i0 != 0 
(define-const var3573 var29 var29-init) ; Statement: $r23 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3573)) ; Statement: specialinvoke $r23.<java.util.ArrayList: void <init>()>() 

(declare-const var3573!1 var29)
(define-const var1253 var1796 (var1899_asList/1779083644 (cast-from-__Array__Int__String__-to-__Array__Int__var3291__ var3296))) ; Statement: $r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r0) 
;(assert (var1796_addAll/-525367613 (cast-from-var29-to-var1796 var3573!1) (cast-from-var1796-to-var480 var1253))) ; Statement: interfaceinvoke $r23.<java.util.List: boolean addAll(java.util.Collection)>($r2) 

(declare-const var3573!2 var29)
(declare-const var1253!1 var1796)
(define-const var160 String (select var3296 0)) ; Statement: $r3 = r0[0] 
(assert true)
(define-const var1614 Bool (startsWith/-1785782452 var160 "-")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("-") 
 ; Statement: if $z0 == 0 goto $i6 = (int) -1 
(assert (= (ite var1614 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2299 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var1759 Int var2299) ; Statement: i2 = $i6 
(define-const var1241 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2022 Int (var1796_size/-959786421 (cast-from-var29-to-var1796 var3573!2))) ; Statement: $i4 = interfaceinvoke $r23.<java.util.List: int size()>() 
 ; Statement: if i3 >= $i4 goto $i8 = (int) -1 
(assert (>= var1241 var2022)) ; Cond: i3 >= $i4 
(define-const var3176 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i2 == $i8 goto $r4 = newarray (java.lang.String)[0] 
(assert (= var1759 var3176)) ; Cond: i2 == $i8 
(define-const var2572 (Array Int String) arr-String-init) ; Statement: $r4 = newarray (java.lang.String)[0] 
(define-const var3028 (Array Int var3291) (var1796_toArray/-775711681 (cast-from-var29-to-var1796 var3573!2) (cast-from-__Array__Int__String__-to-__Array__Int__var3291__ var2572))) ; Statement: $r5 = interfaceinvoke $r23.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4) 
(define-const var1567 (Array Int String) (cast-from-__Array__Int__var3291__-to-__Array__Int__String__ var3028)) ; Statement: $r6 = (java.lang.String[]) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var29-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var1899_asList/1779083644=([java.lang.Object[]], java.util.List), cast-from-__Array__Int__String__-to-__Array__Int__var3291__=([java.lang.String[]], java.lang.Object[]), var1796_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var29-to-var1796=([java.util.ArrayList], java.util.List), cast-from-var1796-to-var480=([java.util.List], java.util.Collection), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), cast-from-Int-to-Int=([int], int), var1796_size/-959786421=([java.util.List], int), arr-String-init=([], java.lang.String[]), var1796_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var3291__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var3296=r0, var3637=$i0, var29=java.util.ArrayList, var3573=$r23, var1796=java.util.List, var1899=java.util.Arrays, var3291=java.lang.Object, var1253=$r2, var480=java.util.Collection, var160=$r3, var1614=$z0, var2299=$i6, var1759=i2, var1241=i3, var2022=$i4, var3176=$i8, var2572=$r4, var3028=$r5, var1567=$r6}
; {r0=var3296, $i0=var3637, java.util.ArrayList=var29, $r23=var3573, java.util.List=var1796, java.util.Arrays=var1899, java.lang.Object=var3291, $r2=var1253, java.util.Collection=var480, $r3=var160, $z0=var1614, $i6=var2299, i2=var1759, i3=var1241, $i4=var2022, $i8=var3176, $r4=var2572, $r5=var3028, $r6=var1567}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 != 0 goto $r23 = new java.util.ArrayList;	$r23 = new java.util.ArrayList;	specialinvoke $r23.<java.util.ArrayList: void <init>()>();	$r2 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r0);	interfaceinvoke $r23.<java.util.List: boolean addAll(java.util.Collection)>($r2);	$r3 = r0[0];	$z0 = virtualinvoke $r3.<java.lang.String: boolean startsWith(java.lang.String)>("-");	if $z0 == 0 goto $i6 = (int) -1;	$i6 = (int) -1;	i2 = $i6;	i3 = 0;	$i4 = interfaceinvoke $r23.<java.util.List: int size()>();	if i3 >= $i4 goto $i8 = (int) -1;	$i8 = (int) -1;	if i2 == $i8 goto $r4 = newarray (java.lang.String)[0];	$r4 = newarray (java.lang.String)[0];	$r5 = interfaceinvoke $r23.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r4);	$r6 = (java.lang.String[]) $r5;	return $r6
;block_num 6