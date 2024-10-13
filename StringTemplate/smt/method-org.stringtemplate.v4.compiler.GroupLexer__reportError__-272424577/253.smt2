(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3531 0)
(declare-sort var442 0)
(declare-sort var732 0)
(declare-sort var2600 0)
(declare-sort var2355 0)
(declare-sort var1284 0)
(declare-sort var3693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun input/448264395 (var2600) var732)
(declare-fun cast-from-var3531-to-var2600 (var3531) var2600)
(declare-fun var732_LA/-940427205 (var732 Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun group/-1032365211 (var3531) var2355)
(declare-fun errMgr/787585255 (var2355) var1284)
(declare-fun getSourceName/-1740581043 (var3531) String)
(declare-fun groupSyntaxError/-2121771957 (var1284 var3693 String var442 String) void)
(declare-const null-var3531 var3531)
(declare-const null-var442 var442)
(declare-const var3693-SYNTAX_ERROR var3693)
(declare-const var941 var3531) ; Statement: r1 := @this: org.stringtemplate.v4.compiler.GroupLexer 
(assert (not (= var941 null-var3531)))
(declare-const var3757 var442) ; Statement: r0 := @parameter0: org.antlr.runtime.RecognitionException 
(assert (not (= var3757 null-var442)))
(define-const var2437 Bool true) ; Statement: $z0 = r0 instanceof org.antlr.runtime.NoViableAltException 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.antlr.runtime.MismatchedTokenException 
(assert (not (= (ite var2437 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2271 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2271)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2271!1 String)
(assert (= var2271!1 ""))
(assert true)
(define-const var1931 String (append/672562846 var2271!1 "invalid character \u0027")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid character \'") 
(declare-const var2271!2 String)
(assert (= var2271!2 (str.++ var2271!1 "invalid character \u0027")))
(define-const var3706 var732 (input/448264395 (cast-from-var3531-to-var2600 var941))) ; Statement: $r5 = r1.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input> 
(define-const var1693 Int (var732_LA/-940427205 var3706 1)) ; Statement: $i1 = interfaceinvoke $r5.<org.antlr.runtime.CharStream: int LA(int)>(1) 
(define-const var2127 Int (cast-from-Int-to-Int var1693)) ; Statement: $c2 = (char) $i1 
(assert true)
(define-const var1324 String (append/-1166366385 var1931 var2127)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2) 
(declare-const var1931!1 String)
(assert (str.prefixof var1931 var1931!1))
(assert true)
(define-const var814 String (append/672562846 var1324 "\u0027")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1324!1 String)
(assert (= var1324!1 (str.++ var1324 "\u0027")))
(assert true)
(define-const var2677 String (toString/-2075883882 var814)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r10 = r1.<org.stringtemplate.v4.compiler.GroupLexer: org.stringtemplate.v4.STGroup group>] 
(assert true) ; Non Conditional
(define-const var3136 var2355 (group/-1032365211 var941)) ; Statement: $r10 = r1.<org.stringtemplate.v4.compiler.GroupLexer: org.stringtemplate.v4.STGroup group> 
(define-const var3412 var1284 (errMgr/787585255 var3136)) ; Statement: $r11 = $r10.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3245 var3693 var3693-SYNTAX_ERROR) ; Statement: $r12 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType SYNTAX_ERROR> 
(assert true)
(define-const var725 String (getSourceName/-1740581043 var941)) ; Statement: $r13 = virtualinvoke r1.<org.stringtemplate.v4.compiler.GroupLexer: java.lang.String getSourceName()>() 
(assert true)
;(assert (groupSyntaxError/-2121771957 var3412 var3245 var725 var3757 var2677)) ; Statement: virtualinvoke $r11.<org.stringtemplate.v4.misc.ErrorManager: void groupSyntaxError(org.stringtemplate.v4.misc.ErrorType,java.lang.String,org.antlr.runtime.RecognitionException,java.lang.String)>($r12, $r13, r0, r9) 

(declare-const var3412!1 var1284)
(declare-const var3245!1 var3693)
(declare-const var725!1 String)
(declare-const var3757!1 var442)
(declare-const var2677!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), input/448264395=([org.antlr.runtime.Lexer], org.antlr.runtime.CharStream), cast-from-var3531-to-var2600=([org.stringtemplate.v4.compiler.GroupLexer], org.antlr.runtime.Lexer), var732_LA/-940427205=([org.antlr.runtime.CharStream, int], int), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), group/-1032365211=([org.stringtemplate.v4.compiler.GroupLexer], org.stringtemplate.v4.STGroup), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), getSourceName/-1740581043=([org.stringtemplate.v4.compiler.GroupLexer], java.lang.String), groupSyntaxError/-2121771957=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.misc.ErrorType, java.lang.String, org.antlr.runtime.RecognitionException, java.lang.String], void)}
; {var3531=org.stringtemplate.v4.compiler.GroupLexer, var941=r1, var442=org.antlr.runtime.RecognitionException, var3757=r0, var2437=$z0, var2271=$r4, var1931=$r6, var732=org.antlr.runtime.CharStream, var2600=org.antlr.runtime.Lexer, var3706=$r5, var1693=$i1, var2127=$c2, var1324=$r7, var814=$r8, var2677=r9, var2355=org.stringtemplate.v4.STGroup, var3136=$r10, var1284=org.stringtemplate.v4.misc.ErrorManager, var3412=$r11, var3693=org.stringtemplate.v4.misc.ErrorType, var3245=$r12, var725=$r13}
; {org.stringtemplate.v4.compiler.GroupLexer=var3531, r1=var941, org.antlr.runtime.RecognitionException=var442, r0=var3757, $z0=var2437, $r4=var2271, $r6=var1931, org.antlr.runtime.CharStream=var732, org.antlr.runtime.Lexer=var2600, $r5=var3706, $i1=var1693, $c2=var2127, $r7=var1324, $r8=var814, r9=var2677, org.stringtemplate.v4.STGroup=var2355, $r10=var3136, org.stringtemplate.v4.misc.ErrorManager=var1284, $r11=var3412, org.stringtemplate.v4.misc.ErrorType=var3693, $r12=var3245, $r13=var725}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.compiler.GroupLexer;	r0 := @parameter0: org.antlr.runtime.RecognitionException;	$z0 = r0 instanceof org.antlr.runtime.NoViableAltException;	if $z0 == 0 goto $z1 = r0 instanceof org.antlr.runtime.MismatchedTokenException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid character \'");	$r5 = r1.<org.stringtemplate.v4.compiler.GroupLexer: org.antlr.runtime.CharStream input>;	$i1 = interfaceinvoke $r5.<org.antlr.runtime.CharStream: int LA(int)>(1);	$c2 = (char) $i1;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r10 = r1.<org.stringtemplate.v4.compiler.GroupLexer: org.stringtemplate.v4.STGroup group>];	$r10 = r1.<org.stringtemplate.v4.compiler.GroupLexer: org.stringtemplate.v4.STGroup group>;	$r11 = $r10.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r12 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType SYNTAX_ERROR>;	$r13 = virtualinvoke r1.<org.stringtemplate.v4.compiler.GroupLexer: java.lang.String getSourceName()>();	virtualinvoke $r11.<org.stringtemplate.v4.misc.ErrorManager: void groupSyntaxError(org.stringtemplate.v4.misc.ErrorType,java.lang.String,org.antlr.runtime.RecognitionException,java.lang.String)>($r12, $r13, r0, r9);	return
;block_num 3