(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var1280 0)
(declare-sort var1863 0)
(declare-sort var104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun params/-493974260 (var1863) (Array Int var1280))
(declare-fun arr-var1280-init () (Array Int var1280))
(declare-fun var104_validIndex/-1059789207 ((Array Int var1280) Int String (Array Int var1280)) (Array Int var1280))
(declare-fun toString/-522406933 (var1280) String)
(declare-fun param/-1541999254 (var1863 Int) var1280)
(declare-fun cast-from-var1280-to-Int (var1280) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun param/622138271 (var1863 Int var1280) var1280)
(declare-fun cast-from-Int-to-var1280 (Int) var1280)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun subSequence/-355200942 (String Int Int) String)
(declare-const null-var1777 var1777)
(declare-const null-var1280 var1280)
(declare-const null-var1863 var1863)
(declare-const var3950 var1777) ; Statement: r11 := @this: com.github.jknack.handlebars.helper.StringHelpers$8 
(assert (not (= var3950 null-var1777)))
(declare-const var2377 var1280) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var2377 null-var1280)))
(declare-const var2848 var1863) ; Statement: r0 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var2848 null-var1863)))
(define-const var3918 (Array Int var1280) (params/-493974260 var2848)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.Options: java.lang.Object[] params> 
(define-const var2495 (Array Int var1280) arr-var1280-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var104_validIndex/-1059789207 var3918 0 "Required start offset: " var2495)) ; Statement: staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object[] validIndex(java.lang.Object[],int,java.lang.String,java.lang.Object[])>($r2, 0, "Required start offset: ", $r1) 

(declare-const var3918!1 (Array Int var1280))
(declare-const var1956 Int)
(declare-const var1444 String)
(declare-const var2495!1 (Array Int var1280))
(assert true)
(define-const var1228 String (toString/-522406933 var2377)) ; Statement: r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var538 var1280 (param/-1541999254 var2848 0)) ; Statement: $r5 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int)>(0) 
(define-const var257 Int (cast-from-var1280-to-Int var538)) ; Statement: r6 = (java.lang.Integer) $r5 
(assert true)
(define-const var3564 Int (length/-134980193 var1228)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var1742 Int (Int_valueOf/-1371140006 var3564)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(assert true)
(define-const var2741 var1280 (param/622138271 var2848 1 (cast-from-Int-to-var1280 var1742))) ; Statement: $r8 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(1, $r7) 
(define-const var233 Int (cast-from-var1280-to-Int var2741)) ; Statement: r9 = (java.lang.Integer) $r8 
(assert true)
(define-const var1732 Int (intValue/-1815674922 var257)) ; Statement: $i2 = virtualinvoke r6.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var1402 Int (intValue/-1815674922 var233)) ; Statement: $i1 = virtualinvoke r9.<java.lang.Integer: int intValue()>() 
(assert true)
(define-const var211 String (subSequence/-355200942 var1228 var1732 var1402)) ; Statement: $r10 = virtualinvoke r4.<java.lang.String: java.lang.CharSequence subSequence(int,int)>($i2, $i1) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {params/-493974260=([com.github.jknack.handlebars.Options], java.lang.Object[]), arr-var1280-init=([], java.lang.Object[]), var104_validIndex/-1059789207=([java.lang.Object[], int, java.lang.String, java.lang.Object[]], java.lang.Object[]), toString/-522406933=([java.lang.Object], java.lang.String), param/-1541999254=([com.github.jknack.handlebars.Options, int], java.lang.Object), cast-from-var1280-to-Int=([java.lang.Object], java.lang.Integer), length/-134980193=([java.lang.String], int), Int_valueOf/-1371140006=([int], java.lang.Integer), param/622138271=([com.github.jknack.handlebars.Options, int, java.lang.Object], java.lang.Object), cast-from-Int-to-var1280=([java.lang.Integer], java.lang.Object), intValue/-1815674922=([java.lang.Integer], int), subSequence/-355200942=([java.lang.String, int, int], java.lang.CharSequence)}
; {var1777=com.github.jknack.handlebars.helper.StringHelpers$8, var3950=r11, var1280=java.lang.Object, var2377=r3, var1863=com.github.jknack.handlebars.Options, var2848=r0, var3918=$r2, var2495=$r1, var104=org.apache.commons.lang3.Validate, var1956=0, var1444="Required start offset: ", var1228=r4, var538=$r5, var257=r6, var3564=$i0, var1742=$r7, var2741=$r8, var233=r9, var1732=$i2, var1402=$i1, var211=$r10}
; {com.github.jknack.handlebars.helper.StringHelpers$8=var1777, r11=var3950, java.lang.Object=var1280, r3=var2377, com.github.jknack.handlebars.Options=var1863, r0=var2848, $r2=var3918, $r1=var2495, org.apache.commons.lang3.Validate=var104, 0=var1956, "Required start offset: "=var1444, r4=var1228, $r5=var538, r6=var257, $i0=var3564, $r7=var1742, $r8=var2741, r9=var233, $i2=var1732, $i1=var1402, $r10=var211}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r11 := @this: com.github.jknack.handlebars.helper.StringHelpers$8;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: com.github.jknack.handlebars.Options;	$r2 = r0.<com.github.jknack.handlebars.Options: java.lang.Object[] params>;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <org.apache.commons.lang3.Validate: java.lang.Object[] validIndex(java.lang.Object[],int,java.lang.String,java.lang.Object[])>($r2, 0, "Required start offset: ", $r1);	r4 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int)>(0);	r6 = (java.lang.Integer) $r5;	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r8 = virtualinvoke r0.<com.github.jknack.handlebars.Options: java.lang.Object param(int,java.lang.Object)>(1, $r7);	r9 = (java.lang.Integer) $r8;	$i2 = virtualinvoke r6.<java.lang.Integer: int intValue()>();	$i1 = virtualinvoke r9.<java.lang.Integer: int intValue()>();	$r10 = virtualinvoke r4.<java.lang.String: java.lang.CharSequence subSequence(int,int)>($i2, $i1);	return $r10
;block_num 1