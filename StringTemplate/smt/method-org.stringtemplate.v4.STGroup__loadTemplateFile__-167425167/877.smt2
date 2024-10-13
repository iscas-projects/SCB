(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2585 0)
(declare-sort var1895 0)
(declare-sort var331 0)
(declare-sort var843 0)
(declare-sort var3990 0)
(declare-sort var172 0)
(declare-sort var3220 0)
(declare-sort var2351 0)
(declare-sort var3390 0)
(declare-sort var2062 0)
(declare-sort var525 0)
(declare-sort var886 0)
(declare-sort var3208 0)
(declare-sort var3798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var843-init () var843)
(declare-fun <init>/-1955153851 (var843 var331) void)
(declare-fun var3990-init () var3990)
(declare-fun cast-from-var843-to-var172 (var843) var172)
(declare-fun <init>/-586779897 (var3990 var172) void)
(declare-fun var3220-init () var3220)
(declare-fun cast-from-var3990-to-var2351 (var3990) var2351)
(declare-fun <init>/573908507 (var3220 var2351) void)
(declare-fun group/-1827893530 (var3220) var2585)
(declare-fun group/-1032365211 (var843) var2585)
(declare-fun errMgr/787585255 (var2585) var2062)
(declare-fun cast-from-var3390-to-var886 (var3390) var886)
(declare-fun getMessage/1119517196 (var886) String)
(declare-fun groupSyntaxError/-2121771957 (var2062 var525 String var886 String) void)
(declare-fun var3208_getFileNameNoSuffix/-1011409299 (String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun rawGetTemplate/1385612115 (var2585 String) var3798)
(declare-fun prefix/1377009226 (var3798) String)
(declare-const null-var2585 var2585)
(declare-const null-String String)
(declare-const null-var331 var331)
(declare-const null-var3220 var3220)
(declare-const null-var843 var843)
(declare-const null-var3390 var3390)
(declare-const var525-SYNTAX_ERROR var525)
(declare-const null-var3798 var3798)
(declare-const var2547 var2585) ; Statement: r4 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var2547 null-var2585)))
(declare-const var3081 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3081 null-String)))
(declare-const var2787 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var2787 null-String)))
(declare-const var223 var331) ; Statement: r1 := @parameter2: org.antlr.runtime.CharStream 
(assert (not (= var223 null-var331)))
(define-const var2648 var843 var843-init) ; Statement: $r17 = new org.stringtemplate.v4.compiler.GroupLexer 
(assert true)
;(assert (<init>/-1955153851 var2648 var223)) ; Statement: specialinvoke $r17.<org.stringtemplate.v4.compiler.GroupLexer: void <init>(org.antlr.runtime.CharStream)>(r1) 

(declare-const var2648!1 var843)
(declare-const var223!1 var331)
(define-const var1995 var3990 var3990-init) ; Statement: $r18 = new org.antlr.runtime.CommonTokenStream 
(define-const var2863 var172 (cast-from-var843-to-var172 var2648!1)) ; Statement: $r21 = (org.antlr.runtime.TokenSource) $r17 
(assert true)
;(assert (<init>/-586779897 var1995 var2863)) ; Statement: specialinvoke $r18.<org.antlr.runtime.CommonTokenStream: void <init>(org.antlr.runtime.TokenSource)>($r21) 

(declare-const var1995!1 var3990)
(declare-const var2863!1 var172)
(define-const var2993 var3220 var3220-init) ; Statement: $r19 = new org.stringtemplate.v4.compiler.GroupParser 
(define-const var1158 var2351 (cast-from-var3990-to-var2351 var1995!1)) ; Statement: $r22 = (org.antlr.runtime.TokenStream) $r18 
(assert true)
;(assert (<init>/573908507 var2993 var1158)) ; Statement: specialinvoke $r19.<org.stringtemplate.v4.compiler.GroupParser: void <init>(org.antlr.runtime.TokenStream)>($r22) 

(declare-const var2993!1 var3220)
(declare-const var1158!1 var2351)
(declare-const var2993!2 var3220)
(assert (not (= var2993!2 null-var3220)))
(assert (= (group/-1827893530 var2993!2) var2547)) ; Statement: $r19.<org.stringtemplate.v4.compiler.GroupParser: org.stringtemplate.v4.STGroup group> = r4 
(declare-const var2648!2 var843)
(assert (not (= var2648!2 null-var843)))
(assert (= (group/-1032365211 var2648!2) var2547)) ; Statement: $r17.<org.stringtemplate.v4.compiler.GroupLexer: org.stringtemplate.v4.STGroup group> = r4 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2820 var3390) ; Statement: $r10 := @caughtexception 
(assert (not (= var2820 null-var3390)))
(define-const var3052 var2062 (errMgr/787585255 var2547)) ; Statement: $r11 = r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3056 var525 var525-SYNTAX_ERROR) ; Statement: $r12 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType SYNTAX_ERROR> 
(define-const var1176 var886 (cast-from-var3390-to-var886 var2820)) ; Statement: $r23 = (org.antlr.runtime.RecognitionException) $r10 
(assert true)
(define-const var681 String (getMessage/1119517196 var1176)) ; Statement: $r13 = virtualinvoke $r23.<org.antlr.runtime.RecognitionException: java.lang.String getMessage()>() 
(define-const var2573 var886 (cast-from-var3390-to-var886 var2820)) ; Statement: $r24 = (org.antlr.runtime.RecognitionException) $r10 
(assert true)
;(assert (groupSyntaxError/-2121771957 var3052 var3056 var2787 var2573 var681)) ; Statement: virtualinvoke $r11.<org.stringtemplate.v4.misc.ErrorManager: void groupSyntaxError(org.stringtemplate.v4.misc.ErrorType,java.lang.String,org.antlr.runtime.RecognitionException,java.lang.String)>($r12, r6, $r24, $r13) 

(declare-const var3052!1 var2062)
(declare-const var3056!1 var525)
(declare-const var2787!1 String)
(declare-const var2573!1 var886)
(declare-const var681!1 String)
(assert true) ; Non Conditional
(define-const var956 String (var3208_getFileNameNoSuffix/-1011409299 var2787!1)) ; Statement: $r14 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileNameNoSuffix(java.lang.String)>(r6) 
(define-const var2588 String var956) ; Statement: r15 = $r14 
 ; Statement: if r5 == null goto $r16 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r15) 
(assert (not (= var3081 null-String))) ; Negate: Cond: r5 == null  
(assert true)
(define-const var1003 Int (length/-134980193 var3081)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r16 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r15) 
(assert (<= var1003 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var1758 var3798 (rawGetTemplate/1385612115 var2547 var2588)) ; Statement: $r16 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r15) 
(declare-const var1758!1 var3798)
(assert (not (= var1758!1 null-var3798)))
(assert (= (prefix/1377009226 var1758!1) var3081)) ; Statement: $r16.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String prefix> = r5 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var843-init=([], org.stringtemplate.v4.compiler.GroupLexer), <init>/-1955153851=([org.stringtemplate.v4.compiler.GroupLexer, org.antlr.runtime.CharStream], void), var3990-init=([], org.antlr.runtime.CommonTokenStream), cast-from-var843-to-var172=([org.stringtemplate.v4.compiler.GroupLexer], org.antlr.runtime.TokenSource), <init>/-586779897=([org.antlr.runtime.CommonTokenStream, org.antlr.runtime.TokenSource], void), var3220-init=([], org.stringtemplate.v4.compiler.GroupParser), cast-from-var3990-to-var2351=([org.antlr.runtime.CommonTokenStream], org.antlr.runtime.TokenStream), <init>/573908507=([org.stringtemplate.v4.compiler.GroupParser, org.antlr.runtime.TokenStream], void), group/-1827893530=([org.stringtemplate.v4.compiler.GroupParser], org.stringtemplate.v4.STGroup), group/-1032365211=([org.stringtemplate.v4.compiler.GroupLexer], org.stringtemplate.v4.STGroup), errMgr/787585255=([org.stringtemplate.v4.STGroup], org.stringtemplate.v4.misc.ErrorManager), cast-from-var3390-to-var886=([java.lang.Throwable], org.antlr.runtime.RecognitionException), getMessage/1119517196=([org.antlr.runtime.RecognitionException], java.lang.String), groupSyntaxError/-2121771957=([org.stringtemplate.v4.misc.ErrorManager, org.stringtemplate.v4.misc.ErrorType, java.lang.String, org.antlr.runtime.RecognitionException, java.lang.String], void), var3208_getFileNameNoSuffix/-1011409299=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), rawGetTemplate/1385612115=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.compiler.CompiledST), prefix/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String)}
; {var2585=org.stringtemplate.v4.STGroup, var2547=r4, var3081=r5, var1895=null_type, var2787=r6, var331=org.antlr.runtime.CharStream, var223=r1, var843=org.stringtemplate.v4.compiler.GroupLexer, var2648=$r17, var3990=org.antlr.runtime.CommonTokenStream, var1995=$r18, var172=org.antlr.runtime.TokenSource, var2863=$r21, var3220=org.stringtemplate.v4.compiler.GroupParser, var2993=$r19, var2351=org.antlr.runtime.TokenStream, var1158=$r22, var3390=java.lang.Throwable, var2820=$r10, var2062=org.stringtemplate.v4.misc.ErrorManager, var3052=$r11, var525=org.stringtemplate.v4.misc.ErrorType, var3056=$r12, var886=org.antlr.runtime.RecognitionException, var1176=$r23, var681=$r13, var2573=$r24, var3208=org.stringtemplate.v4.misc.Misc, var956=$r14, var2588=r15, var1003=$i0, var3798=org.stringtemplate.v4.compiler.CompiledST, var1758=$r16}
; {org.stringtemplate.v4.STGroup=var2585, r4=var2547, r5=var3081, null_type=var1895, r6=var2787, org.antlr.runtime.CharStream=var331, r1=var223, org.stringtemplate.v4.compiler.GroupLexer=var843, $r17=var2648, org.antlr.runtime.CommonTokenStream=var3990, $r18=var1995, org.antlr.runtime.TokenSource=var172, $r21=var2863, org.stringtemplate.v4.compiler.GroupParser=var3220, $r19=var2993, org.antlr.runtime.TokenStream=var2351, $r22=var1158, java.lang.Throwable=var3390, $r10=var2820, org.stringtemplate.v4.misc.ErrorManager=var2062, $r11=var3052, org.stringtemplate.v4.misc.ErrorType=var525, $r12=var3056, org.antlr.runtime.RecognitionException=var886, $r23=var1176, $r13=var681, $r24=var2573, org.stringtemplate.v4.misc.Misc=var3208, $r14=var956, r15=var2588, $i0=var1003, org.stringtemplate.v4.compiler.CompiledST=var3798, $r16=var1758}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: org.stringtemplate.v4.STGroup;	r5 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r1 := @parameter2: org.antlr.runtime.CharStream;	$r17 = new org.stringtemplate.v4.compiler.GroupLexer;	specialinvoke $r17.<org.stringtemplate.v4.compiler.GroupLexer: void <init>(org.antlr.runtime.CharStream)>(r1);	$r18 = new org.antlr.runtime.CommonTokenStream;	$r21 = (org.antlr.runtime.TokenSource) $r17;	specialinvoke $r18.<org.antlr.runtime.CommonTokenStream: void <init>(org.antlr.runtime.TokenSource)>($r21);	$r19 = new org.stringtemplate.v4.compiler.GroupParser;	$r22 = (org.antlr.runtime.TokenStream) $r18;	specialinvoke $r19.<org.stringtemplate.v4.compiler.GroupParser: void <init>(org.antlr.runtime.TokenStream)>($r22);	$r19.<org.stringtemplate.v4.compiler.GroupParser: org.stringtemplate.v4.STGroup group> = r4;	$r17.<org.stringtemplate.v4.compiler.GroupLexer: org.stringtemplate.v4.STGroup group> = r4;	$r10 := @caughtexception;	$r11 = r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r12 = <org.stringtemplate.v4.misc.ErrorType: org.stringtemplate.v4.misc.ErrorType SYNTAX_ERROR>;	$r23 = (org.antlr.runtime.RecognitionException) $r10;	$r13 = virtualinvoke $r23.<org.antlr.runtime.RecognitionException: java.lang.String getMessage()>();	$r24 = (org.antlr.runtime.RecognitionException) $r10;	virtualinvoke $r11.<org.stringtemplate.v4.misc.ErrorManager: void groupSyntaxError(org.stringtemplate.v4.misc.ErrorType,java.lang.String,org.antlr.runtime.RecognitionException,java.lang.String)>($r12, r6, $r24, $r13);	$r14 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileNameNoSuffix(java.lang.String)>(r6);	r15 = $r14;	if r5 == null goto $r16 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r15);	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	if $i0 <= 0 goto $r16 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r15);	$r16 = virtualinvoke r4.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r15);	$r16.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String prefix> = r5;	return $r16
;block_num 5