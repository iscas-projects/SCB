(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3108 0)
(declare-sort var1319 0)
(declare-sort var1339 0)
(declare-sort var3393 0)
(declare-sort var3875 0)
(declare-sort var845 0)
(declare-sort var2097 0)
(declare-sort var539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cause/1626411899 (var1339) var1319)
(declare-fun cast-from-var3108-to-var1339 (var3108) var1339)
(declare-fun cast-from-var1319-to-var3393 (var1319) var3393)
(declare-fun line/53134009 (var3393) Int)
(declare-fun charPositionInLine/53134009 (var3393) Int)
(declare-fun templateToken/-87907225 (var3108) var3875)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/-87907225 (var3108) String)
(declare-fun error/1626411899 (var1339) var2097)
(declare-fun message/668038743 (var2097) String)
(declare-fun arr-var539-init () (Array Int var539))
(declare-fun msg/-87907225 (var3108) String)
(declare-fun cast-from-String-to-var539 (String) var539)
(declare-fun String_format/1339386452 (String (Array Int var539)) String)
(declare-const null-var3108 var3108)
(declare-const null-var3875 var3875)
(declare-const null-String String)
(declare-const null-__Array__Int__var539__ (Array Int var539))
(declare-const var3307 var3108) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STLexerMessage 
(assert (not (= var3307 null-var3108)))
(define-const var3667 var1319 (cause/1626411899 (cast-from-var3108-to-var1339 var3307))) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.Throwable cause> 
(define-const var3101 var3393 (cast-from-var1319-to-var3393 var3667)) ; Statement: r2 = (org.antlr.runtime.RecognitionException) $r1 
(define-const var2311 Int (line/53134009 var3101)) ; Statement: i5 = r2.<org.antlr.runtime.RecognitionException: int line> 
(define-const var2376 Int (charPositionInLine/53134009 var3101)) ; Statement: i6 = r2.<org.antlr.runtime.RecognitionException: int charPositionInLine> 
(define-const var3516 var3875 (templateToken/-87907225 var3307)) ; Statement: $r3 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.antlr.runtime.Token templateToken> 
 ; Statement: if $r3 == null goto $r30 = new java.lang.StringBuilder 
(assert (= var3516 null-var3875)) ; Cond: $r3 == null 
(define-const var1257 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1257)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1257!1 String)
(assert (= var1257!1 ""))
(assert true)
(define-const var3232 String (append/-1001720160 var1257!1 var2311)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var1257!2 String)
(assert (str.prefixof var1257!1 var1257!2))
(assert true)
(define-const var3285 String (append/672562846 var3232 ":")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3232!1 String)
(assert (= var3232!1 (str.++ var3232 ":")))
(assert true)
(define-const var2600 String (append/-1001720160 var3285 var2376)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var3285!1 String)
(assert (str.prefixof var3285 var3285!1))
(assert true)
(define-const var3253 String (toString/-2075883882 var2600)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var548 String (srcName/-87907225 var3307)) ; Statement: $r35 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String srcName> 
 ; Statement: if $r35 == null goto $r4 = new java.lang.StringBuilder 
(assert (= var548 null-String)) ; Cond: $r35 == null 
(define-const var686 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var686)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var686!1 String)
(assert (= var686!1 ""))
(assert true)
(define-const var2995 String (append/672562846 var686!1 var3253)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var686!2 String)
(assert (= var686!2 (str.++ var686!1 var3253)))
(assert true)
(define-const var3996 String (append/672562846 var2995 ": ")) ; Statement: $r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2995!1 String)
(assert (= var2995!1 (str.++ var2995 ": ")))
(define-const var1796 var2097 (error/1626411899 (cast-from-var3108-to-var1339 var3307))) ; Statement: $r6 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var3864 String (message/668038743 var1796)) ; Statement: $r9 = $r6.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var1387 (Array Int var539) arr-var539-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(define-const var417 String (msg/-87907225 var3307)) ; Statement: $r8 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String msg> 
(declare-const var1387!1 (Array Int var539))
(assert (not (= var1387!1 null-__Array__Int__var539__)))
(assert (= (select var1387!1 0) (cast-from-String-to-var539 var417))) ; Statement: $r7[0] = $r8 
(define-const var3795 String (String_format/1339386452 var3864 var1387!1)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r9, $r7) 
(assert true)
(define-const var1964 String (append/672562846 var3996 var3795)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3996!1 String)
(assert (= var3996!1 (str.++ var3996 var3795)))
(assert true)
(define-const var1353 String (toString/-2075883882 var1964)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {cause/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Throwable), cast-from-var3108-to-var1339=([org.stringtemplate.v4.misc.STLexerMessage], org.stringtemplate.v4.misc.STMessage), cast-from-var1319-to-var3393=([java.lang.Throwable], org.antlr.runtime.RecognitionException), line/53134009=([org.antlr.runtime.RecognitionException], int), charPositionInLine/53134009=([org.antlr.runtime.RecognitionException], int), templateToken/-87907225=([org.stringtemplate.v4.misc.STLexerMessage], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/-87907225=([org.stringtemplate.v4.misc.STLexerMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var539-init=([], java.lang.Object[]), msg/-87907225=([org.stringtemplate.v4.misc.STLexerMessage], java.lang.String), cast-from-String-to-var539=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3108=org.stringtemplate.v4.misc.STLexerMessage, var3307=r0, var1319=java.lang.Throwable, var1339=org.stringtemplate.v4.misc.STMessage, var3667=$r1, var3393=org.antlr.runtime.RecognitionException, var3101=r2, var2311=i5, var2376=i6, var3875=org.antlr.runtime.Token, var3516=$r3, var1257=$r30, var3232=$r31, var3285=$r32, var2600=$r33, var3253=$r34, var548=$r35, var845=null_type, var686=$r4, var2995=$r5, var3996=$r11, var2097=org.stringtemplate.v4.misc.ErrorType, var1796=$r6, var3864=$r9, var539=java.lang.Object, var1387=$r7, var417=$r8, var3795=$r10, var1964=$r12, var1353=$r13}
; {org.stringtemplate.v4.misc.STLexerMessage=var3108, r0=var3307, java.lang.Throwable=var1319, org.stringtemplate.v4.misc.STMessage=var1339, $r1=var3667, org.antlr.runtime.RecognitionException=var3393, r2=var3101, i5=var2311, i6=var2376, org.antlr.runtime.Token=var3875, $r3=var3516, $r30=var1257, $r31=var3232, $r32=var3285, $r33=var2600, $r34=var3253, $r35=var548, null_type=var845, $r4=var686, $r5=var2995, $r11=var3996, org.stringtemplate.v4.misc.ErrorType=var2097, $r6=var1796, $r9=var3864, java.lang.Object=var539, $r7=var1387, $r8=var417, $r10=var3795, $r12=var1964, $r13=var1353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STLexerMessage;	$r1 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.Throwable cause>;	r2 = (org.antlr.runtime.RecognitionException) $r1;	i5 = r2.<org.antlr.runtime.RecognitionException: int line>;	i6 = r2.<org.antlr.runtime.RecognitionException: int charPositionInLine>;	$r3 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.antlr.runtime.Token templateToken>;	if $r3 == null goto $r30 = new java.lang.StringBuilder;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String srcName>;	if $r35 == null goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r11 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r6 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r9 = $r6.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r7 = newarray (java.lang.Object)[1];	$r8 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String msg>;	$r7[0] = $r8;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r9, $r7);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 3