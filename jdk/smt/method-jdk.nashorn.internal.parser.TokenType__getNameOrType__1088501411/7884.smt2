(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2420 0)
(declare-sort var2341 0)
(declare-sort var1888 0)
(declare-sort var2091 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-648060691 (var2420) String)
(declare-fun name/1633728430 (var1888) String)
(declare-fun cast-from-var2420-to-var1888 (var2420) var1888)
(declare-fun toLowerCase/1946809429 (String var2091) String)
(declare-const null-var2420 var2420)
(declare-const null-String String)
(declare-const var2091-ENGLISH var2091)
(declare-const var3865 var2420) ; Statement: r0 := @this: jdk.nashorn.internal.parser.TokenType 
(assert (not (= var3865 null-var2420)))
(define-const var3734 String (name/-648060691 var3865)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name> 
 ; Statement: if $r1 != null goto $r4 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name> 
(assert (not (not (= var3734 null-String)))) ; Negate: Cond: $r1 != null  
(assert true)
(define-const var2587 String (name/1633728430 (cast-from-var2420-to-var1888 var3865))) ; Statement: $r3 = specialinvoke r0.<java.lang.Enum: java.lang.String name()>() 
(define-const var2617 var2091 var2091-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2079 String (toLowerCase/1946809429 var2587 var2617)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-648060691=([jdk.nashorn.internal.parser.TokenType], java.lang.String), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2420-to-var1888=([jdk.nashorn.internal.parser.TokenType], java.lang.Enum), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2420=jdk.nashorn.internal.parser.TokenType, var3865=r0, var3734=$r1, var2341=null_type, var1888=java.lang.Enum, var2587=$r3, var2091=java.util.Locale, var2617=$r2, var2079=$r4}
; {jdk.nashorn.internal.parser.TokenType=var2420, r0=var3865, $r1=var3734, null_type=var2341, java.lang.Enum=var1888, $r3=var2587, java.util.Locale=var2091, $r2=var2617, $r4=var2079}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.TokenType;	$r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name>;	if $r1 != null goto $r4 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name>;	$r3 = specialinvoke r0.<java.lang.Enum: java.lang.String name()>();	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	goto [?= return $r4];	return $r4
;block_num 3