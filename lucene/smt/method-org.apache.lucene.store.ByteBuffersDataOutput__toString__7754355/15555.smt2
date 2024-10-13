(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var3467 0)
(declare-sort var2993 0)
(declare-sort var2825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2993-init () (Array Int var2993))
(declare-fun size/1247686229 (var1725) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var2993 (Int) var2993)
(declare-fun blockSize/-1303150403 (var1725) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun blocks/-466318061 (var1725) var2825)
(declare-fun size/2440898 (var2825) Int)
(declare-fun String_format/-647569892 (var3467 String (Array Int var2993)) String)
(declare-const null-var1725 var1725)
(declare-const var3467-ROOT var3467)
(declare-const null-__Array__Int__var2993__ (Array Int var2993))
(declare-const var3320 var1725) ; Statement: r1 := @this: org.apache.lucene.store.ByteBuffersDataOutput 
(assert (not (= var3320 null-var1725)))
(define-const var786 var3467 var3467-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3599 (Array Int var2993) arr-var2993-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var863 Int (size/1247686229 var3320)) ; Statement: $l0 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataOutput: long size()>() 
(define-const var2850 Int (Int_valueOf/-1102777585 var863)) ; Statement: $r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(declare-const var3599!1 (Array Int var2993))
(assert (not (= var3599!1 null-__Array__Int__var2993__)))
(assert (= (select var3599!1 0) (cast-from-Int-to-var2993 var2850))) ; Statement: $r0[0] = $r3 
(assert true)
(define-const var410 Int (blockSize/-1303150403 var3320)) ; Statement: $i1 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataOutput: int blockSize()>() 
(define-const var3514 Int (Int_valueOf/-1371140006 var410)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(declare-const var3599!2 (Array Int var2993))
(assert (not (= var3599!2 null-__Array__Int__var2993__)))
(assert (= (select var3599!2 1) (cast-from-Int-to-var2993 var3514))) ; Statement: $r0[1] = $r4 
(define-const var3946 var2825 (blocks/-466318061 var3320)) ; Statement: $r5 = r1.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayDeque blocks> 
(assert true)
(define-const var2176 Int (size/2440898 var3946)) ; Statement: $i2 = virtualinvoke $r5.<java.util.ArrayDeque: int size()>() 
(define-const var2473 Int (Int_valueOf/-1371140006 var2176)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(declare-const var3599!3 (Array Int var2993))
(assert (not (= var3599!3 null-__Array__Int__var2993__)))
(assert (= (select var3599!3 2) (cast-from-Int-to-var2993 var2473))) ; Statement: $r0[2] = $r6 
(define-const var3816 String (String_format/-647569892 var786 "%,d bytes, block size: %,d, blocks: %,d" var3599!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%,d bytes, block size: %,d, blocks: %,d", $r0) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2993-init=([], java.lang.Object[]), size/1247686229=([org.apache.lucene.store.ByteBuffersDataOutput], long), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var2993=([java.lang.Long], java.lang.Object), blockSize/-1303150403=([org.apache.lucene.store.ByteBuffersDataOutput], int), Int_valueOf/-1371140006=([int], java.lang.Integer), blocks/-466318061=([org.apache.lucene.store.ByteBuffersDataOutput], java.util.ArrayDeque), size/2440898=([java.util.ArrayDeque], int), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1725=org.apache.lucene.store.ByteBuffersDataOutput, var3320=r1, var3467=java.util.Locale, var786=$r2, var2993=java.lang.Object, var3599=$r0, var863=$l0, var2850=$r3, var410=$i1, var3514=$r4, var2825=java.util.ArrayDeque, var3946=$r5, var2176=$i2, var2473=$r6, var3816=$r7}
; {org.apache.lucene.store.ByteBuffersDataOutput=var1725, r1=var3320, java.util.Locale=var3467, $r2=var786, java.lang.Object=var2993, $r0=var3599, $l0=var863, $r3=var2850, $i1=var410, $r4=var3514, java.util.ArrayDeque=var2825, $r5=var3946, $i2=var2176, $r6=var2473, $r7=var3816}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.lucene.store.ByteBuffersDataOutput;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[3];	$l0 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataOutput: long size()>();	$r3 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r0[0] = $r3;	$i1 = virtualinvoke r1.<org.apache.lucene.store.ByteBuffersDataOutput: int blockSize()>();	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r0[1] = $r4;	$r5 = r1.<org.apache.lucene.store.ByteBuffersDataOutput: java.util.ArrayDeque blocks>;	$i2 = virtualinvoke $r5.<java.util.ArrayDeque: int size()>();	$r6 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r0[2] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%,d bytes, block size: %,d, blocks: %,d", $r0);	return $r7
;block_num 1