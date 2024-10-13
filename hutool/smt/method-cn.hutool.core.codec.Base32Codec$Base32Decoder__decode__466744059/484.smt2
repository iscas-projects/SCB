(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-const null-var1206 var1206)
(declare-const null-String String)
(declare-const var3355 var1206) ; Statement: r2 := @this: cn.hutool.core.codec.Base32Codec$Base32Decoder 
(assert (not (= var3355 null-var1206)))
(declare-const var3864 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3864 null-String)))
(define-const var1912 String (String_toString/-1426662429 var3864)) ; Statement: r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var1586 Bool (endsWith/985337093 var1912 "=")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("=") 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= (ite var1586 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3928 Int (length/-134980193 var1912)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2518 Int (* var3928 5)) ; Statement: $i1 = $i0 * 5 
(define-const var1340 Int (div var2518 8)) ; Statement: $i29 = $i1 / 8 
(assert true) ; Non Conditional
(define-const var286 (Array Int Int) arr-Int-init) ; Statement: $r5 = newarray (byte)[$i29] 
(define-const var2786 Int 0) ; Statement: i30 = 0 
(define-const var3798 Int 0) ; Statement: i31 = 0 
(define-const var1357 Int 0) ; Statement: i32 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2538 Int (length/-134980193 var1912)) ; Statement: $i33 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i30 >= $i33 goto return $r5 
(assert (>= var2786 var2538)) ; Cond: i30 >= $i33 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), arr-Int-init=([], byte[])}
; {var1206=cn.hutool.core.codec.Base32Codec$Base32Decoder, var3355=r2, var3864=r0, var1912=r1, var1586=$z0, var3928=$i0, var2518=$i1, var1340=$i29, var286=$r5, var2786=i30, var3798=i31, var1357=i32, var2538=$i33}
; {cn.hutool.core.codec.Base32Codec$Base32Decoder=var1206, r2=var3355, r0=var3864, r1=var1912, $z0=var1586, $i0=var3928, $i1=var2518, $i29=var1340, $r5=var286, i30=var2786, i31=var3798, i32=var1357, $i33=var2538}
;seq <java.lang.CharSequence: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2}
;stmts r2 := @this: cn.hutool.core.codec.Base32Codec$Base32Decoder;	r0 := @parameter0: java.lang.CharSequence;	r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>("=");	if $z0 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 * 5;	$i29 = $i1 / 8;	$r5 = newarray (byte)[$i29];	i30 = 0;	i31 = 0;	i32 = 0;	$i33 = virtualinvoke r1.<java.lang.String: int length()>();	if i30 >= $i33 goto return $r5;	return $r5
;block_num 5