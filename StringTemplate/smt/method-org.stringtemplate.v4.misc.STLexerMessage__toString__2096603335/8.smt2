(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1345 0)
(declare-sort var1295 0)
(declare-sort var582 0)
(declare-sort var2050 0)
(declare-sort var3872 0)
(declare-sort var1371 0)
(declare-sort var288 0)
(declare-sort var3984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cause/1626411899 (var582) var1295)
(declare-fun cast-from-var1345-to-var582 (var1345) var582)
(declare-fun cast-from-var1295-to-var2050 (var1295) var2050)
(declare-fun line/53134009 (var2050) Int)
(declare-fun charPositionInLine/53134009 (var2050) Int)
(declare-fun templateToken/-87907225 (var1345) var3872)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun srcName/-87907225 (var1345) String)
(declare-fun error/1626411899 (var582) var288)
(declare-fun message/668038743 (var288) String)
(declare-fun arr-var3984-init () (Array Int var3984))
(declare-fun msg/-87907225 (var1345) String)
(declare-fun cast-from-String-to-var3984 (String) var3984)
(declare-fun String_format/1339386452 (String (Array Int var3984)) String)
(declare-const null-var1345 var1345)
(declare-const null-var3872 var3872)
(declare-const null-String String)
(declare-const null-__Array__Int__var3984__ (Array Int var3984))
(declare-const var3667 var1345) ; Statement: r0 := @this: org.stringtemplate.v4.misc.STLexerMessage 
(assert (not (= var3667 null-var1345)))
(define-const var3675 var1295 (cause/1626411899 (cast-from-var1345-to-var582 var3667))) ; Statement: $r1 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.Throwable cause> 
(define-const var3168 var2050 (cast-from-var1295-to-var2050 var3675)) ; Statement: r2 = (org.antlr.runtime.RecognitionException) $r1 
(define-const var1863 Int (line/53134009 var3168)) ; Statement: i5 = r2.<org.antlr.runtime.RecognitionException: int line> 
(define-const var1320 Int (charPositionInLine/53134009 var3168)) ; Statement: i6 = r2.<org.antlr.runtime.RecognitionException: int charPositionInLine> 
(define-const var1722 var3872 (templateToken/-87907225 var3667)) ; Statement: $r3 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.antlr.runtime.Token templateToken> 
 ; Statement: if $r3 == null goto $r30 = new java.lang.StringBuilder 
(assert (= var1722 null-var3872)) ; Cond: $r3 == null 
(define-const var281 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var281)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var281!1 String)
(assert (= var281!1 ""))
(assert true)
(define-const var2329 String (append/-1001720160 var281!1 var1863)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var281!2 String)
(assert (str.prefixof var281!1 var281!2))
(assert true)
(define-const var1808 String (append/672562846 var2329 ":")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2329!1 String)
(assert (= var2329!1 (str.++ var2329 ":")))
(assert true)
(define-const var720 String (append/-1001720160 var1808 var1320)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6) 
(declare-const var1808!1 String)
(assert (str.prefixof var1808 var1808!1))
(assert true)
(define-const var592 String (toString/-2075883882 var720)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1782 String (srcName/-87907225 var3667)) ; Statement: $r35 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String srcName> 
 ; Statement: if $r35 == null goto $r4 = new java.lang.StringBuilder 
(assert (not (= var1782 null-String))) ; Negate: Cond: $r35 == null  
(define-const var1557 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1557)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1557!1 String)
(assert (= var1557!1 ""))
(define-const var3730 String (srcName/-87907225 var3667)) ; Statement: $r15 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String srcName> 
(assert true)
(define-const var1635 String (append/672562846 var1557!1 var3730)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1557!2 String)
(assert (= var1557!2 (str.++ var1557!1 var3730)))
(assert true)
(define-const var3273 String (append/672562846 var1635 " ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1635!1 String)
(assert (= var1635!1 (str.++ var1635 " ")))
(assert true)
(define-const var873 String (append/672562846 var3273 var592)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3273!1 String)
(assert (= var3273!1 (str.++ var3273 var592)))
(assert true)
(define-const var3727 String (append/672562846 var873 ": ")) ; Statement: $r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var873!1 String)
(assert (= var873!1 (str.++ var873 ": ")))
(define-const var1811 var288 (error/1626411899 (cast-from-var1345-to-var582 var3667))) ; Statement: $r19 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.stringtemplate.v4.misc.ErrorType error> 
(define-const var553 String (message/668038743 var1811)) ; Statement: $r22 = $r19.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message> 
(define-const var2656 (Array Int var3984) arr-var3984-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(define-const var626 String (msg/-87907225 var3667)) ; Statement: $r21 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String msg> 
(declare-const var2656!1 (Array Int var3984))
(assert (not (= var2656!1 null-__Array__Int__var3984__)))
(assert (= (select var2656!1 0) (cast-from-String-to-var3984 var626))) ; Statement: $r20[0] = $r21 
(define-const var1982 String (String_format/1339386452 var553 var2656!1)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r22, $r20) 
(assert true)
(define-const var1321 String (append/672562846 var3727 var1982)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3727!1 String)
(assert (= var3727!1 (str.++ var3727 var1982)))
(assert true)
(define-const var467 String (toString/-2075883882 var1321)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {cause/1626411899=([org.stringtemplate.v4.misc.STMessage], java.lang.Throwable), cast-from-var1345-to-var582=([org.stringtemplate.v4.misc.STLexerMessage], org.stringtemplate.v4.misc.STMessage), cast-from-var1295-to-var2050=([java.lang.Throwable], org.antlr.runtime.RecognitionException), line/53134009=([org.antlr.runtime.RecognitionException], int), charPositionInLine/53134009=([org.antlr.runtime.RecognitionException], int), templateToken/-87907225=([org.stringtemplate.v4.misc.STLexerMessage], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), srcName/-87907225=([org.stringtemplate.v4.misc.STLexerMessage], java.lang.String), error/1626411899=([org.stringtemplate.v4.misc.STMessage], org.stringtemplate.v4.misc.ErrorType), message/668038743=([org.stringtemplate.v4.misc.ErrorType], java.lang.String), arr-var3984-init=([], java.lang.Object[]), msg/-87907225=([org.stringtemplate.v4.misc.STLexerMessage], java.lang.String), cast-from-String-to-var3984=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1345=org.stringtemplate.v4.misc.STLexerMessage, var3667=r0, var1295=java.lang.Throwable, var582=org.stringtemplate.v4.misc.STMessage, var3675=$r1, var2050=org.antlr.runtime.RecognitionException, var3168=r2, var1863=i5, var1320=i6, var3872=org.antlr.runtime.Token, var1722=$r3, var281=$r30, var2329=$r31, var1808=$r32, var720=$r33, var592=$r34, var1782=$r35, var1371=null_type, var1557=$r14, var3730=$r15, var1635=$r16, var3273=$r17, var873=$r18, var3727=$r24, var288=org.stringtemplate.v4.misc.ErrorType, var1811=$r19, var553=$r22, var3984=java.lang.Object, var2656=$r20, var626=$r21, var1982=$r23, var1321=$r25, var467=$r26}
; {org.stringtemplate.v4.misc.STLexerMessage=var1345, r0=var3667, java.lang.Throwable=var1295, org.stringtemplate.v4.misc.STMessage=var582, $r1=var3675, org.antlr.runtime.RecognitionException=var2050, r2=var3168, i5=var1863, i6=var1320, org.antlr.runtime.Token=var3872, $r3=var1722, $r30=var281, $r31=var2329, $r32=var1808, $r33=var720, $r34=var592, $r35=var1782, null_type=var1371, $r14=var1557, $r15=var3730, $r16=var1635, $r17=var3273, $r18=var873, $r24=var3727, org.stringtemplate.v4.misc.ErrorType=var288, $r19=var1811, $r22=var553, java.lang.Object=var3984, $r20=var2656, $r21=var626, $r23=var1982, $r25=var1321, $r26=var467}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.misc.STLexerMessage;	$r1 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.Throwable cause>;	r2 = (org.antlr.runtime.RecognitionException) $r1;	i5 = r2.<org.antlr.runtime.RecognitionException: int line>;	i6 = r2.<org.antlr.runtime.RecognitionException: int charPositionInLine>;	$r3 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.antlr.runtime.Token templateToken>;	if $r3 == null goto $r30 = new java.lang.StringBuilder;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i6);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	$r35 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String srcName>;	if $r35 == null goto $r4 = new java.lang.StringBuilder;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String srcName>;	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r19 = r0.<org.stringtemplate.v4.misc.STLexerMessage: org.stringtemplate.v4.misc.ErrorType error>;	$r22 = $r19.<org.stringtemplate.v4.misc.ErrorType: java.lang.String message>;	$r20 = newarray (java.lang.Object)[1];	$r21 = r0.<org.stringtemplate.v4.misc.STLexerMessage: java.lang.String msg>;	$r20[0] = $r21;	$r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r22, $r20);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	return $r26
;block_num 3