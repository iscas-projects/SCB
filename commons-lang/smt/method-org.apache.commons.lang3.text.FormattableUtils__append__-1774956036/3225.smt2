(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var2048 0)
(declare-sort var593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2048-init () (Array Int var2048))
(declare-fun cast-from-String-to-var2048 (String) var2048)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2048 (Int) var2048)
(declare-fun var593_isTrue/-214704028 (Bool String (Array Int var2048)) void)
(declare-fun String-init () String)
(declare-fun <init>/2052548810 (String String) void)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun format/-1567746326 (var2692 String (Array Int var2048)) var2692)
(declare-const null-String String)
(declare-const null-var2692 var2692)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2048__ (Array Int var2048))
(declare-const var103 String) ; Statement: r4 := @parameter0: java.lang.CharSequence 
(assert (not (= var103 null-String)))
(declare-const var3999 var2692) ; Statement: r5 := @parameter1: java.util.Formatter 
(assert (not (= var3999 null-var2692)))
(declare-const var2126 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2126 null-Int)))
(declare-const var623 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var623 null-Int)))
(declare-const var3292 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var3292 null-Int)))
(declare-const var3562 Int) ; Statement: c3 := @parameter5: char 
(assert (not (= var3562 null-Int)))
(declare-const var626 String) ; Statement: r0 := @parameter6: java.lang.CharSequence 
(assert (not (= var626 null-String)))
 ; Statement: if r0 == null goto $z0 = 1 
(assert (= var626 null-String)) ; Cond: r0 == null 
(define-const var2482 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= $r1 = newarray (java.lang.Object)[2]] 
(assert true) ; Non Conditional
(define-const var1940 (Array Int var2048) arr-var2048-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var1940!1 (Array Int var2048))
(assert (not (= var1940!1 null-__Array__Int__var2048__)))
(assert (= (select var1940!1 0) (cast-from-String-to-var2048 var626))) ; Statement: $r1[0] = r0 
(define-const var2780 Int (Int_valueOf/-1371140006 var3292)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1940!2 (Array Int var2048))
(assert (not (= var1940!2 null-__Array__Int__var2048__)))
(assert (= (select var1940!2 1) (cast-from-Int-to-var2048 var2780))) ; Statement: $r1[1] = $r2 
;(assert (var593_isTrue/-214704028 var2482 "Specified ellipsis \u0027%1$s\u0027 exceeds precision of %2$s" var1940!2)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "Specified ellipsis \'%1$s\' exceeds precision of %2$s", $r1) 

(declare-const var2482!1 Bool)
(declare-const var1238 String)
(declare-const var1940!3 (Array Int var2048))
(define-const var2089 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/2052548810 var2089 var103)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r4) 

(declare-const var2089!1 String)
(declare-const var103!1 String)
 ; Statement: if i0 < 0 goto $i9 = i1 & 1 
(assert (< var3292 0)) ; Cond: i0 < 0 
(define-const var3212 Int (bv2nat (bvand ((_ int2bv 64) var2126) ((_ int2bv 64) 1)))) ; Statement: $i9 = i1 & 1 
 ; Statement: if $i9 != 1 goto $z1 = 0 
(assert (not (= var3212 1))) ; Cond: $i9 != 1 
(define-const var436 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2149 Bool var436) ; Statement: z2 = $z1 
(assert true)
(define-const var3677 Int (length/-171891354 var2089!1)) ; Statement: i10 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i10 >= i2 goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3677 var623)) ; Cond: i10 >= i2 
(assert true)
(define-const var3804 String (toString/-2075883882 var2089!1)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2302 (Array Int var2048) arr-var2048-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (format/-1567746326 var3999 var3804 var2302)) ; Statement: virtualinvoke r5.<java.util.Formatter: java.util.Formatter format(java.lang.String,java.lang.Object[])>($r7, $r6) 

(declare-const var3999!1 var2692)
(declare-const var3804!1 String)
(declare-const var2302!1 (Array Int var2048))
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2048-init=([], java.lang.Object[]), cast-from-String-to-var2048=([java.lang.CharSequence], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2048=([java.lang.Integer], java.lang.Object), var593_isTrue/-214704028=([boolean, java.lang.String, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/2052548810=([java.lang.StringBuilder, java.lang.CharSequence], void), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), format/-1567746326=([java.util.Formatter, java.lang.String, java.lang.Object[]], java.util.Formatter)}
; {var103=r4, var2692=java.util.Formatter, var3999=r5, var2126=i1, var623=i2, var3292=i0, var3562=c3, var626=r0, var2482=$z0, var2048=java.lang.Object, var1940=$r1, var2780=$r2, var593=org.apache.commons.lang3.Validate, var1238="Specified ellipsis \'%1$s\' exceeds precision of %2$s", var2089=$r3, var3212=$i9, var436=$z1, var2149=z2, var3677=i10, var3804=$r7, var2302=$r6}
; {r4=var103, java.util.Formatter=var2692, r5=var3999, i1=var2126, i2=var623, i0=var3292, c3=var3562, r0=var626, $z0=var2482, java.lang.Object=var2048, $r1=var1940, $r2=var2780, org.apache.commons.lang3.Validate=var593, "Specified ellipsis \'%1$s\' exceeds precision of %2$s"=var1238, $r3=var2089, $i9=var3212, $z1=var436, z2=var2149, i10=var3677, $r7=var3804, $r6=var2302}
;seq <java.lang.StringBuilder: void <init>(java.lang.CharSequence)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.CharSequence;	r5 := @parameter1: java.util.Formatter;	i1 := @parameter2: int;	i2 := @parameter3: int;	i0 := @parameter4: int;	c3 := @parameter5: char;	r0 := @parameter6: java.lang.CharSequence;	if r0 == null goto $z0 = 1;	$z0 = 1;	goto [?= $r1 = newarray (java.lang.Object)[2]];	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r0;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[1] = $r2;	staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "Specified ellipsis \'%1$s\' exceeds precision of %2$s", $r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r4);	if i0 < 0 goto $i9 = i1 & 1;	$i9 = i1 & 1;	if $i9 != 1 goto $z1 = 0;	$z1 = 0;	z2 = $z1;	i10 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	if i10 >= i2 goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Object)[0];	virtualinvoke r5.<java.util.Formatter: java.util.Formatter format(java.lang.String,java.lang.Object[])>($r7, $r6);	return r5
;block_num 8