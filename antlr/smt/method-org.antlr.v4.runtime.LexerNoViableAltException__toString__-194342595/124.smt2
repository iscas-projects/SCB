(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2570 0)
(declare-sort var470 0)
(declare-sort var1971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2570!class ClassObject)
(declare-fun startIndex/1066148709 (var2570) Int)
(declare-fun var470_getDefault/-641693464 () var470)
(declare-fun arr-var1971-init () (Array Int var1971))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var1971 (String) var1971)
(declare-fun String_format/-647569892 (var470 String (Array Int var1971)) String)
(declare-const null-var2570 var2570)
(declare-const null-__Array__Int__var1971__ (Array Int var1971))
(declare-const var2506 var2570) ; Statement: r0 := @this: org.antlr.v4.runtime.LexerNoViableAltException 
(assert (not (= var2506 null-var2570)))
(define-const var3094 String "") ; Statement: r4 = "" 
(define-const var1630 Int (startIndex/1066148709 var2506)) ; Statement: $i0 = r0.<org.antlr.v4.runtime.LexerNoViableAltException: int startIndex> 
 ; Statement: if $i0 < 0 goto $r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert (< var1630 0)) ; Cond: $i0 < 0 
(define-const var367 var470 var470_getDefault/-641693464) ; Statement: $r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var325 (Array Int var1971) arr-var1971-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(define-const var3305 ClassObject var2570!class) ; Statement: $r8 = class "Lorg/antlr/v4/runtime/LexerNoViableAltException;" 
(assert true)
(define-const var3500 String (getSimpleName/-390194377 var3305)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var325!1 (Array Int var1971))
(assert (not (= var325!1 null-__Array__Int__var1971__)))
(assert (= (select var325!1 0) (cast-from-String-to-var1971 var3500))) ; Statement: $r7[0] = $r9 
(declare-const var325!2 (Array Int var1971))
(assert (not (= var325!2 null-__Array__Int__var1971__)))
(assert (= (select var325!2 1) (cast-from-String-to-var1971 var3094))) ; Statement: $r7[1] = r4 
(define-const var2495 String (String_format/-647569892 var367 "%s(\u0027%s\u0027)" var325!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s(\'%s\')", $r7) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {startIndex/1066148709=([org.antlr.v4.runtime.LexerNoViableAltException], int), var470_getDefault/-641693464=([], java.util.Locale), arr-var1971-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var1971=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2570=org.antlr.v4.runtime.LexerNoViableAltException, var2506=r0, var3094=r4, var1630=$i0, var470=java.util.Locale, var367=$r6, var1971=java.lang.Object, var325=$r7, var3305=$r8, var3500=$r9, var2495=$r10}
; {org.antlr.v4.runtime.LexerNoViableAltException=var2570, r0=var2506, r4=var3094, $i0=var1630, java.util.Locale=var470, $r6=var367, java.lang.Object=var1971, $r7=var325, $r8=var3305, $r9=var3500, $r10=var2495}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.LexerNoViableAltException;	r4 = "";	$i0 = r0.<org.antlr.v4.runtime.LexerNoViableAltException: int startIndex>;	if $i0 < 0 goto $r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r7 = newarray (java.lang.Object)[2];	$r8 = class "Lorg/antlr/v4/runtime/LexerNoViableAltException;";	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getSimpleName()>();	$r7[0] = $r9;	$r7[1] = r4;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s(\'%s\')", $r7);	return $r10
;block_num 2