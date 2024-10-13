(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var170 0)
(declare-sort var3429 0)
(declare-sort var2729 0)
(declare-sort var3053 0)
(declare-sort var1351 0)
(declare-sort var1334 0)
(declare-sort var731 0)
(declare-sort var2782 0)
(declare-sort var2005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var3429) String)
(declare-fun getSourceName/21548920 (var3429) String)
(declare-fun getLineNumber/-74210753 (var3429) Int)
(declare-fun getSource/1681365446 (var3053) var2729)
(declare-fun cast-from-var170-to-var3053 (var170) var3053)
(declare-fun var2729_getSourceRegion/-1276584437 (var2729 String Int) var1351)
(declare-fun arr-var731-init () (Array Int var731))
(declare-fun cast-from-String-to-var731 (String) var731)
(declare-fun var2782_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var2005_format/-38845327 (String (Array Int var731)) String)
(declare-const null-var170 var170)
(declare-const null-var3429 var3429)
(declare-const null-String String)
(declare-const null-var1351 var1351)
(declare-const null-__Array__Int__var731__ (Array Int var731))
(declare-const var2805 var170) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var2805 null-var170)))
(declare-const var2635 var3429) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var2635 null-var3429)))
(assert true)
(define-const var982 String (getDescription/639719136 var2635)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var1699 String (getSourceName/21548920 var2635)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var1642 Int (getLineNumber/-74210753 var2635)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var2060 var2729 (getSource/1681365446 (cast-from-var170-to-var3053 var2805))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var2772 var1351 (var2729_getSourceRegion/-1276584437 var2060 var1699 var1642)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var2402 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var2772 null-var1351)) ; Cond: r5 == null 
(define-const var3742 (Array Int var731) arr-var731-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var3742!1 (Array Int var731))
(assert (not (= var3742!1 null-__Array__Int__var731__)))
(assert (= (select var3742!1 0) (cast-from-String-to-var731 var982))) ; Statement: $r6[0] = r1 
(define-const var3857 Bool (var2782_isNullOrEmpty/1886904788 var1699)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (= (ite var3857 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3479 String var1699) ; Statement: $r9 = r2 
(assert true) ; Non Conditional
(declare-const var3742!2 (Array Int var731))
(assert (not (= var3742!2 null-__Array__Int__var731__)))
(assert (= (select var3742!2 1) (cast-from-String-to-var731 var3479))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (>= var1642 0)) ; Cond: i0 >= 0 
(define-const var1130 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(declare-const var3742!3 (Array Int var731))
(assert (not (= var3742!3 null-__Array__Int__var731__)))
(assert (= (select var3742!3 2) (cast-from-String-to-var731 var1130))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (not (= var2402 null-String))) ; Negate: Cond: r8 == null  
(define-const var2404 String (str.++ ":\n\n\u0001" var2402)) ; Statement: $r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001") 
 ; Statement: goto [?= $r6[3] = $r11] 
(assert true) ; Non Conditional
(declare-const var3742!4 (Array Int var731))
(assert (not (= var3742!4 null-__Array__Int__var731__)))
(assert (= (select var3742!4 3) (cast-from-String-to-var731 var2404))) ; Statement: $r6[3] = $r11 
(define-const var801 String (var2005_format/-38845327 "%s at %s line %s %s" var3742!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var170-to-var3053=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var2729_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var731-init=([], java.lang.Object[]), cast-from-String-to-var731=([java.lang.String], java.lang.Object), var2782_isNullOrEmpty/1886904788=([java.lang.String], boolean), var2005_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var170=com.google.javascript.jscomp.VerboseMessageFormatter, var2805=r3, var3429=com.google.javascript.jscomp.JSError, var2635=r0, var982=r1, var1699=r2, var1642=i0, var2729=com.google.javascript.jscomp.SourceExcerptProvider, var3053=com.google.javascript.jscomp.AbstractMessageFormatter, var2060=$r4, var1351=com.google.javascript.jscomp.Region, var2772=r5, var1334=null_type, var2402=r8, var731=java.lang.Object, var3742=$r6, var2782=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var3857=$z0, var3479=$r9, var1130=$r10, var2404=$r11, var2005=com.google.javascript.jscomp.base.format.SimpleFormat, var801=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var170, r3=var2805, com.google.javascript.jscomp.JSError=var3429, r0=var2635, r1=var982, r2=var1699, i0=var1642, com.google.javascript.jscomp.SourceExcerptProvider=var2729, com.google.javascript.jscomp.AbstractMessageFormatter=var3053, $r4=var2060, com.google.javascript.jscomp.Region=var1351, r5=var2772, null_type=var1334, r8=var2402, java.lang.Object=var731, $r6=var3742, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2782, $z0=var3857, $r9=var3479, $r10=var1130, $r11=var2404, com.google.javascript.jscomp.base.format.SimpleFormat=var2005, $r7=var801}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = r2;	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001");	goto [?= $r6[3] = $r11];	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8