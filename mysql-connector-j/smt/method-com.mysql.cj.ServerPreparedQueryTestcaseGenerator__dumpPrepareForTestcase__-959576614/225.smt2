(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var76 0)
(declare-sort var3569 0)
(declare-sort var2274 0)
(declare-sort var34 0)
(declare-sort var2682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getOriginalSql/-276362417 (var76) String)
(declare-fun cast-from-var1420-to-var76 (var1420) var76)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun session/-459319496 (var2274) var3569)
(declare-fun cast-from-var1420-to-var2274 (var1420) var2274)
(declare-fun getProtocol/-228689736 (var3569) var34)
(declare-fun generateQueryCommentBlock/1710789652 (var34 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun statementId/-459319496 (var2274) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2682_dumpTestcaseQuery/1101193233 (String) void)
(declare-const null-var1420 var1420)
(declare-const var2420 var1420) ; Statement: r1 := @this: com.mysql.cj.ServerPreparedQueryTestcaseGenerator 
(assert (not (= var2420 null-var1420)))
(define-const var1888 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1851 String (getOriginalSql/-276362417 (cast-from-var1420-to-var76 var2420))) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: java.lang.String getOriginalSql()>() 
(assert true)
(define-const var2560 Int (length/-134980193 var1851)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var1290 Int (+ var2560 64)) ; Statement: $i1 = $i0 + 64 
(assert true)
;(assert (<init>/543593434 var1888 var1290)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1888!1 String)
(declare-const var1290!1 Int)
(define-const var3801 var3569 (session/-459319496 (cast-from-var1420-to-var2274 var2420))) ; Statement: $r3 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var3887 var34 (getProtocol/-228689736 var3801)) ; Statement: $r4 = virtualinvoke $r3.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>() 
(assert true)
;(assert (generateQueryCommentBlock/1710789652 var3887 var1888!1)) ; Statement: virtualinvoke $r4.<com.mysql.cj.protocol.a.NativeProtocol: java.lang.StringBuilder generateQueryCommentBlock(java.lang.StringBuilder)>($r0) 

(declare-const var3887!1 var34)
(declare-const var1888!2 String)
(assert true)
;(assert (append/672562846 var1888!2 "PREPARE debug_stmt_")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PREPARE debug_stmt_") 
(declare-const var1888!3 String)
(assert (= var1888!3 (str.++ var1888!2 "PREPARE debug_stmt_")))
(define-const var3842 Int (statementId/-459319496 (cast-from-var1420-to-var2274 var2420))) ; Statement: $i2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int statementId> 
(assert true)
;(assert (append/-1001720160 var1888!3 var3842)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1888!4 String)
(assert (str.prefixof var1888!3 var1888!4))
(assert true)
;(assert (append/672562846 var1888!4 " FROM \u0022")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" FROM \"") 
(declare-const var1888!5 String)
(assert (= var1888!5 (str.++ var1888!4 " FROM \u0022")))
(assert true)
(define-const var2954 String (getOriginalSql/-276362417 (cast-from-var1420-to-var76 var2420))) ; Statement: $r5 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: java.lang.String getOriginalSql()>() 
(assert true)
;(assert (append/672562846 var1888!5 var2954)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1888!6 String)
(assert (= var1888!6 (str.++ var1888!5 var2954)))
(assert true)
;(assert (append/672562846 var1888!6 "\u0022;\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\";\n") 
(declare-const var1888!7 String)
(assert (= var1888!7 (str.++ var1888!6 "\u0022;\n")))
(assert true)
(define-const var1795 String (toString/-2075883882 var1888!7)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2682_dumpTestcaseQuery/1101193233 var1795)) ; Statement: staticinvoke <com.mysql.cj.util.TestUtils: void dumpTestcaseQuery(java.lang.String)>($r6) 

(declare-const var1795!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getOriginalSql/-276362417=([com.mysql.cj.ClientPreparedQuery], java.lang.String), cast-from-var1420-to-var76=([com.mysql.cj.ServerPreparedQueryTestcaseGenerator], com.mysql.cj.ClientPreparedQuery), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), session/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.NativeSession), cast-from-var1420-to-var2274=([com.mysql.cj.ServerPreparedQueryTestcaseGenerator], com.mysql.cj.AbstractQuery), getProtocol/-228689736=([com.mysql.cj.NativeSession], com.mysql.cj.protocol.a.NativeProtocol), generateQueryCommentBlock/1710789652=([com.mysql.cj.protocol.a.NativeProtocol, java.lang.StringBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), statementId/-459319496=([com.mysql.cj.AbstractQuery], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2682_dumpTestcaseQuery/1101193233=([java.lang.String], void)}
; {var1420=com.mysql.cj.ServerPreparedQueryTestcaseGenerator, var2420=r1, var1888=$r0, var76=com.mysql.cj.ClientPreparedQuery, var1851=$r2, var2560=$i0, var1290=$i1, var3569=com.mysql.cj.NativeSession, var2274=com.mysql.cj.AbstractQuery, var3801=$r3, var34=com.mysql.cj.protocol.a.NativeProtocol, var3887=$r4, var3842=$i2, var2954=$r5, var1795=$r6, var2682=com.mysql.cj.util.TestUtils}
; {com.mysql.cj.ServerPreparedQueryTestcaseGenerator=var1420, r1=var2420, $r0=var1888, com.mysql.cj.ClientPreparedQuery=var76, $r2=var1851, $i0=var2560, $i1=var1290, com.mysql.cj.NativeSession=var3569, com.mysql.cj.AbstractQuery=var2274, $r3=var3801, com.mysql.cj.protocol.a.NativeProtocol=var34, $r4=var3887, $i2=var3842, $r5=var2954, $r6=var1795, com.mysql.cj.util.TestUtils=var2682}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.ServerPreparedQueryTestcaseGenerator;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: java.lang.String getOriginalSql()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i1 = $i0 + 64;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session>;	$r4 = virtualinvoke $r3.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>();	virtualinvoke $r4.<com.mysql.cj.protocol.a.NativeProtocol: java.lang.StringBuilder generateQueryCommentBlock(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PREPARE debug_stmt_");	$i2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int statementId>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" FROM \"");	$r5 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: java.lang.String getOriginalSql()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\";\n");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <com.mysql.cj.util.TestUtils: void dumpTestcaseQuery(java.lang.String)>($r6);	return
;block_num 1