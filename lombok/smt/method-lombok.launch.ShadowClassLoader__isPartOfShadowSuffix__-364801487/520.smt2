(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2559 0)
(declare-sort var588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2559 var2559)
(declare-const null-String String)
(declare-const var1687 var2559) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1687 null-var2559)))
(declare-const var1469 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1469 null-String)))
(declare-const var254 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var254 null-String)))
(declare-const var2278 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2278 null-String)))
 ; Statement: if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
(assert (not (= var1469 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var3012 Bool (startsWith/-1785782452 var1469 "file:/")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:") 
(assert (= (ite var3012 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1682 Bool (startsWith/-1785782452 var1469 "jar:")) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:") 
 ; Statement: if $z1 == 0 goto return 0 
(assert (not (= (ite var1682 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var3614 Int (indexOf/-1037706067 var1469 33)) ; Statement: i11 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(33) 
(define-const var975 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i11 != $i14 goto r0 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(4, i11) 
(assert (not (not (= var3614 var975)))) ; Negate: Cond: i11 != $i14  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2559=lombok.launch.ShadowClassLoader, var1687=r1, var1469=r5, var588=null_type, var254=r4, var2278=r2, var3012=$z0, var1682=$z1, var3614=i11, var975=$i14}
; {lombok.launch.ShadowClassLoader=var2559, r1=var1687, r5=var1469, null_type=var588, r4=var254, r2=var2278, $z0=var3012, $z1=var1682, i11=var3614, $i14=var975}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:");	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:");	if $z1 == 0 goto return 0;	i11 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(33);	$i14 = (int) -1;	if i11 != $i14 goto r0 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(4, i11);	return 0
;block_num 5