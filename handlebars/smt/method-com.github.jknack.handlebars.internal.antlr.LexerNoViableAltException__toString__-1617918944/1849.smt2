(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2600 0)
(declare-sort var1659 0)
(declare-sort var1584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2600!class ClassObject)
(declare-fun startIndex/89425792 (var2600) Int)
(declare-fun var1659_getDefault/-641693464 () var1659)
(declare-fun arr-var1584-init () (Array Int var1584))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var1584 (String) var1584)
(declare-fun String_format/-647569892 (var1659 String (Array Int var1584)) String)
(declare-const null-var2600 var2600)
(declare-const null-__Array__Int__var1584__ (Array Int var1584))
(declare-const var1715 var2600) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException 
(assert (not (= var1715 null-var2600)))
(define-const var3581 String "") ; Statement: r4 = "" 
(define-const var3513 Int (startIndex/89425792 var1715)) ; Statement: $i0 = r0.<com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException: int startIndex> 
 ; Statement: if $i0 < 0 goto $r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert (< var3513 0)) ; Cond: $i0 < 0 
(define-const var1998 var1659 var1659_getDefault/-641693464) ; Statement: $r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var999 (Array Int var1584) arr-var1584-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(define-const var3185 ClassObject var2600!class) ; Statement: $r8 = class "Lcom/github/jknack/handlebars/internal/antlr/LexerNoViableAltException;" 
(assert true)
(define-const var2429 String (getSimpleName/-390194377 var3185)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var999!1 (Array Int var1584))
(assert (not (= var999!1 null-__Array__Int__var1584__)))
(assert (= (select var999!1 0) (cast-from-String-to-var1584 var2429))) ; Statement: $r7[0] = $r9 
(declare-const var999!2 (Array Int var1584))
(assert (not (= var999!2 null-__Array__Int__var1584__)))
(assert (= (select var999!2 1) (cast-from-String-to-var1584 var3581))) ; Statement: $r7[1] = r4 
(define-const var1614 String (String_format/-647569892 var1998 "%s(\u0027%s\u0027)" var999!2)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s(\'%s\')", $r7) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {startIndex/89425792=([com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException], int), var1659_getDefault/-641693464=([], java.util.Locale), arr-var1584-init=([], java.lang.Object[]), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var1584=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2600=com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException, var1715=r0, var3581=r4, var3513=$i0, var1659=java.util.Locale, var1998=$r6, var1584=java.lang.Object, var999=$r7, var3185=$r8, var2429=$r9, var1614=$r10}
; {com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException=var2600, r0=var1715, r4=var3581, $i0=var3513, java.util.Locale=var1659, $r6=var1998, java.lang.Object=var1584, $r7=var999, $r8=var3185, $r9=var2429, $r10=var1614}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException;	r4 = "";	$i0 = r0.<com.github.jknack.handlebars.internal.antlr.LexerNoViableAltException: int startIndex>;	if $i0 < 0 goto $r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r6 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r7 = newarray (java.lang.Object)[2];	$r8 = class "Lcom/github/jknack/handlebars/internal/antlr/LexerNoViableAltException;";	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getSimpleName()>();	$r7[0] = $r9;	$r7[1] = r4;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "%s(\'%s\')", $r7);	return $r10
;block_num 2