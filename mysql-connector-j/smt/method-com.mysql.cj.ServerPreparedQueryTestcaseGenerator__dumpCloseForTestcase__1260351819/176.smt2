(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3778 0)
(declare-sort var3433 0)
(declare-sort var3960 0)
(declare-sort var3707 0)
(declare-sort var1597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun session/-459319496 (var3960) var3433)
(declare-fun cast-from-var3778-to-var3960 (var3778) var3960)
(declare-fun getProtocol/-228689736 (var3433) var3707)
(declare-fun generateQueryCommentBlock/1710789652 (var3707 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun statementId/-459319496 (var3960) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1597_dumpTestcaseQuery/1101193233 (String) void)
(declare-const null-var3778 var3778)
(declare-const var2859 var3778) ; Statement: r1 := @this: com.mysql.cj.ServerPreparedQueryTestcaseGenerator 
(assert (not (= var2859 null-var3778)))
(define-const var3077 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3077)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3077!1 String)
(assert (= var3077!1 ""))
(define-const var760 var3433 (session/-459319496 (cast-from-var3778-to-var3960 var2859))) ; Statement: $r2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session> 
(assert true)
(define-const var614 var3707 (getProtocol/-228689736 var760)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>() 
(assert true)
;(assert (generateQueryCommentBlock/1710789652 var614 var3077!1)) ; Statement: virtualinvoke $r3.<com.mysql.cj.protocol.a.NativeProtocol: java.lang.StringBuilder generateQueryCommentBlock(java.lang.StringBuilder)>($r0) 

(declare-const var614!1 var3707)
(declare-const var3077!2 String)
(assert true)
;(assert (append/672562846 var3077!2 "DEALLOCATE PREPARE debug_stmt_")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DEALLOCATE PREPARE debug_stmt_") 
(declare-const var3077!3 String)
(assert (= var3077!3 (str.++ var3077!2 "DEALLOCATE PREPARE debug_stmt_")))
(define-const var3718 Int (statementId/-459319496 (cast-from-var3778-to-var3960 var2859))) ; Statement: $i0 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int statementId> 
(assert true)
;(assert (append/-1001720160 var3077!3 var3718)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3077!4 String)
(assert (str.prefixof var3077!3 var3077!4))
(assert true)
;(assert (append/672562846 var3077!4 ";\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(declare-const var3077!5 String)
(assert (= var3077!5 (str.++ var3077!4 ";\n")))
(assert true)
(define-const var1153 String (toString/-2075883882 var3077!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1597_dumpTestcaseQuery/1101193233 var1153)) ; Statement: staticinvoke <com.mysql.cj.util.TestUtils: void dumpTestcaseQuery(java.lang.String)>($r4) 

(declare-const var1153!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), session/-459319496=([com.mysql.cj.AbstractQuery], com.mysql.cj.NativeSession), cast-from-var3778-to-var3960=([com.mysql.cj.ServerPreparedQueryTestcaseGenerator], com.mysql.cj.AbstractQuery), getProtocol/-228689736=([com.mysql.cj.NativeSession], com.mysql.cj.protocol.a.NativeProtocol), generateQueryCommentBlock/1710789652=([com.mysql.cj.protocol.a.NativeProtocol, java.lang.StringBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), statementId/-459319496=([com.mysql.cj.AbstractQuery], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1597_dumpTestcaseQuery/1101193233=([java.lang.String], void)}
; {var3778=com.mysql.cj.ServerPreparedQueryTestcaseGenerator, var2859=r1, var3077=$r0, var3433=com.mysql.cj.NativeSession, var3960=com.mysql.cj.AbstractQuery, var760=$r2, var3707=com.mysql.cj.protocol.a.NativeProtocol, var614=$r3, var3718=$i0, var1153=$r4, var1597=com.mysql.cj.util.TestUtils}
; {com.mysql.cj.ServerPreparedQueryTestcaseGenerator=var3778, r1=var2859, $r0=var3077, com.mysql.cj.NativeSession=var3433, com.mysql.cj.AbstractQuery=var3960, $r2=var760, com.mysql.cj.protocol.a.NativeProtocol=var3707, $r3=var614, $i0=var3718, $r4=var1153, com.mysql.cj.util.TestUtils=var1597}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.ServerPreparedQueryTestcaseGenerator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: com.mysql.cj.NativeSession session>;	$r3 = virtualinvoke $r2.<com.mysql.cj.NativeSession: com.mysql.cj.protocol.a.NativeProtocol getProtocol()>();	virtualinvoke $r3.<com.mysql.cj.protocol.a.NativeProtocol: java.lang.StringBuilder generateQueryCommentBlock(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("DEALLOCATE PREPARE debug_stmt_");	$i0 = r1.<com.mysql.cj.ServerPreparedQueryTestcaseGenerator: int statementId>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <com.mysql.cj.util.TestUtils: void dumpTestcaseQuery(java.lang.String)>($r4);	return
;block_num 1