(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3322 0)
(declare-sort var769 0)
(declare-sort var2751 0)
(declare-sort var867 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2751-init () (Array Int var2751))
(declare-fun length/-1297481107 (var3322) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2751 (Int) var2751)
(declare-fun blockSize/-765283110 (var3322) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun blocks/-1267721864 (var3322) (Array Int var867))
(declare-fun getLength-Arr-var867-1 ((Array Int var867)) Int)
(declare-fun position/1232683978 (var3322) Int)
(declare-fun offset/-1267721864 (var3322) Int)
(declare-fun String_format/-647569892 (var769 String (Array Int var2751)) String)
(declare-fun cast-from-String-to-var2751 (String) var2751)
(declare-const null-var3322 var3322)
(declare-const var769-ROOT var769)
(declare-const null-__Array__Int__var2751__ (Array Int var2751))
(declare-const var2423 var3322) ; Statement: r1 := @this: org.apache.lucene.store.ByteBuffersDataInput 
(assert (not (= var2423 null-var3322)))
(define-const var89 var769 var769-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var903 (Array Int var2751) arr-var2751-init) ; Statement: $r0 = newarray (java.lang.Object)[5] 
(assert true)
(define-const var3048 Int (length/-1297481107 var2423)) ; Statement: $l0 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long length()>() 
(define-const var2730 Int (Int_valueOf/-1102777585 var3048)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var903!1 (Array Int var2751))
(assert (not (= var903!1 null-__Array__Int__var2751__)))
(assert (= (select var903!1 0) (cast-from-Int-to-var2751 var2730))) ; Statement: $r0[0] = $r3 
(assert true)
(define-const var2997 Int (blockSize/-765283110 var2423)) ; Statement: $i1 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: int blockSize()>() 
(define-const var881 Int (Int_valueOf/-1371140006 var2997)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var903!2 (Array Int var2751))
(assert (not (= var903!2 null-__Array__Int__var2751__)))
(assert (= (select var903!2 1) (cast-from-Int-to-var2751 var881))) ; Statement: $r0[1] = $r4 
(define-const var1708 (Array Int var867) (blocks/-1267721864 var2423)) ; Statement: $r5 = r1.<org.apache.lucene.store.ByteBuffersDataInput: java.nio.ByteBuffer[] blocks> 
(define-const var3267 Int (getLength-Arr-var867-1 var1708)) ; Statement: $i2 = lengthof $r5 
(define-const var3134 Int (Int_valueOf/-1371140006 var3267)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var903!3 (Array Int var2751))
(assert (not (= var903!3 null-__Array__Int__var2751__)))
(assert (= (select var903!3 2) (cast-from-Int-to-var2751 var3134))) ; Statement: $r0[2] = $r6 
(assert true)
(define-const var345 Int (position/1232683978 var2423)) ; Statement: $l3 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long position()>() 
(define-const var9 Int (Int_valueOf/-1102777585 var345)) ; Statement: $r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l3) 
(declare-const var903!4 (Array Int var2751))
(assert (not (= var903!4 null-__Array__Int__var2751__)))
(assert (= (select var903!4 3) (cast-from-Int-to-var2751 var9))) ; Statement: $r0[3] = $r7 
(define-const var3813 Int (offset/-1267721864 var2423)) ; Statement: $l4 = r1.<org.apache.lucene.store.ByteBuffersDataInput: long offset> 
(define-const var1266 Int (ite (> var3813 0) 1 (ite (< var3813 0) (- 1) 0))) ; Statement: $b5 = $l4 cmp 0L 
 ; Statement: if $b5 != 0 goto $r9 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (= var1266 0))) ; Cond: $b5 != 0 
(define-const var445 var769 var769-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3509 (Array Int var2751) arr-var2751-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(define-const var989 Int (offset/-1267721864 var2423)) ; Statement: $l6 = r1.<org.apache.lucene.store.ByteBuffersDataInput: long offset> 
(define-const var3846 Int (Int_valueOf/-1102777585 var989)) ; Statement: $r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6) 
(declare-const var3509!1 (Array Int var2751))
(assert (not (= var3509!1 null-__Array__Int__var2751__)))
(assert (= (select var3509!1 0) (cast-from-Int-to-var2751 var3846))) ; Statement: $r8[0] = $r10 
(define-const var2218 String (String_format/-647569892 var445 " [offset: %,d]" var3509!1)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, " [offset: %,d]", $r8) 
(assert true) ; Non Conditional
(declare-const var903!5 (Array Int var2751))
(assert (not (= var903!5 null-__Array__Int__var2751__)))
(assert (= (select var903!5 4) (cast-from-String-to-var2751 var2218))) ; Statement: $r0[4] = $r12 
(define-const var2915 String (String_format/-647569892 var89 "%,d bytes, block size: %,d, blocks: %,d, position: %,d%s" var903!5)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%,d bytes, block size: %,d, blocks: %,d, position: %,d%s", $r0) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2751-init=([], java.lang.Object[]), length/-1297481107=([org.apache.lucene.store.ByteBuffersDataInput], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2751=([java.lang.Long], java.lang.Object), blockSize/-765283110=([org.apache.lucene.store.ByteBuffersDataInput], int), Int_valueOf/-1371140006=([int], java.lang.Integer), blocks/-1267721864=([org.apache.lucene.store.ByteBuffersDataInput], java.nio.ByteBuffer[]), getLength-Arr-var867-1=([java.nio.ByteBuffer[]], int), position/1232683978=([org.apache.lucene.store.ByteBuffersDataInput], long), offset/-1267721864=([org.apache.lucene.store.ByteBuffersDataInput], long), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), cast-from-String-to-var2751=([java.lang.String], java.lang.Object)}
; {var3322=org.apache.lucene.store.ByteBuffersDataInput, var2423=r1, var769=java.util.Locale, var89=$r2, var2751=java.lang.Object, var903=$r0, var3048=$l0, var2730=$r3, var2997=$i1, var881=$r4, var867=java.nio.ByteBuffer, var1708=$r5, var3267=$i2, var3134=$r6, var345=$l3, var9=$r7, var3813=$l4, var1266=$b5, var445=$r9, var3509=$r8, var989=$l6, var3846=$r10, var2218=$r12, var2915=$r11}
; {org.apache.lucene.store.ByteBuffersDataInput=var3322, r1=var2423, java.util.Locale=var769, $r2=var89, java.lang.Object=var2751, $r0=var903, $l0=var3048, $r3=var2730, $i1=var2997, $r4=var881, java.nio.ByteBuffer=var867, $r5=var1708, $i2=var3267, $r6=var3134, $l3=var345, $r7=var9, $l4=var3813, $b5=var1266, $r9=var445, $r8=var3509, $l6=var989, $r10=var3846, $r12=var2218, $r11=var2915}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 2}
;stmts r1 := @this: org.apache.lucene.store.ByteBuffersDataInput;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[5];	$l0 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long length()>();	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[0] = $r3;	$i1 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: int blockSize()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r4;	$r5 = r1.<org.apache.lucene.store.ByteBuffersDataInput: java.nio.ByteBuffer[] blocks>;	$i2 = lengthof $r5;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r0[2] = $r6;	$l3 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long position()>();	$r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l3);	$r0[3] = $r7;	$l4 = r1.<org.apache.lucene.store.ByteBuffersDataInput: long offset>;	$b5 = $l4 cmp 0L;	if $b5 != 0 goto $r9 = <java.util.Locale: java.util.Locale ROOT>;	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = newarray (java.lang.Object)[1];	$l6 = r1.<org.apache.lucene.store.ByteBuffersDataInput: long offset>;	$r10 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l6);	$r8[0] = $r10;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, " [offset: %,d]", $r8);	$r0[4] = $r12;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%,d bytes, block size: %,d, blocks: %,d, position: %,d%s", $r0);	return $r11
;block_num 3