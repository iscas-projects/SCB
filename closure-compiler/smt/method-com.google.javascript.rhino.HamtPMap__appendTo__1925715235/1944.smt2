(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2232 0)
(declare-sort var3345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun key/731965471 (var2232) var3345)
(declare-fun append/-1031950772 (String var3345) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/731965471 (var2232) var3345)
(declare-fun children/731965471 (var2232) (Array Int var2232))
(declare-fun getLength-Arr-var2232-1 ((Array Int var2232)) Int)
(declare-const null-var2232 var2232)
(declare-const null-String String)
(declare-const var572 var2232) ; Statement: r1 := @this: com.google.javascript.rhino.HamtPMap 
(assert (not (= var572 null-var2232)))
(declare-const var3416 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3416 null-String)))
(assert true)
(define-const var1176 Int (length/-171891354 var3416)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 1 goto $r2 = r1.<com.google.javascript.rhino.HamtPMap: java.lang.Object key> 
(assert (<= var1176 1)) ; Cond: $i0 <= 1 
(define-const var604 var3345 (key/731965471 var572)) ; Statement: $r2 = r1.<com.google.javascript.rhino.HamtPMap: java.lang.Object key> 
(assert true)
(define-const var3938 String (append/-1031950772 var3416 var604)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var3416!1 String)
(assert (str.prefixof var3416 var3416!1))
(assert true)
(define-const var650 String (append/672562846 var3938 ": ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3938!1 String)
(assert (= var3938!1 (str.++ var3938 ": ")))
(define-const var3764 var3345 (value/731965471 var572)) ; Statement: $r4 = r1.<com.google.javascript.rhino.HamtPMap: java.lang.Object value> 
(assert true)
;(assert (append/-1031950772 var650 var3764)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var650!1 String)
(assert (str.prefixof var650 var650!1))
(define-const var699 (Array Int var2232) (children/731965471 var572)) ; Statement: $r7 = r1.<com.google.javascript.rhino.HamtPMap: com.google.javascript.rhino.HamtPMap[] children> 
(define-const var788 Int (getLength-Arr-var2232-1 var699)) ; Statement: $i1 = lengthof $r7 
(define-const var3009 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var3009 var788)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), key/731965471=([com.google.javascript.rhino.HamtPMap], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/731965471=([com.google.javascript.rhino.HamtPMap], java.lang.Object), children/731965471=([com.google.javascript.rhino.HamtPMap], com.google.javascript.rhino.HamtPMap[]), getLength-Arr-var2232-1=([com.google.javascript.rhino.HamtPMap[]], int)}
; {var2232=com.google.javascript.rhino.HamtPMap, var572=r1, var3416=r0, var1176=$i0, var3345=java.lang.Object, var604=$r2, var3938=$r3, var650=$r5, var3764=$r4, var699=$r7, var788=$i1, var3009=i2}
; {com.google.javascript.rhino.HamtPMap=var2232, r1=var572, r0=var3416, $i0=var1176, java.lang.Object=var3345, $r2=var604, $r3=var3938, $r5=var650, $r4=var3764, $r7=var699, $i1=var788, i2=var3009}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.rhino.HamtPMap;	r0 := @parameter0: java.lang.StringBuilder;	$i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if $i0 <= 1 goto $r2 = r1.<com.google.javascript.rhino.HamtPMap: java.lang.Object key>;	$r2 = r1.<com.google.javascript.rhino.HamtPMap: java.lang.Object key>;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r4 = r1.<com.google.javascript.rhino.HamtPMap: java.lang.Object value>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = r1.<com.google.javascript.rhino.HamtPMap: com.google.javascript.rhino.HamtPMap[] children>;	$i1 = lengthof $r7;	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 4