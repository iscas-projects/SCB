(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var906 0)
(declare-sort var3819 0)
(declare-sort var262 0)
(declare-sort var1620 0)
(declare-sort var1165 0)
(declare-sort var594 0)
(declare-sort var3376 0)
(declare-sort var2572 0)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var3819) String)
(declare-fun getSourceName/21548920 (var3819) String)
(declare-fun getLineNumber/-74210753 (var3819) Int)
(declare-fun getSource/1681365446 (var1620) var262)
(declare-fun cast-from-var906-to-var1620 (var906) var1620)
(declare-fun var262_getSourceRegion/-1276584437 (var262 String Int) var1165)
(declare-fun arr-var3376-init () (Array Int var3376))
(declare-fun cast-from-String-to-var3376 (String) var3376)
(declare-fun var2572_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var2061_format/-38845327 (String (Array Int var3376)) String)
(declare-const null-var906 var906)
(declare-const null-var3819 var3819)
(declare-const null-String String)
(declare-const null-var1165 var1165)
(declare-const null-__Array__Int__var3376__ (Array Int var3376))
(declare-const var3344 var906) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var3344 null-var906)))
(declare-const var1864 var3819) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1864 null-var3819)))
(assert true)
(define-const var3114 String (getDescription/639719136 var1864)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var3075 String (getSourceName/21548920 var1864)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var3699 Int (getLineNumber/-74210753 var1864)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var969 var262 (getSource/1681365446 (cast-from-var906-to-var1620 var3344))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var2190 var1165 (var262_getSourceRegion/-1276584437 var969 var3075 var3699)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var2718 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var2190 null-var1165)) ; Cond: r5 == null 
(define-const var1400 (Array Int var3376) arr-var3376-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var1400!1 (Array Int var3376))
(assert (not (= var1400!1 null-__Array__Int__var3376__)))
(assert (= (select var1400!1 0) (cast-from-String-to-var3376 var3114))) ; Statement: $r6[0] = r1 
(define-const var470 Bool (var2572_isNullOrEmpty/1886904788 var3075)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (= (ite var470 1 0) 0)) ; Cond: $z0 == 0 
(define-const var482 String var3075) ; Statement: $r9 = r2 
(assert true) ; Non Conditional
(declare-const var1400!2 (Array Int var3376))
(assert (not (= var1400!2 null-__Array__Int__var3376__)))
(assert (= (select var1400!2 1) (cast-from-String-to-var3376 var482))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (>= var3699 0)) ; Cond: i0 >= 0 
(define-const var2383 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(declare-const var1400!3 (Array Int var3376))
(assert (not (= var1400!3 null-__Array__Int__var3376__)))
(assert (= (select var1400!3 2) (cast-from-String-to-var3376 var2383))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (= var2718 null-String)) ; Cond: r8 == null 
(define-const var3250 String ".") ; Statement: $r11 = "." 
(assert true) ; Non Conditional
(declare-const var1400!4 (Array Int var3376))
(assert (not (= var1400!4 null-__Array__Int__var3376__)))
(assert (= (select var1400!4 3) (cast-from-String-to-var3376 var3250))) ; Statement: $r6[3] = $r11 
(define-const var2688 String (var2061_format/-38845327 "%s at %s line %s %s" var1400!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var906-to-var1620=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var262_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var3376-init=([], java.lang.Object[]), cast-from-String-to-var3376=([java.lang.String], java.lang.Object), var2572_isNullOrEmpty/1886904788=([java.lang.String], boolean), var2061_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var906=com.google.javascript.jscomp.VerboseMessageFormatter, var3344=r3, var3819=com.google.javascript.jscomp.JSError, var1864=r0, var3114=r1, var3075=r2, var3699=i0, var262=com.google.javascript.jscomp.SourceExcerptProvider, var1620=com.google.javascript.jscomp.AbstractMessageFormatter, var969=$r4, var1165=com.google.javascript.jscomp.Region, var2190=r5, var594=null_type, var2718=r8, var3376=java.lang.Object, var1400=$r6, var2572=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var470=$z0, var482=$r9, var2383=$r10, var3250=$r11, var2061=com.google.javascript.jscomp.base.format.SimpleFormat, var2688=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var906, r3=var3344, com.google.javascript.jscomp.JSError=var3819, r0=var1864, r1=var3114, r2=var3075, i0=var3699, com.google.javascript.jscomp.SourceExcerptProvider=var262, com.google.javascript.jscomp.AbstractMessageFormatter=var1620, $r4=var969, com.google.javascript.jscomp.Region=var1165, r5=var2190, null_type=var594, r8=var2718, java.lang.Object=var3376, $r6=var1400, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2572, $z0=var470, $r9=var482, $r10=var2383, $r11=var3250, com.google.javascript.jscomp.base.format.SimpleFormat=var2061, $r7=var2688}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = r2;	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = ".";	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8