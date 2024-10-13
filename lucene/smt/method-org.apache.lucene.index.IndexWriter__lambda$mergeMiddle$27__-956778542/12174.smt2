(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var721 0)
(declare-sort var497 0)
(declare-sort var1959 0)
(declare-sort var1478 0)
(declare-sort var3841 0)
(declare-sort var609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1959-init () (Array Int var1959))
(declare-fun var721_getValue/381491177 (var721) var1959)
(declare-fun cast-from-var1959-to-Int (var1959) Int)
(declare-fun longValue/1313863450 (Int) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun toNanos/-1234729849 (var1478 Int) Int)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var1959 (Float64) var1959)
(declare-fun var721_getKey/-33423493 (var721) var1959)
(declare-fun cast-from-var1959-to-var3841 (var1959) var3841)
(declare-fun name/1633728430 (var609) String)
(declare-fun cast-from-var3841-to-var609 (var3841) var609)
(declare-fun toLowerCase/1946809429 (String var497) String)
(declare-fun cast-from-String-to-var1959 (String) var1959)
(declare-fun String_format/-647569892 (var497 String (Array Int var1959)) String)
(declare-const null-var721 var721)
(declare-const var497-ROOT var497)
(declare-const var1478-SECONDS var1478)
(declare-const null-__Array__Int__var1959__ (Array Int var1959))
(declare-const var1381 var721) ; Statement: r1 := @parameter0: java.util.Map$Entry 
(assert (not (= var1381 null-var721)))
(define-const var2967 var497 var497-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var535 (Array Int var1959) arr-var1959-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var2539 var1959 (var721_getValue/381491177 var1381)) ; Statement: $r3 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>() 
(define-const var132 Int (cast-from-var1959-to-Int var2539)) ; Statement: $r4 = (java.lang.Long) $r3 
(assert true)
(define-const var2219 Int (longValue/1313863450 var132)) ; Statement: $l0 = virtualinvoke $r4.<java.lang.Long: long longValue()>() 
(define-const var605 Float64 (cast-from-Int-to-Float64 var2219)) ; Statement: $d1 = (double) $l0 
(define-const var405 var1478 var1478-SECONDS) ; Statement: $r5 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit SECONDS> 
(assert true)
(define-const var621 Int (toNanos/-1234729849 var405 1)) ; Statement: $l1 = virtualinvoke $r5.<java.util.concurrent.TimeUnit: long toNanos(long)>(1L) 
(define-const var529 Float64 (cast-from-Int-to-Float64 var621)) ; Statement: $d0 = (double) $l1 
(define-const var1449 Float64 (fp.div roundNearestTiesToEven var605 var529)) ; Statement: $d2 = $d1 / $d0 
(define-const var1767 Float64 (Float64_valueOf/679560954 var1449)) ; Statement: $r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d2) 
(declare-const var535!1 (Array Int var1959))
(assert (not (= var535!1 null-__Array__Int__var1959__)))
(assert (= (select var535!1 0) (cast-from-Float64-to-var1959 var1767))) ; Statement: $r0[0] = $r6 
(define-const var1546 var1959 (var721_getKey/-33423493 var1381)) ; Statement: $r7 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>() 
(define-const var2616 var3841 (cast-from-var1959-to-var3841 var1546)) ; Statement: $r8 = (org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason) $r7 
(assert true)
(define-const var476 String (name/1633728430 (cast-from-var3841-to-var609 var2616))) ; Statement: $r10 = virtualinvoke $r8.<org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason: java.lang.String name()>() 
(define-const var2546 var497 var497-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1300 String (toLowerCase/1946809429 var476 var2546)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9) 
(declare-const var535!2 (Array Int var1959))
(assert (not (= var535!2 null-__Array__Int__var1959__)))
(assert (= (select var535!2 1) (cast-from-String-to-var1959 var1300))) ; Statement: $r0[1] = $r11 
(define-const var3112 String (String_format/-647569892 var2967 "%.1f sec %s" var535!2)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%.1f sec %s", $r0) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1959-init=([], java.lang.Object[]), var721_getValue/381491177=([java.util.Map$Entry], java.lang.Object), cast-from-var1959-to-Int=([java.lang.Object], java.lang.Long), longValue/1313863450=([java.lang.Long], long), cast-from-Int-to-Float64=([long], double), toNanos/-1234729849=([java.util.concurrent.TimeUnit, long], long), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var1959=([java.lang.Double], java.lang.Object), var721_getKey/-33423493=([java.util.Map$Entry], java.lang.Object), cast-from-var1959-to-var3841=([java.lang.Object], org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var3841-to-var609=([org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), cast-from-String-to-var1959=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var721=java.util.Map$Entry, var1381=r1, var497=java.util.Locale, var2967=$r2, var1959=java.lang.Object, var535=$r0, var2539=$r3, var132=$r4, var2219=$l0, var605=$d1, var1478=java.util.concurrent.TimeUnit, var405=$r5, var621=$l1, var529=$d0, var1449=$d2, var1767=$r6, var1546=$r7, var3841=org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason, var2616=$r8, var609=java.lang.Enum, var476=$r10, var2546=$r9, var1300=$r11, var3112=$r12}
; {java.util.Map$Entry=var721, r1=var1381, java.util.Locale=var497, $r2=var2967, java.lang.Object=var1959, $r0=var535, $r3=var2539, $r4=var132, $l0=var2219, $d1=var605, java.util.concurrent.TimeUnit=var1478, $r5=var405, $l1=var621, $d0=var529, $d2=var1449, $r6=var1767, $r7=var1546, org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason=var3841, $r8=var2616, java.lang.Enum=var609, $r10=var476, $r9=var2546, $r11=var1300, $r12=var3112}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @parameter0: java.util.Map$Entry;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[2];	$r3 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getValue()>();	$r4 = (java.lang.Long) $r3;	$l0 = virtualinvoke $r4.<java.lang.Long: long longValue()>();	$d1 = (double) $l0;	$r5 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit SECONDS>;	$l1 = virtualinvoke $r5.<java.util.concurrent.TimeUnit: long toNanos(long)>(1L);	$d0 = (double) $l1;	$d2 = $d1 / $d0;	$r6 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d2);	$r0[0] = $r6;	$r7 = interfaceinvoke r1.<java.util.Map$Entry: java.lang.Object getKey()>();	$r8 = (org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason) $r7;	$r10 = virtualinvoke $r8.<org.apache.lucene.index.MergePolicy$OneMergeProgress$PauseReason: java.lang.String name()>();	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9);	$r0[1] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "%.1f sec %s", $r0);	return $r12
;block_num 1