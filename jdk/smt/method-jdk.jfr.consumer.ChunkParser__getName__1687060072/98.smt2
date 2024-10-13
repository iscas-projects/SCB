(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1169 0)
(declare-sort var838 0)
(declare-sort var1815 0)
(declare-sort var500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun typeMap/2088780777 (var1169) var838)
(declare-fun get/112017457 (var838 Int) var1815)
(declare-fun cast-from-var1815-to-var500 (var1815) var500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1169 var1169)
(declare-const null-Int Int)
(declare-const null-var500 var500)
(declare-const var174 var1169) ; Statement: r0 := @this: jdk.jfr.consumer.ChunkParser 
(assert (not (= var174 null-var1169)))
(declare-const var1675 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1675 null-Int)))
(define-const var1370 var838 (typeMap/2088780777 var174)) ; Statement: $r1 = r0.<jdk.jfr.consumer.ChunkParser: jdk.jfr.consumer.LongMap typeMap> 
(assert true)
(define-const var3070 var1815 (get/112017457 var1370 var1675)) ; Statement: $r2 = virtualinvoke $r1.<jdk.jfr.consumer.LongMap: java.lang.Object get(long)>(l0) 
(define-const var3702 var500 (cast-from-var1815-to-var500 var3070)) ; Statement: r3 = (jdk.jfr.internal.Type) $r2 
 ; Statement: if r3 != null goto $r8 = virtualinvoke r3.<jdk.jfr.internal.Type: java.lang.String getName()>() 
(assert (not (not (= var3702 null-var500)))) ; Negate: Cond: r3 != null  
(define-const var3208 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3208)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3208!1 String)
(assert (= var3208!1 ""))
(assert true)
(define-const var2332 String (append/672562846 var3208!1 "unknown(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown(") 
(declare-const var3208!2 String)
(assert (= var3208!2 (str.++ var3208!1 "unknown(")))
(assert true)
(define-const var984 String (append/-901862667 var2332 var1675)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2332!1 String)
(assert (str.prefixof var2332 var2332!1))
(assert true)
(define-const var3158 String (append/672562846 var984 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var984!1 String)
(assert (= var984!1 (str.++ var984 ")")))
(assert true)
(define-const var2628 String (toString/-2075883882 var3158)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {typeMap/2088780777=([jdk.jfr.consumer.ChunkParser], jdk.jfr.consumer.LongMap), get/112017457=([jdk.jfr.consumer.LongMap, long], java.lang.Object), cast-from-var1815-to-var500=([java.lang.Object], jdk.jfr.internal.Type), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1169=jdk.jfr.consumer.ChunkParser, var174=r0, var1675=l0, var838=jdk.jfr.consumer.LongMap, var1370=$r1, var1815=java.lang.Object, var3070=$r2, var500=jdk.jfr.internal.Type, var3702=r3, var3208=$r4, var2332=$r5, var984=$r6, var3158=$r7, var2628=$r8}
; {jdk.jfr.consumer.ChunkParser=var1169, r0=var174, l0=var1675, jdk.jfr.consumer.LongMap=var838, $r1=var1370, java.lang.Object=var1815, $r2=var3070, jdk.jfr.internal.Type=var500, r3=var3702, $r4=var3208, $r5=var2332, $r6=var984, $r7=var3158, $r8=var2628}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.consumer.ChunkParser;	l0 := @parameter0: long;	$r1 = r0.<jdk.jfr.consumer.ChunkParser: jdk.jfr.consumer.LongMap typeMap>;	$r2 = virtualinvoke $r1.<jdk.jfr.consumer.LongMap: java.lang.Object get(long)>(l0);	r3 = (jdk.jfr.internal.Type) $r2;	if r3 != null goto $r8 = virtualinvoke r3.<jdk.jfr.internal.Type: java.lang.String getName()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown(");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r8];	return $r8
;block_num 3