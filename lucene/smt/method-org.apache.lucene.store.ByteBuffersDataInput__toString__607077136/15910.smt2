(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2480 0)
(declare-sort var2945 0)
(declare-sort var659 0)
(declare-sort var581 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var659-init () (Array Int var659))
(declare-fun length/-1297481107 (var2480) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var659 (Int) var659)
(declare-fun blockSize/-765283110 (var2480) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun blocks/-1267721864 (var2480) (Array Int var581))
(declare-fun getLength-Arr-var581-1 ((Array Int var581)) Int)
(declare-fun position/1232683978 (var2480) Int)
(declare-fun offset/-1267721864 (var2480) Int)
(declare-fun cast-from-String-to-var659 (String) var659)
(declare-fun String_format/-647569892 (var2945 String (Array Int var659)) String)
(declare-const null-var2480 var2480)
(declare-const var2945-ROOT var2945)
(declare-const null-__Array__Int__var659__ (Array Int var659))
(declare-const var1886 var2480) ; Statement: r1 := @this: org.apache.lucene.store.ByteBuffersDataInput 
(assert (not (= var1886 null-var2480)))
(define-const var2430 var2945 var2945-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1283 (Array Int var659) arr-var659-init) ; Statement: $r0 = newarray (java.lang.Object)[5] 
(assert true)
(define-const var2150 Int (length/-1297481107 var1886)) ; Statement: $l0 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long length()>() 
(define-const var1642 Int (Int_valueOf/-1102777585 var2150)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var1283!1 (Array Int var659))
(assert (not (= var1283!1 null-__Array__Int__var659__)))
(assert (= (select var1283!1 0) (cast-from-Int-to-var659 var1642))) ; Statement: $r0[0] = $r3 
(assert true)
(define-const var1269 Int (blockSize/-765283110 var1886)) ; Statement: $i1 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: int blockSize()>() 
(define-const var2727 Int (Int_valueOf/-1371140006 var1269)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var1283!2 (Array Int var659))
(assert (not (= var1283!2 null-__Array__Int__var659__)))
(assert (= (select var1283!2 1) (cast-from-Int-to-var659 var2727))) ; Statement: $r0[1] = $r4 
(define-const var1982 (Array Int var581) (blocks/-1267721864 var1886)) ; Statement: $r5 = r1.<org.apache.lucene.store.ByteBuffersDataInput: java.nio.ByteBuffer[] blocks> 
(define-const var1559 Int (getLength-Arr-var581-1 var1982)) ; Statement: $i2 = lengthof $r5 
(define-const var1763 Int (Int_valueOf/-1371140006 var1559)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var1283!3 (Array Int var659))
(assert (not (= var1283!3 null-__Array__Int__var659__)))
(assert (= (select var1283!3 2) (cast-from-Int-to-var659 var1763))) ; Statement: $r0[2] = $r6 
(assert true)
(define-const var3303 Int (position/1232683978 var1886)) ; Statement: $l3 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long position()>() 
(define-const var3645 Int (Int_valueOf/-1102777585 var3303)) ; Statement: $r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l3) 
(declare-const var1283!4 (Array Int var659))
(assert (not (= var1283!4 null-__Array__Int__var659__)))
(assert (= (select var1283!4 3) (cast-from-Int-to-var659 var3645))) ; Statement: $r0[3] = $r7 
(define-const var274 Int (offset/-1267721864 var1886)) ; Statement: $l4 = r1.<org.apache.lucene.store.ByteBuffersDataInput: long offset> 
(define-const var1451 Int (ite (> var274 0) 1 (ite (< var274 0) (- 1) 0))) ; Statement: $b5 = $l4 cmp 0L 
 ; Statement: if $b5 != 0 goto $r9 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (not (= var1451 0)))) ; Negate: Cond: $b5 != 0  
(define-const var1785 String "") ; Statement: $r12 = "" 
 ; Statement: goto [?= $r0[4] = $r12] 
(assert true) ; Non Conditional
(declare-const var1283!5 (Array Int var659))
(assert (not (= var1283!5 null-__Array__Int__var659__)))
(assert (= (select var1283!5 4) (cast-from-String-to-var659 var1785))) ; Statement: $r0[4] = $r12 
(define-const var2367 String (String_format/-647569892 var2430 "%,d bytes, block size: %,d, blocks: %,d, position: %,d%s" var1283!5)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%,d bytes, block size: %,d, blocks: %,d, position: %,d%s", $r0) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var659-init=([], java.lang.Object[]), length/-1297481107=([org.apache.lucene.store.ByteBuffersDataInput], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var659=([java.lang.Long], java.lang.Object), blockSize/-765283110=([org.apache.lucene.store.ByteBuffersDataInput], int), Int_valueOf/-1371140006=([int], java.lang.Integer), blocks/-1267721864=([org.apache.lucene.store.ByteBuffersDataInput], java.nio.ByteBuffer[]), getLength-Arr-var581-1=([java.nio.ByteBuffer[]], int), position/1232683978=([org.apache.lucene.store.ByteBuffersDataInput], long), offset/-1267721864=([org.apache.lucene.store.ByteBuffersDataInput], long), cast-from-String-to-var659=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2480=org.apache.lucene.store.ByteBuffersDataInput, var1886=r1, var2945=java.util.Locale, var2430=$r2, var659=java.lang.Object, var1283=$r0, var2150=$l0, var1642=$r3, var1269=$i1, var2727=$r4, var581=java.nio.ByteBuffer, var1982=$r5, var1559=$i2, var1763=$r6, var3303=$l3, var3645=$r7, var274=$l4, var1451=$b5, var1785=$r12, var2367=$r11}
; {org.apache.lucene.store.ByteBuffersDataInput=var2480, r1=var1886, java.util.Locale=var2945, $r2=var2430, java.lang.Object=var659, $r0=var1283, $l0=var2150, $r3=var1642, $i1=var1269, $r4=var2727, java.nio.ByteBuffer=var581, $r5=var1982, $i2=var1559, $r6=var1763, $l3=var3303, $r7=var3645, $l4=var274, $b5=var1451, $r12=var1785, $r11=var2367}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.store.ByteBuffersDataInput;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[5];	$l0 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long length()>();	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[0] = $r3;	$i1 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: int blockSize()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r4;	$r5 = r1.<org.apache.lucene.store.ByteBuffersDataInput: java.nio.ByteBuffer[] blocks>;	$i2 = lengthof $r5;	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r0[2] = $r6;	$l3 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataInput: long position()>();	$r7 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l3);	$r0[3] = $r7;	$l4 = r1.<org.apache.lucene.store.ByteBuffersDataInput: long offset>;	$b5 = $l4 cmp 0L;	if $b5 != 0 goto $r9 = <java.util.Locale: java.util.Locale ROOT>;	$r12 = "";	goto [?= $r0[4] = $r12];	$r0[4] = $r12;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%,d bytes, block size: %,d, blocks: %,d, position: %,d%s", $r0);	return $r11
;block_num 3