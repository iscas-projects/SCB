(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1428 0)
(declare-sort var1273 0)
(declare-sort var3829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1273-init () (Array Int var1273))
(declare-fun cast-from-String-to-var1273 (String) var1273)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1273 (Int) var1273)
(declare-fun var3829_isTrue/-214704028 (Bool String (Array Int var1273)) void)
(declare-fun String-init () String)
(declare-fun <init>/2052548810 (String String) void)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun format/-1567746326 (var1428 String (Array Int var1273)) var1428)
(declare-const null-String String)
(declare-const null-var1428 var1428)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1273__ (Array Int var1273))
(declare-const var3418 String) ; Statement: r4 := @parameter0: java.lang.CharSequence 
(assert (not (= var3418 null-String)))
(declare-const var890 var1428) ; Statement: r5 := @parameter1: java.util.Formatter 
(assert (not (= var890 null-var1428)))
(declare-const var1117 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1117 null-Int)))
(declare-const var1632 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1632 null-Int)))
(declare-const var350 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var350 null-Int)))
(declare-const var3850 Int) ; Statement: c3 := @parameter5: char 
(assert (not (= var3850 null-Int)))
(declare-const var3009 String) ; Statement: r0 := @parameter6: java.lang.CharSequence 
(assert (not (= var3009 null-String)))
 ; Statement: if r0 == null goto $z0 = 1 
(assert (= var3009 null-String)) ; Cond: r0 == null 
(define-const var1436 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= $r1 = newarray (java.lang.Object)[2]] 
(assert true) ; Non Conditional
(define-const var992 (Array Int var1273) arr-var1273-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var992!1 (Array Int var1273))
(assert (not (= var992!1 null-__Array__Int__var1273__)))
(assert (= (select var992!1 0) (cast-from-String-to-var1273 var3009))) ; Statement: $r1[0] = r0 
(define-const var262 Int (Int_valueOf/-1371140006 var350)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var992!2 (Array Int var1273))
(assert (not (= var992!2 null-__Array__Int__var1273__)))
(assert (= (select var992!2 1) (cast-from-Int-to-var1273 var262))) ; Statement: $r1[1] = $r2 
;(assert (var3829_isTrue/-214704028 var1436 "Specified ellipsis \u0027%1$s\u0027 exceeds precision of %2$s" var992!2)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "Specified ellipsis \'%1$s\' exceeds precision of %2$s", $r1) 

(declare-const var1436!1 Bool)
(declare-const var536 String)
(declare-const var992!3 (Array Int var1273))
(define-const var3198 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/2052548810 var3198 var3418)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r4) 

(declare-const var3198!1 String)
(declare-const var3418!1 String)
 ; Statement: if i0 < 0 goto $i9 = i1 & 1 
(assert (< var350 0)) ; Cond: i0 < 0 
(define-const var3109 Int (bv2nat (bvand ((_ int2bv 64) var1117) ((_ int2bv 64) 1)))) ; Statement: $i9 = i1 & 1 
 ; Statement: if $i9 != 1 goto $z1 = 0 
(assert (not (not (= var3109 1)))) ; Negate: Cond: $i9 != 1  
(define-const var1459 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= z2 = $z1] 
(assert true) ; Non Conditional
(define-const var1299 Bool var1459) ; Statement: z2 = $z1 
(assert true)
(define-const var2011 Int (length/-171891354 var3198!1)) ; Statement: i10 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i10 >= i2 goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2011 var1632)) ; Cond: i10 >= i2 
(assert true)
(define-const var2857 String (toString/-2075883882 var3198!1)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2110 (Array Int var1273) arr-var1273-init) ; Statement: $r6 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (format/-1567746326 var890 var2857 var2110)) ; Statement: virtualinvoke r5.<java.util.Formatter: java.util.Formatter format(java.lang.String,java.lang.Object[])>($r7, $r6) 

(declare-const var890!1 var1428)
(declare-const var2857!1 String)
(declare-const var2110!1 (Array Int var1273))
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1273-init=([], java.lang.Object[]), cast-from-String-to-var1273=([java.lang.CharSequence], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1273=([java.lang.Integer], java.lang.Object), var3829_isTrue/-214704028=([boolean, java.lang.String, java.lang.Object[]], void), String-init=([], java.lang.StringBuilder), <init>/2052548810=([java.lang.StringBuilder, java.lang.CharSequence], void), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), format/-1567746326=([java.util.Formatter, java.lang.String, java.lang.Object[]], java.util.Formatter)}
; {var3418=r4, var1428=java.util.Formatter, var890=r5, var1117=i1, var1632=i2, var350=i0, var3850=c3, var3009=r0, var1436=$z0, var1273=java.lang.Object, var992=$r1, var262=$r2, var3829=org.apache.commons.lang3.Validate, var536="Specified ellipsis \'%1$s\' exceeds precision of %2$s", var3198=$r3, var3109=$i9, var1459=$z1, var1299=z2, var2011=i10, var2857=$r7, var2110=$r6}
; {r4=var3418, java.util.Formatter=var1428, r5=var890, i1=var1117, i2=var1632, i0=var350, c3=var3850, r0=var3009, $z0=var1436, java.lang.Object=var1273, $r1=var992, $r2=var262, org.apache.commons.lang3.Validate=var3829, "Specified ellipsis \'%1$s\' exceeds precision of %2$s"=var536, $r3=var3198, $i9=var3109, $z1=var1459, z2=var1299, i10=var2011, $r7=var2857, $r6=var2110}
;seq <java.lang.StringBuilder: void <init>(java.lang.CharSequence)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.CharSequence;	r5 := @parameter1: java.util.Formatter;	i1 := @parameter2: int;	i2 := @parameter3: int;	i0 := @parameter4: int;	c3 := @parameter5: char;	r0 := @parameter6: java.lang.CharSequence;	if r0 == null goto $z0 = 1;	$z0 = 1;	goto [?= $r1 = newarray (java.lang.Object)[2]];	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r0;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[1] = $r2;	staticinvoke <org.apache.commons.lang3.Validate: void isTrue(boolean,java.lang.String,java.lang.Object[])>($z0, "Specified ellipsis \'%1$s\' exceeds precision of %2$s", $r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.CharSequence)>(r4);	if i0 < 0 goto $i9 = i1 & 1;	$i9 = i1 & 1;	if $i9 != 1 goto $z1 = 0;	$z1 = 1;	goto [?= z2 = $z1];	z2 = $z1;	i10 = virtualinvoke $r3.<java.lang.StringBuilder: int length()>();	if i10 >= i2 goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = newarray (java.lang.Object)[0];	virtualinvoke r5.<java.util.Formatter: java.util.Formatter format(java.lang.String,java.lang.Object[])>($r7, $r6);	return r5
;block_num 8