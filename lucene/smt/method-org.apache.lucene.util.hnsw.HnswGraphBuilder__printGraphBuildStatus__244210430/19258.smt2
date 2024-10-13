(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1800 0)
(declare-sort var1962 0)
(declare-sort var1850 0)
(declare-sort var1345 0)
(declare-sort var221 0)
(declare-sort var993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1962_nanoTime/-1409780067 () Int)
(declare-fun infoStream/790821413 (var1800) var1850)
(declare-fun arr-var221-init () (Array Int var221))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var221 (Int) var221)
(declare-fun toMillis/-251319130 (var993 Int) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun String_format/-647569892 (var1345 String (Array Int var221)) String)
(declare-fun message/-1630981278 (var1850 String String) void)
(declare-const null-var1800 var1800)
(declare-const null-Int Int)
(declare-const var1345-ROOT var1345)
(declare-const null-__Array__Int__var221__ (Array Int var221))
(declare-const var993-NANOSECONDS var993)
(declare-const var3747 var1800) ; Statement: r0 := @this: org.apache.lucene.util.hnsw.HnswGraphBuilder 
(assert (not (= var3747 null-var1800)))
(declare-const var2478 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2478 null-Int)))
(declare-const var2459 Int) ; Statement: l5 := @parameter1: long 
(assert (not (= var2459 null-Int)))
(declare-const var2594 Int) ; Statement: l2 := @parameter2: long 
(assert (not (= var2594 null-Int)))
(define-const var610 Int var1962_nanoTime/-1409780067) ; Statement: l0 = staticinvoke <java.lang.System: long nanoTime()>() 
(define-const var3060 var1850 (infoStream/790821413 var3747)) ; Statement: $r2 = r0.<org.apache.lucene.util.hnsw.HnswGraphBuilder: org.apache.lucene.util.InfoStream infoStream> 
(define-const var880 var1345 var1345-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2473 (Array Int var221) arr-var221-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(define-const var220 Int (Int_valueOf/-1371140006 var2478)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1) 
(declare-const var2473!1 (Array Int var221))
(assert (not (= var2473!1 null-__Array__Int__var221__)))
(assert (= (select var2473!1 0) (cast-from-Int-to-var221 var220))) ; Statement: $r1[0] = $r4 
(define-const var3874 var993 var993-NANOSECONDS) ; Statement: $r5 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit NANOSECONDS> 
(define-const var964 Int (- var610 var2594)) ; Statement: $l3 = l0 - l2 
(assert true)
(define-const var936 Int (toMillis/-251319130 var3874 var964)) ; Statement: $l4 = virtualinvoke $r5.<java.util.concurrent.TimeUnit: long toMillis(long)>($l3) 
(define-const var718 Int (Int_valueOf/-1102777585 var936)) ; Statement: $r6 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l4) 
(declare-const var2473!2 (Array Int var221))
(assert (not (= var2473!2 null-__Array__Int__var221__)))
(assert (= (select var2473!2 1) (cast-from-Int-to-var221 var718))) ; Statement: $r1[1] = $r6 
(define-const var2719 var993 var993-NANOSECONDS) ; Statement: $r7 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit NANOSECONDS> 
(define-const var561 Int (- var610 var2459)) ; Statement: $l6 = l0 - l5 
(assert true)
(define-const var3866 Int (toMillis/-251319130 var2719 var561)) ; Statement: $l7 = virtualinvoke $r7.<java.util.concurrent.TimeUnit: long toMillis(long)>($l6) 
(define-const var361 Int (Int_valueOf/-1102777585 var3866)) ; Statement: $r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7) 
(declare-const var2473!3 (Array Int var221))
(assert (not (= var2473!3 null-__Array__Int__var221__)))
(assert (= (select var2473!3 2) (cast-from-Int-to-var221 var361))) ; Statement: $r1[2] = $r8 
(define-const var1633 String (String_format/-647569892 var880 "built %d in %d/%d ms" var2473!3)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "built %d in %d/%d ms", $r1) 
(assert true)
;(assert (message/-1630981278 var3060 "HNSW" var1633)) ; Statement: virtualinvoke $r2.<org.apache.lucene.util.InfoStream: void message(java.lang.String,java.lang.String)>("HNSW", $r9) 

(declare-const var3060!1 var1850)
(declare-const var2905 String)
(declare-const var1633!1 String)
 ; Statement: return l0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1962_nanoTime/-1409780067=([], long), infoStream/790821413=([org.apache.lucene.util.hnsw.HnswGraphBuilder], org.apache.lucene.util.InfoStream), arr-var221-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var221=([java.lang.Integer], java.lang.Object), toMillis/-251319130=([java.util.concurrent.TimeUnit, long], long), Int_valueOf/-1102777585=([long], java.lang.Long), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), message/-1630981278=([org.apache.lucene.util.InfoStream, java.lang.String, java.lang.String], void)}
; {var1800=org.apache.lucene.util.hnsw.HnswGraphBuilder, var3747=r0, var2478=i1, var2459=l5, var2594=l2, var1962=java.lang.System, var610=l0, var1850=org.apache.lucene.util.InfoStream, var3060=$r2, var1345=java.util.Locale, var880=$r3, var221=java.lang.Object, var2473=$r1, var220=$r4, var993=java.util.concurrent.TimeUnit, var3874=$r5, var964=$l3, var936=$l4, var718=$r6, var2719=$r7, var561=$l6, var3866=$l7, var361=$r8, var1633=$r9, var2905="HNSW"}
; {org.apache.lucene.util.hnsw.HnswGraphBuilder=var1800, r0=var3747, i1=var2478, l5=var2459, l2=var2594, java.lang.System=var1962, l0=var610, org.apache.lucene.util.InfoStream=var1850, $r2=var3060, java.util.Locale=var1345, $r3=var880, java.lang.Object=var221, $r1=var2473, $r4=var220, java.util.concurrent.TimeUnit=var993, $r5=var3874, $l3=var964, $l4=var936, $r6=var718, $r7=var2719, $l6=var561, $l7=var3866, $r8=var361, $r9=var1633, "HNSW"=var2905}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.apache.lucene.util.hnsw.HnswGraphBuilder;	i1 := @parameter0: int;	l5 := @parameter1: long;	l2 := @parameter2: long;	l0 = staticinvoke <java.lang.System: long nanoTime()>();	$r2 = r0.<org.apache.lucene.util.hnsw.HnswGraphBuilder: org.apache.lucene.util.InfoStream infoStream>;	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = newarray (java.lang.Object)[3];	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i1);	$r1[0] = $r4;	$r5 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit NANOSECONDS>;	$l3 = l0 - l2;	$l4 = virtualinvoke $r5.<java.util.concurrent.TimeUnit: long toMillis(long)>($l3);	$r6 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l4);	$r1[1] = $r6;	$r7 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit NANOSECONDS>;	$l6 = l0 - l5;	$l7 = virtualinvoke $r7.<java.util.concurrent.TimeUnit: long toMillis(long)>($l6);	$r8 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l7);	$r1[2] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "built %d in %d/%d ms", $r1);	virtualinvoke $r2.<org.apache.lucene.util.InfoStream: void message(java.lang.String,java.lang.String)>("HNSW", $r9);	return l0
;block_num 1