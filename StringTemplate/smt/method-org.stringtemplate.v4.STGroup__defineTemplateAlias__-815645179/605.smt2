(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2629 0)
(declare-sort var3106 0)
(declare-sort var2156 0)
(declare-sort var1485 0)
(declare-sort var3509 0)
(declare-sort var35 0)
(declare-sort var1777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3106_getText/-2014085613 (var3106) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun rawGetTemplate/1385612115 (var2629 String) var2156)
(declare-fun errMgr/787585255 (var2629) var1485)
(declare-fun compileTimeError/1170394034 (var1485 var3509 var3106 var3106 var35 var35) void)
(declare-fun cast-from-String-to-var35 (String) var35)
(declare-const null-var2629 var2629)
(declare-const null-var3106 var3106)
(declare-const null-var2156 var2156)
(declare-const var3509-ALIAS_TARGET_UNDEFINED var3509)
(declare-const null-NullType var1777)
(declare-const var156 var2629) ; Statement: r4 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var156 null-var2629)))
(declare-const var199 var3106) ; Statement: r0 := @parameter0: org.antlr.runtime.Token 
(assert (not (= var199 null-var3106)))
(declare-const var1181 var3106) ; Statement: r2 := @parameter1: org.antlr.runtime.Token 
(assert (not (= var1181 null-var3106)))
(define-const var1180 String (var3106_getText/-2014085613 var199)) ; Statement: r1 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>() 
(define-const var3450 String (var3106_getText/-2014085613 var1181)) ; Statement: r3 = interfaceinvoke r2.<org.antlr.runtime.Token: java.lang.String getText()>() 
(define-const var3682 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3682)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3682!1 String)
(assert (= var3682!1 ""))
(assert true)
(define-const var2055 String (append/672562846 var3682!1 "/")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3682!2 String)
(assert (= var3682!2 (str.++ var3682!1 "/")))
(assert true)
(define-const var1110 String (append/672562846 var2055 var3450)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2055!1 String)
(assert (= var2055!1 (str.++ var2055 var3450)))
(assert true)
(define-const var2109 String (toString/-2075883882 var1110)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1999 var2156 (rawGetTemplate/1385612115 var156 var2109)) ; Statement: r9 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>($r8) 
 ; Statement: if r9 != null goto $r10 = new java.lang.StringBuilder 
(assert (not (not (= var1999 null-var2156)))) ; Negate: Cond: r9 != null  
(define-const var203 var1485 (errMgr/787585255 var156)) ; Statement: $r15 = r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var469 var3509 var3509-ALIAS_TARGET_UNDEFINED) ; Statement: $r14 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType ALIAS_TARGET_UNDEFINED> 
(assert true)
;(assert (compileTimeError/1170394034 var203 var469 null-var3106 var199 (cast-from-String-to-var35 var1180) (cast-from-String-to-var35 var3450))) ; Statement: virtualinvoke $r15.<org.stringtemplate.v4.misc.ErrorManager: void compileTimeError(org.stringtemplate.v4.misc.ErrorType,org.antlr.runtime.Token,org.antlr.runtime.Token,java.lang.Object,java.lang.Object)>($r14, null, r0, r1, r3) 

(declare-const var203!1 var1485)
(declare-const var469!1 var3509)
(declare-const var3562 var1777)
(declare-const var199!1 var3106)
(declare-const var1180!1 String)
(declare-const var3450!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3106_getText/-2014085613=([org.antlr.runtime.Token], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), rawGetTemplate/1385612115=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.compiler.CompiledST), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), compileTimeError/1170394034=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.misc.ErrorType, org.antlr.runtime.Token, org.antlr.runtime.Token, java.lang.Object, java.lang.Object], void), cast-from-String-to-var35=([java.lang.String], java.lang.Object)}
; {var2629=org.stringtemplate.v4.STGroup, var156=r4, var3106=org.antlr.runtime.Token, var199=r0, var1181=r2, var1180=r1, var3450=r3, var3682=$r5, var2055=$r6, var1110=$r7, var2109=$r8, var2156=org.stringtemplate.v4.compiler.CompiledST, var1999=r9, var1485=org.stringtemplate.v4.misc.ErrorManager, var203=$r15, var3509=org.stringtemplate.v4.misc.ErrorType, var469=$r14, var35=java.lang.Object, var3562=null, var1777=null_type}
; {org.stringtemplate.v4.STGroup=var2629, r4=var156, org.antlr.runtime.Token=var3106, r0=var199, r2=var1181, r1=var1180, r3=var3450, $r5=var3682, $r6=var2055, $r7=var1110, $r8=var2109, org.stringtemplate.v4.compiler.CompiledST=var2156, r9=var1999, org.stringtemplate.v4.misc.ErrorManager=var1485, $r15=var203, org.stringtemplate.v4.misc.ErrorType=var3509, $r14=var469, java.lang.Object=var35, null=var3562, null_type=var1777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.stringtemplate.v4.STGroup;	r0 := @parameter0: org.antlr.runtime.Token;	r2 := @parameter1: org.antlr.runtime.Token;	r1 = interfaceinvoke r0.<org.antlr.runtime.Token: java.lang.String getText()>();	r3 = interfaceinvoke r2.<org.antlr.runtime.Token: java.lang.String getText()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r9 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>($r8);	if r9 != null goto $r10 = new java.lang.StringBuilder;	$r15 = r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r14 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType ALIAS_TARGET_UNDEFINED>;	virtualinvoke $r15.<org.stringtemplate.v4.misc.ErrorManager: void compileTimeError(org.stringtemplate.v4.misc.ErrorType,org.antlr.runtime.Token,org.antlr.runtime.Token,java.lang.Object,java.lang.Object)>($r14, null, r0, r1, r3);	return null
;block_num 2