(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var91 0)
(declare-sort var3278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getExpression/-715437379 (var3278) String)
(declare-fun cast-from-var91-to-var3278 (var91) var3278)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun options/1361211728 (var91) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var91 var91)
(declare-const var2355 var91) ; Statement: r1 := @this: jdk.nashorn.internal.parser.Lexer$RegexToken 
(assert (not (= var2355 null-var91)))
(define-const var2514 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2514)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2514!1 String)
(assert (= var2514!1 ""))
(assert true)
(define-const var2290 String (append/-1166366385 var2514!1 47)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var2514!2 String)
(assert (str.prefixof var2514!1 var2514!2))
(assert true)
(define-const var2923 String (getExpression/-715437379 (cast-from-var91-to-var3278 var2355))) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.parser.Lexer$RegexToken: java.lang.String getExpression()>() 
(assert true)
(define-const var154 String (append/672562846 var2290 var2923)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2290!1 String)
(assert (= var2290!1 (str.++ var2290 var2923)))
(assert true)
(define-const var2949 String (append/-1166366385 var154 47)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47) 
(declare-const var154!1 String)
(assert (str.prefixof var154 var154!1))
(define-const var3659 String (options/1361211728 var2355)) ; Statement: $r5 = r1.<jdk.nashorn.internal.parser.Lexer$RegexToken: java.lang.String options> 
(assert true)
(define-const var270 String (append/672562846 var2949 var3659)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2949!1 String)
(assert (= var2949!1 (str.++ var2949 var3659)))
(assert true)
(define-const var455 String (toString/-2075883882 var270)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getExpression/-715437379=([jdk.nashorn.internal.parser.Lexer$LexerToken], java.lang.String), cast-from-var91-to-var3278=([jdk.nashorn.internal.parser.Lexer$RegexToken], jdk.nashorn.internal.parser.Lexer$LexerToken), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), options/1361211728=([jdk.nashorn.internal.parser.Lexer$RegexToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var91=jdk.nashorn.internal.parser.Lexer$RegexToken, var2355=r1, var2514=$r0, var2290=$r3, var3278=jdk.nashorn.internal.parser.Lexer$LexerToken, var2923=$r2, var154=$r4, var2949=$r6, var3659=$r5, var270=$r7, var455=$r8}
; {jdk.nashorn.internal.parser.Lexer$RegexToken=var91, r1=var2355, $r0=var2514, $r3=var2290, jdk.nashorn.internal.parser.Lexer$LexerToken=var3278, $r2=var2923, $r4=var154, $r6=var2949, $r5=var3659, $r7=var270, $r8=var455}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.parser.Lexer$RegexToken;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r2 = virtualinvoke r1.<jdk.nashorn.internal.parser.Lexer$RegexToken: java.lang.String getExpression()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(47);	$r5 = r1.<jdk.nashorn.internal.parser.Lexer$RegexToken: java.lang.String options>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1