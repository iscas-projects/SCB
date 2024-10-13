(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-fun arr-Int-init () (Array Int Int))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3064 var3064)
(declare-const null-String String)
(declare-const var364 var3064) ; Statement: r2 := @this: cn.hutool.core.codec.Base32Codec$Base32Decoder 
(assert (not (= var364 null-var3064)))
(declare-const var1261 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1261 null-String)))
(define-const var29 String (String_toString/-1426662429 var1261)) ; Statement: r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var3646 Bool (endsWith/985337093 var29 "=")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("=") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= (ite var3646 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3605 Int (indexOf/-1209756239 var29 "=")) ; Statement: $i27 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("=") 
(define-const var970 Int (* var3605 5)) ; Statement: $i28 = $i27 * 5 
(define-const var1930 Int (div var970 8)) ; Statement: $i29 = $i28 / 8 
 ; Statement: goto [?= $r5 = newarray (byte)[$i29]] 
(assert true) ; Non Conditional
(define-const var1110 (Array Int Int) arr-Int-init) ; Statement: $r5 = newarray (byte)[$i29] 
(define-const var1314 Int 0) ; Statement: i30 = 0 
(define-const var2676 Int 0) ; Statement: i31 = 0 
(define-const var1685 Int 0) ; Statement: i32 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2362 Int (length/-134980193 var29)) ; Statement: $i33 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i30 >= $i33 goto return $r5 
(assert (>= var1314 var2362)) ; Cond: i30 >= $i33 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), indexOf/-1209756239=([java.lang.String, java.lang.String], int), arr-Int-init=([], byte[]), length/-134980193=([java.lang.String], int)}
; {var3064=cn.hutool.core.codec.Base32Codec$Base32Decoder, var364=r2, var1261=r0, var29=r1, var3646=$z0, var3605=$i27, var970=$i28, var1930=$i29, var1110=$r5, var1314=i30, var2676=i31, var1685=i32, var2362=$i33}
; {cn.hutool.core.codec.Base32Codec$Base32Decoder=var3064, r2=var364, r0=var1261, r1=var29, $z0=var3646, $i27=var3605, $i28=var970, $i29=var1930, $r5=var1110, i30=var1314, i31=var2676, i32=var1685, $i33=var2362}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r2 := @this: cn.hutool.core.codec.Base32Codec$Base32Decoder;	r0 := @parameter0: java.lang.CharSequence;	r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("=");	if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i27 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("=");	$i28 = $i27 * 5;	$i29 = $i28 / 8;	goto [?= $r5 = newarray (byte)[$i29]];	$r5 = newarray (byte)[$i29];	i30 = 0;	i31 = 0;	i32 = 0;	$i33 = virtualinvoke r1.<java.lang.String: int length()>();	if i30 >= $i33 goto return $r5;	return $r5
;block_num 5