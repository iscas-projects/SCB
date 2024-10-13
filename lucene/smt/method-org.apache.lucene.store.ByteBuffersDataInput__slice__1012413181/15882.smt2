(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3924 0)
(declare-sort var2271 0)
(declare-sort var1 0)
(declare-sort var1246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2271-init () var2271)
(declare-fun arr-var1246-init () (Array Int var1246))
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun cast-from-Int-to-var1246 (Int) var1246)
(declare-fun cast-from-var3924-to-var1246 (var3924) var1246)
(declare-fun String_format/-647569892 (var1 String (Array Int var1246)) String)
(declare-fun <init>/875830710 (var2271 String) void)
(declare-const null-var3924 var3924)
(declare-const null-Int Int)
(declare-const var1-ROOT var1)
(declare-const null-__Array__Int__var1246__ (Array Int var1246))
(declare-const var547 var3924) ; Statement: r0 := @this: org.apache.lucene.store.ByteBuffersDataInput 
(assert (not (= var547 null-var3924)))
(declare-const var1281 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1281 null-Int)))
(declare-const var1373 Int) ; Statement: l2 := @parameter1: long 
(assert (not (= var1373 null-Int)))
(define-const var1673 Int (ite (> var1281 0) 1 (ite (< var1281 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1719 Int (cast-from-Int-to-Int var1673)) ; Statement: $i7 = (int) $b1 
 ; Statement: if $i7 < 0 goto $r11 = new java.lang.IllegalArgumentException 
(assert (< var1719 0)) ; Cond: $i7 < 0 
(define-const var104 var2271 var2271-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var21 var1 var1-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3758 (Array Int var1246) arr-var1246-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(define-const var145 Int (Int_valueOf/-1102777585 var1281)) ; Statement: $r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(declare-const var3758!1 (Array Int var1246))
(assert (not (= var3758!1 null-__Array__Int__var1246__)))
(assert (= (select var3758!1 0) (cast-from-Int-to-var1246 var145))) ; Statement: $r7[0] = $r8 
(define-const var1420 Int (Int_valueOf/-1102777585 var1373)) ; Statement: $r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l2) 
(declare-const var3758!2 (Array Int var1246))
(assert (not (= var3758!2 null-__Array__Int__var1246__)))
(assert (= (select var3758!2 1) (cast-from-Int-to-var1246 var1420))) ; Statement: $r7[1] = $r9 
(declare-const var3758!3 (Array Int var1246))
(assert (not (= var3758!3 null-__Array__Int__var1246__)))
(assert (= (select var3758!3 2) (cast-from-var3924-to-var1246 var547))) ; Statement: $r7[2] = r0 
(define-const var2687 String (String_format/-647569892 var21 "slice(offset=%s, length=%s) is out of bounds: %s" var3758!3)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "slice(offset=%s, length=%s) is out of bounds: %s", $r7) 
(assert true)
;(assert (<init>/875830710 var104 var2687)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var104!1 var2271)
(declare-const var2687!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var2271-init=([], java.lang.IllegalArgumentException), arr-var1246-init=([], java.lang.Object[]), Int_valueOf/-1102777585=([long], java.lang.Long), cast-from-Int-to-var1246=([java.lang.Long], java.lang.Object), cast-from-var3924-to-var1246=([org.apache.lucene.store.ByteBuffersDataInput], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3924=org.apache.lucene.store.ByteBuffersDataInput, var547=r0, var1281=l0, var1373=l2, var1673=$b1, var1719=$i7, var2271=java.lang.IllegalArgumentException, var104=$r11, var1=java.util.Locale, var21=$r6, var1246=java.lang.Object, var3758=$r7, var145=$r8, var1420=$r9, var2687=$r10}
; {org.apache.lucene.store.ByteBuffersDataInput=var3924, r0=var547, l0=var1281, l2=var1373, $b1=var1673, $i7=var1719, java.lang.IllegalArgumentException=var2271, $r11=var104, java.util.Locale=var1, $r6=var21, java.lang.Object=var1246, $r7=var3758, $r8=var145, $r9=var1420, $r10=var2687}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.store.ByteBuffersDataInput;	l0 := @parameter0: long;	l2 := @parameter1: long;	$b1 = l0 cmp 0L;	$i7 = (int) $b1;	if $i7 < 0 goto $r11 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.IllegalArgumentException;	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r7 = newarray (java.lang.Object)[3];	$r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r7[0] = $r8;	$r9 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l2);	$r7[1] = $r9;	$r7[2] = r0;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "slice(offset=%s, length=%s) is out of bounds: %s", $r7);	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r11
;block_num 2