(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2741 0)
(declare-sort var1782 0)
(declare-sort var2224 0)
(declare-sort var1061 0)
(declare-sort var1087 0)
(declare-sort var1015 0)
(declare-sort var1901 0)
(declare-sort var916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun token/53134009 (var1782) var2224)
(declare-fun var2224_getInputStream/-1985324798 (var2224) var1061)
(declare-fun getErrorHeader/1152498642 (var1087 var1782) String)
(declare-fun cast-from-var2741-to-var1087 (var2741) var1087)
(declare-fun getErrorMessage/1692486359 (var1087 var1782 (Array Int String)) String)
(declare-fun errMgr/-426919730 (var2741) var1015)
(declare-fun templateToken/-426919730 (var2741) var2224)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun compileTimeError/-1630590729 (var1015 var1901 var2224 var2224 var916) void)
(declare-fun cast-from-String-to-var916 (String) var916)
(declare-const null-var2741 var2741)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1782 var1782)
(declare-const null-var1061 var1061)
(declare-const var1901-SYNTAX_ERROR var1901)
(declare-const var2301 var2741) ; Statement: r2 := @this: org.stringtemplate.v4.compiler.CodeGenerator 
(assert (not (= var2301 null-var2741)))
(declare-const var138 (Array Int String)) ; Statement: r3 := @parameter0: java.lang.String[] 
(assert (not (= var138 null-__Array__Int__String__)))
(declare-const var2662 var1782) ; Statement: r0 := @parameter1: org.antlr.runtime.RecognitionException 
(assert (not (= var2662 null-var1782)))
(define-const var632 var2224 (token/53134009 var2662)) ; Statement: r18 = r0.<org.antlr.runtime.RecognitionException: org.antlr.runtime.Token token> 
(define-const var3828 var1061 (var2224_getInputStream/-1985324798 var632)) ; Statement: $r1 = interfaceinvoke r18.<org.antlr.runtime.Token: org.antlr.runtime.CharStream getInputStream()>() 
 ; Statement: if $r1 != null goto $r16 = virtualinvoke r2.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String getErrorHeader(org.antlr.runtime.RecognitionException)>(r0) 
(assert (not (= var3828 null-var1061))) ; Cond: $r1 != null 
(assert true)
(define-const var19 String (getErrorHeader/1152498642 (cast-from-var2741-to-var1087 var2301) var2662)) ; Statement: $r16 = virtualinvoke r2.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String getErrorHeader(org.antlr.runtime.RecognitionException)>(r0) 
(assert true)
(define-const var1680 String (getErrorMessage/1692486359 (cast-from-var2741-to-var1087 var2301) var2662 var138)) ; Statement: $r17 = virtualinvoke r2.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String getErrorMessage(org.antlr.runtime.RecognitionException,java.lang.String[])>(r0, r3) 
(define-const var569 var1015 (errMgr/-426919730 var2301)) ; Statement: $r5 = r2.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var2219 var1901 var1901-SYNTAX_ERROR) ; Statement: $r6 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType SYNTAX_ERROR> 
(define-const var3161 var2224 (templateToken/-426919730 var2301)) ; Statement: $r7 = r2.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.Token templateToken> 
(define-const var1633 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1633)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1633!1 String)
(assert (= var1633!1 ""))
(assert true)
(define-const var1371 String (append/672562846 var1633!1 var19)) ; Statement: $r8 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var1633!2 String)
(assert (= var1633!2 (str.++ var1633!1 var19)))
(assert true)
(define-const var3127 String (append/672562846 var1371 " ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1371!1 String)
(assert (= var1371!1 (str.++ var1371 " ")))
(assert true)
(define-const var281 String (append/672562846 var3127 var1680)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3127!1 String)
(assert (= var3127!1 (str.++ var3127 var1680)))
(assert true)
(define-const var3560 String (toString/-2075883882 var281)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (compileTimeError/-1630590729 var569 var2219 var3161 var632 (cast-from-String-to-var916 var3560))) ; Statement: virtualinvoke $r5.<org.stringtemplate.v4.misc.ErrorManager: void compileTimeError(org.stringtemplate.v4.misc.ErrorType,org.antlr.runtime.Token,org.antlr.runtime.Token,java.lang.Object)>($r6, $r7, r18, $r11) 

(declare-const var569!1 var1015)
(declare-const var2219!1 var1901)
(declare-const var3161!1 var2224)
(declare-const var632!1 var2224)
(declare-const var3560!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {token/53134009=([org.antlr.runtime.RecognitionException], org.antlr.runtime.Token), var2224_getInputStream/-1985324798=([org.antlr.runtime.Token], org.antlr.runtime.CharStream), getErrorHeader/1152498642=([org.antlr.runtime.tree.TreeParser, org.antlr.runtime.RecognitionException], java.lang.String), cast-from-var2741-to-var1087=([org.stringtemplate.v4.compiler.CodeGenerator], org.antlr.runtime.tree.TreeParser), getErrorMessage/1692486359=([org.antlr.runtime.tree.TreeParser, org.antlr.runtime.RecognitionException, java.lang.String[]], java.lang.String), errMgr/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], org.stringtemplate.v4.misc.ErrorManager), templateToken/-426919730=([org.stringtemplate.v4.compiler.CodeGenerator], org.antlr.runtime.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), compileTimeError/-1630590729=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.misc.ErrorType, org.antlr.runtime.Token, org.antlr.runtime.Token, java.lang.Object], void), cast-from-String-to-var916=([java.lang.String], java.lang.Object)}
; {var2741=org.stringtemplate.v4.compiler.CodeGenerator, var2301=r2, var138=r3, var1782=org.antlr.runtime.RecognitionException, var2662=r0, var2224=org.antlr.runtime.Token, var632=r18, var1061=org.antlr.runtime.CharStream, var3828=$r1, var1087=org.antlr.runtime.tree.TreeParser, var19=$r16, var1680=$r17, var1015=org.stringtemplate.v4.misc.ErrorManager, var569=$r5, var1901=org.stringtemplate.v4.misc.ErrorType, var2219=$r6, var3161=$r7, var1633=$r19, var1371=$r8, var3127=$r9, var281=$r10, var3560=$r11, var916=java.lang.Object}
; {org.stringtemplate.v4.compiler.CodeGenerator=var2741, r2=var2301, r3=var138, org.antlr.runtime.RecognitionException=var1782, r0=var2662, org.antlr.runtime.Token=var2224, r18=var632, org.antlr.runtime.CharStream=var1061, $r1=var3828, org.antlr.runtime.tree.TreeParser=var1087, $r16=var19, $r17=var1680, org.stringtemplate.v4.misc.ErrorManager=var1015, $r5=var569, org.stringtemplate.v4.misc.ErrorType=var1901, $r6=var2219, $r7=var3161, $r19=var1633, $r8=var1371, $r9=var3127, $r10=var281, $r11=var3560, java.lang.Object=var916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.stringtemplate.v4.compiler.CodeGenerator;	r3 := @parameter0: java.lang.String[];	r0 := @parameter1: org.antlr.runtime.RecognitionException;	r18 = r0.<org.antlr.runtime.RecognitionException: org.antlr.runtime.Token token>;	$r1 = interfaceinvoke r18.<org.antlr.runtime.Token: org.antlr.runtime.CharStream getInputStream()>();	if $r1 != null goto $r16 = virtualinvoke r2.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String getErrorHeader(org.antlr.runtime.RecognitionException)>(r0);	$r16 = virtualinvoke r2.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String getErrorHeader(org.antlr.runtime.RecognitionException)>(r0);	$r17 = virtualinvoke r2.<org.stringtemplate.v4.compiler.CodeGenerator: java.lang.String getErrorMessage(org.antlr.runtime.RecognitionException,java.lang.String[])>(r0, r3);	$r5 = r2.<org.stringtemplate.v4.compiler.CodeGenerator: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r6 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType SYNTAX_ERROR>;	$r7 = r2.<org.stringtemplate.v4.compiler.CodeGenerator: org.antlr.runtime.Token templateToken>;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<org.stringtemplate.v4.misc.ErrorManager: void compileTimeError(org.stringtemplate.v4.misc.ErrorType,org.antlr.runtime.Token,org.antlr.runtime.Token,java.lang.Object)>($r6, $r7, r18, $r11);	return
;block_num 2