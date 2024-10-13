(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3263 0)
(declare-sort var2053 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun isPartOfShadowSuffixJarBased/-787216222 (var3263 String String) Bool)
(declare-const null-var3263 var3263)
(declare-const null-String String)
(declare-const var3954 var3263) ; Statement: r1 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3954 null-var3263)))
(declare-const var3988 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3988 null-String)))
(declare-const var3200 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3200 null-String)))
(declare-const var2751 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2751 null-String)))
 ; Statement: if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
(assert (not (= var3988 null-String))) ; Cond: r5 != null 
(assert true)
(define-const var3207 Bool (startsWith/-1785782452 var3988 "file:/")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:") 
(assert (= (ite var3207 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1856 Bool (startsWith/-1785782452 var3988 "jar:")) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:") 
 ; Statement: if $z1 == 0 goto return 0 
(assert (not (= (ite var1856 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var323 Int (indexOf/-1037706067 var3988 33)) ; Statement: i11 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(33) 
(define-const var409 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i11 != $i14 goto r0 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(4, i11) 
(assert (not (= var323 var409))) ; Cond: i11 != $i14 
(assert (not (and true (and (>= 4 0) (>= (str.len var3988) var323) (>= var323 4)))))
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), isPartOfShadowSuffixJarBased/-787216222=([lombok.launch.ShadowClassLoader, java.lang.String, java.lang.String], boolean)}
; {var3263=lombok.launch.ShadowClassLoader, var3954=r1, var3988=r5, var2053=null_type, var3200=r4, var2751=r2, var3207=$z0, var1856=$z1, var323=i11, var409=$i14, var1309=r0, var3944=$z2}
; {lombok.launch.ShadowClassLoader=var3263, r1=var3954, r5=var3988, null_type=var2053, r4=var3200, r2=var2751, $z0=var3207, $z1=var1856, i11=var323, $i14=var409, r0=var1309, $z2=var3944}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: lombok.launch.ShadowClassLoader;	r5 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	if r5 != null goto $z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	$z0 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	if $z0 == 0 goto $z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:");	$z1 = virtualinvoke r5.<java.lang.String: boolean startsWith(java.lang.String)>("jar:");	if $z1 == 0 goto return 0;	i11 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(33);	$i14 = (int) -1;	if i11 != $i14 goto r0 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(4, i11);	r0 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(4, i11);	$z2 = specialinvoke r1.<lombok.launch.ShadowClassLoader: boolean isPartOfShadowSuffixJarBased(java.lang.String,java.lang.String)>(r0, r2);	return $z2
;block_num 5