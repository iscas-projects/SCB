(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1037 0)
(declare-sort var1346 0)
(declare-sort var2896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1346_stackTraceToString/237506299 (var1037) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun var2896_max/1360571700 (Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1037 var1037)
(declare-const var2708 var1037) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var2708 null-var1037)))
(define-const var257 String (var1346_stackTraceToString/237506299 var2708)) ; Statement: r1 = staticinvoke <com.mysql.cj.util.Util: java.lang.String stackTraceToString(java.lang.Throwable)>(r0) 
(define-const var296 String "Caller information not available") ; Statement: r8 = "Caller information not available" 
(assert true)
(define-const var1087 Int (lastIndexOf/-618837785 var257 "com.mysql.cj")) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("com.mysql.cj") 
(assert true)
(define-const var1641 Int (lastIndexOf/-618837785 var257 "com.mysql.cj.core")) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("com.mysql.cj.core") 
(define-const var884 Int (var2896_max/1360571700 var1087 var1641)) ; Statement: $i3 = staticinvoke <java.lang.Math: int max(int,int)>($i1, $i0) 
(assert true)
(define-const var1451 Int (lastIndexOf/-618837785 var257 "com.mysql.cj.jdbc")) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("com.mysql.cj.jdbc") 
(define-const var2688 Int (var2896_max/1360571700 var884 var1451)) ; Statement: i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2) 
(define-const var3448 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i4 == $i14 goto $z1 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("\tat ") 
(assert (= var2688 var3448)) ; Cond: i4 == $i14 
(assert true)
(define-const var1291 Bool (startsWith/-1785782452 var296 "\tat ")) ; Statement: $z1 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("\tat ") 
 ; Statement: if $z1 != 0 goto return r8 
(assert (not (= (ite var1291 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1346_stackTraceToString/237506299=([java.lang.Throwable], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), var2896_max/1360571700=([int, int], int), cast-from-Int-to-Int=([int], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1037=java.lang.Throwable, var2708=r0, var1346=com.mysql.cj.util.Util, var257=r1, var296=r8, var1087=$i1, var1641=$i0, var2896=java.lang.Math, var884=$i3, var1451=$i2, var2688=i4, var3448=$i14, var1291=$z1}
; {java.lang.Throwable=var1037, r0=var2708, com.mysql.cj.util.Util=var1346, r1=var257, r8=var296, $i1=var1087, $i0=var1641, java.lang.Math=var2896, $i3=var884, $i2=var1451, i4=var2688, $i14=var3448, $z1=var1291}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 3,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.Throwable;	r1 = staticinvoke <com.mysql.cj.util.Util: java.lang.String stackTraceToString(java.lang.Throwable)>(r0);	r8 = "Caller information not available";	$i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("com.mysql.cj");	$i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("com.mysql.cj.core");	$i3 = staticinvoke <java.lang.Math: int max(int,int)>($i1, $i0);	$i2 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("com.mysql.cj.jdbc");	i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, $i2);	$i14 = (int) -1;	if i4 == $i14 goto $z1 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("\tat ");	$z1 = virtualinvoke r8.<java.lang.String: boolean startsWith(java.lang.String)>("\tat ");	if $z1 != 0 goto return r8;	return r8
;block_num 3