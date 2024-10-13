(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort var45 0)
(declare-sort var773 0)
(declare-sort var1009 0)
(declare-sort var920 0)
(declare-sort var2163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getParameterCount/-832132634 (var45) Int)
(declare-fun cast-from-var1226-to-var45 (var1226) var45)
(declare-fun session/-459319496 (var1009) var773)
(declare-fun cast-from-var1226-to-var1009 (var1226) var1009)
(declare-fun getProtocol/-228689736 (var773) var920)
(declare-fun generateQueryCommentBlock/1710789652 (var920 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun statementId/-459319496 (var1009) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2163_dumpTestcaseQuery/1101193233 (String) void)
(declare-const null-var1226 var1226)
(declare-const var3998 var1226) ; Statement: r1 := @this: com.mysql.cj.ServerPreparedQueryTestcaseGenerator 
(assert (not (= var3998 null-var1226)))
(define-const var2306 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2306)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2306!1 String)
(assert (= var2306!1 ""))
(define-const var91 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1025 Int (getParameterCount/-832132634 (cast-from-var1226-to-var45 var3998))) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int getParameterCount()>() 
 ; Statement: if i6 >= $i0 goto $r2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session> 
(assert (>= var91 var1025)) ; Cond: i6 >= $i0 
(define-const var3550 var773 (session/-459319496 (cast-from-var1226-to-var1009 var3998))) ; Statement: $r2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var1368 var920 (getProtocol/-228689736 var3550)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>() 
(assert true)
;(assert (generateQueryCommentBlock/1710789652 var1368 var2306!1)) ; Statement: virtualinvoke $r3.<com.mysql.cj.protocol.a.NativeProtocol: java.lang.StringBuilder generateQueryCommentBlock(java.lang.StringBuilder)>($r0) 

(declare-const var1368!1 var920)
(declare-const var2306!2 String)
(assert true)
;(assert (append/672562846 var2306!2 "EXECUTE debug_stmt_")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EXECUTE debug_stmt_") 
(declare-const var2306!3 String)
(assert (= var2306!3 (str.++ var2306!2 "EXECUTE debug_stmt_")))
(define-const var1181 Int (statementId/-459319496 (cast-from-var1226-to-var1009 var3998))) ; Statement: $i1 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int statementId> 
(assert true)
;(assert (append/-1001720160 var2306!3 var1181)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2306!4 String)
(assert (str.prefixof var2306!3 var2306!4))
(assert true)
(define-const var1609 Int (getParameterCount/-832132634 (cast-from-var1226-to-var45 var3998))) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int getParameterCount()>() 
 ; Statement: if $i2 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(assert (<= var1609 0)) ; Cond: $i2 <= 0 
(assert true)
;(assert (append/672562846 var2306!4 ";\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(declare-const var2306!5 String)
(assert (= var2306!5 (str.++ var2306!4 ";\n")))
(assert true)
(define-const var2982 String (toString/-2075883882 var2306!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2163_dumpTestcaseQuery/1101193233 var2982)) ; Statement: staticinvoke <com.mysql.cj.util.TestUtils: void dumpTestcaseQuery(java.lang.String)>($r4) 

(declare-const var2982!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getParameterCount/-832132634=([com.mysql.cj.ClientPreparedQuery], int), cast-from-var1226-to-var45=([com.mysql.cj.ServerPreparedQueryTestcaseGenerator], com.mysql.cj.ClientPreparedQuery), session/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.NativeSession), cast-from-var1226-to-var1009=([com.mysql.cj.ServerPreparedQueryTestcaseGenerator], com.mysql.cj.AbstractQuery), getProtocol/-228689736=([com.mysql.cj.NativeSession], com.mysql.cj.protocol.a.NativeProtocol), generateQueryCommentBlock/1710789652=([com.mysql.cj.protocol.a.NativeProtocol, java.lang.StringBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), statementId/-459319496=([com.mysql.cj.AbstractQuery], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2163_dumpTestcaseQuery/1101193233=([java.lang.String], void)}
; {var1226=com.mysql.cj.ServerPreparedQueryTestcaseGenerator, var3998=r1, var2306=$r0, var91=i6, var45=com.mysql.cj.ClientPreparedQuery, var1025=$i0, var773=com.mysql.cj.NativeSession, var1009=com.mysql.cj.AbstractQuery, var3550=$r2, var920=com.mysql.cj.protocol.a.NativeProtocol, var1368=$r3, var1181=$i1, var1609=$i2, var2982=$r4, var2163=com.mysql.cj.util.TestUtils}
; {com.mysql.cj.ServerPreparedQueryTestcaseGenerator=var1226, r1=var3998, $r0=var2306, i6=var91, com.mysql.cj.ClientPreparedQuery=var45, $i0=var1025, com.mysql.cj.NativeSession=var773, com.mysql.cj.AbstractQuery=var1009, $r2=var3550, com.mysql.cj.protocol.a.NativeProtocol=var920, $r3=var1368, $i1=var1181, $i2=var1609, $r4=var2982, com.mysql.cj.util.TestUtils=var2163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.ServerPreparedQueryTestcaseGenerator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int getParameterCount()>();	if i6 >= $i0 goto $r2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session>;	$r2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session>;	$r3 = virtualinvoke $r2.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>();	virtualinvoke $r3.<com.mysql.cj.protocol.a.NativeProtocol: java.lang.StringBuilder generateQueryCommentBlock(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EXECUTE debug_stmt_");	$i1 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int statementId>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$i2 = virtualinvoke r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int getParameterCount()>();	if $i2 <= 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <com.mysql.cj.util.TestUtils: void dumpTestcaseQuery(java.lang.String)>($r4);	return
;block_num 4