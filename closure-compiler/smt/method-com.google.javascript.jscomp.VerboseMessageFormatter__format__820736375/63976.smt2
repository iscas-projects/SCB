(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3908 0)
(declare-sort var3454 0)
(declare-sort var399 0)
(declare-sort var2896 0)
(declare-sort var3226 0)
(declare-sort var367 0)
(declare-sort var1562 0)
(declare-sort var1049 0)
(declare-sort var2785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var3454) String)
(declare-fun getSourceName/21548920 (var3454) String)
(declare-fun getLineNumber/-74210753 (var3454) Int)
(declare-fun getSource/1681365446 (var2896) var399)
(declare-fun cast-from-var3908-to-var2896 (var3908) var2896)
(declare-fun var399_getSourceRegion/-1276584437 (var399 String Int) var3226)
(declare-fun arr-var1562-init () (Array Int var1562))
(declare-fun cast-from-String-to-var1562 (String) var1562)
(declare-fun var1049_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var2785_format/-38845327 (String (Array Int var1562)) String)
(declare-const null-var3908 var3908)
(declare-const null-var3454 var3454)
(declare-const null-String String)
(declare-const null-var3226 var3226)
(declare-const null-__Array__Int__var1562__ (Array Int var1562))
(declare-const var1261 var3908) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var1261 null-var3908)))
(declare-const var2978 var3454) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var2978 null-var3454)))
(assert true)
(define-const var1453 String (getDescription/639719136 var2978)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var334 String (getSourceName/21548920 var2978)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var2505 Int (getLineNumber/-74210753 var2978)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var2439 var399 (getSource/1681365446 (cast-from-var3908-to-var2896 var1261))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var241 var3226 (var399_getSourceRegion/-1276584437 var2439 var334 var2505)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var3498 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var241 null-var3226)) ; Cond: r5 == null 
(define-const var2598 (Array Int var1562) arr-var1562-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var2598!1 (Array Int var1562))
(assert (not (= var2598!1 null-__Array__Int__var1562__)))
(assert (= (select var2598!1 0) (cast-from-String-to-var1562 var1453))) ; Statement: $r6[0] = r1 
(define-const var1593 Bool (var1049_isNullOrEmpty/1886904788 var334)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (not (= (ite var1593 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2656 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
 ; Statement: goto [?= $r6[1] = $r9] 
(assert true) ; Non Conditional
(declare-const var2598!2 (Array Int var1562))
(assert (not (= var2598!2 null-__Array__Int__var1562__)))
(assert (= (select var2598!2 1) (cast-from-String-to-var1562 var2656))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (>= var2505 0)) ; Cond: i0 >= 0 
(define-const var798 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(declare-const var2598!3 (Array Int var1562))
(assert (not (= var2598!3 null-__Array__Int__var1562__)))
(assert (= (select var2598!3 2) (cast-from-String-to-var1562 var798))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (= var3498 null-String)) ; Cond: r8 == null 
(define-const var2678 String ".") ; Statement: $r11 = "." 
(assert true) ; Non Conditional
(declare-const var2598!4 (Array Int var1562))
(assert (not (= var2598!4 null-__Array__Int__var1562__)))
(assert (= (select var2598!4 3) (cast-from-String-to-var1562 var2678))) ; Statement: $r6[3] = $r11 
(define-const var2730 String (var2785_format/-38845327 "%s at %s line %s %s" var2598!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var3908-to-var2896=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var399_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var1562-init=([], java.lang.Object[]), cast-from-String-to-var1562=([java.lang.String], java.lang.Object), var1049_isNullOrEmpty/1886904788=([java.lang.String], boolean), var2785_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3908=com.google.javascript.jscomp.VerboseMessageFormatter, var1261=r3, var3454=com.google.javascript.jscomp.JSError, var2978=r0, var1453=r1, var334=r2, var2505=i0, var399=com.google.javascript.jscomp.SourceExcerptProvider, var2896=com.google.javascript.jscomp.AbstractMessageFormatter, var2439=$r4, var3226=com.google.javascript.jscomp.Region, var241=r5, var367=null_type, var3498=r8, var1562=java.lang.Object, var2598=$r6, var1049=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1593=$z0, var2656=$r9, var798=$r10, var2678=$r11, var2785=com.google.javascript.jscomp.base.format.SimpleFormat, var2730=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var3908, r3=var1261, com.google.javascript.jscomp.JSError=var3454, r0=var2978, r1=var1453, r2=var334, i0=var2505, com.google.javascript.jscomp.SourceExcerptProvider=var399, com.google.javascript.jscomp.AbstractMessageFormatter=var2896, $r4=var2439, com.google.javascript.jscomp.Region=var3226, r5=var241, null_type=var367, r8=var3498, java.lang.Object=var1562, $r6=var2598, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1049, $z0=var1593, $r9=var2656, $r10=var798, $r11=var2678, com.google.javascript.jscomp.base.format.SimpleFormat=var2785, $r7=var2730}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = "(unknown source)";	goto [?= $r6[1] = $r9];	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = ".";	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8