(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3989 0)
(declare-sort var1179 0)
(declare-sort var415 0)
(declare-sort var2737 0)
(declare-sort var3276 0)
(declare-sort var2767 0)
(declare-sort var2861 0)
(declare-sort var2483 0)
(declare-sort var986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var1179) String)
(declare-fun getSourceName/21548920 (var1179) String)
(declare-fun getLineNumber/-74210753 (var1179) Int)
(declare-fun getSource/1681365446 (var2737) var415)
(declare-fun cast-from-var3989-to-var2737 (var3989) var2737)
(declare-fun var415_getSourceRegion/-1276584437 (var415 String Int) var3276)
(declare-fun arr-var2861-init () (Array Int var2861))
(declare-fun cast-from-String-to-var2861 (String) var2861)
(declare-fun var2483_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var986_format/-38845327 (String (Array Int var2861)) String)
(declare-const null-var3989 var3989)
(declare-const null-var1179 var1179)
(declare-const null-String String)
(declare-const null-var3276 var3276)
(declare-const null-__Array__Int__var2861__ (Array Int var2861))
(declare-const var2630 var3989) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var2630 null-var3989)))
(declare-const var1456 var1179) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1456 null-var1179)))
(assert true)
(define-const var1228 String (getDescription/639719136 var1456)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var1355 String (getSourceName/21548920 var1456)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var3635 Int (getLineNumber/-74210753 var1456)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var2590 var415 (getSource/1681365446 (cast-from-var3989-to-var2737 var2630))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var1368 var3276 (var415_getSourceRegion/-1276584437 var2590 var1355 var3635)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var457 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var1368 null-var3276)) ; Cond: r5 == null 
(define-const var380 (Array Int var2861) arr-var2861-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var380!1 (Array Int var2861))
(assert (not (= var380!1 null-__Array__Int__var2861__)))
(assert (= (select var380!1 0) (cast-from-String-to-var2861 var1228))) ; Statement: $r6[0] = r1 
(define-const var1410 Bool (var2483_isNullOrEmpty/1886904788 var1355)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (= (ite var1410 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1031 String var1355) ; Statement: $r9 = r2 
(assert true) ; Non Conditional
(declare-const var380!2 (Array Int var2861))
(assert (not (= var380!2 null-__Array__Int__var2861__)))
(assert (= (select var380!2 1) (cast-from-String-to-var2861 var1031))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (not (>= var3635 0))) ; Negate: Cond: i0 >= 0  
(define-const var243 String (String_valueOf/1240665136 var3635)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
 ; Statement: goto [?= $r6[2] = $r10] 
(assert true) ; Non Conditional
(declare-const var380!3 (Array Int var2861))
(assert (not (= var380!3 null-__Array__Int__var2861__)))
(assert (= (select var380!3 2) (cast-from-String-to-var2861 var243))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (not (= var457 null-String))) ; Negate: Cond: r8 == null  
(define-const var2336 String (str.++ ":\n\n\u0001" var457)) ; Statement: $r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001") 
 ; Statement: goto [?= $r6[3] = $r11] 
(assert true) ; Non Conditional
(declare-const var380!4 (Array Int var2861))
(assert (not (= var380!4 null-__Array__Int__var2861__)))
(assert (= (select var380!4 3) (cast-from-String-to-var2861 var2336))) ; Statement: $r6[3] = $r11 
(define-const var1636 String (var986_format/-38845327 "%s at %s line %s %s" var380!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var3989-to-var2737=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var415_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var2861-init=([], java.lang.Object[]), cast-from-String-to-var2861=([java.lang.String], java.lang.Object), var2483_isNullOrEmpty/1886904788=([java.lang.String], boolean), String_valueOf/1240665136=([int], java.lang.String), var986_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3989=com.google.javascript.jscomp.VerboseMessageFormatter, var2630=r3, var1179=com.google.javascript.jscomp.JSError, var1456=r0, var1228=r1, var1355=r2, var3635=i0, var415=com.google.javascript.jscomp.SourceExcerptProvider, var2737=com.google.javascript.jscomp.AbstractMessageFormatter, var2590=$r4, var3276=com.google.javascript.jscomp.Region, var1368=r5, var2767=null_type, var457=r8, var2861=java.lang.Object, var380=$r6, var2483=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var1410=$z0, var1031=$r9, var243=$r10, var2336=$r11, var986=com.google.javascript.jscomp.base.format.SimpleFormat, var1636=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var3989, r3=var2630, com.google.javascript.jscomp.JSError=var1179, r0=var1456, r1=var1228, r2=var1355, i0=var3635, com.google.javascript.jscomp.SourceExcerptProvider=var415, com.google.javascript.jscomp.AbstractMessageFormatter=var2737, $r4=var2590, com.google.javascript.jscomp.Region=var3276, r5=var1368, null_type=var2767, r8=var457, java.lang.Object=var2861, $r6=var380, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var2483, $z0=var1410, $r9=var1031, $r10=var243, $r11=var2336, com.google.javascript.jscomp.base.format.SimpleFormat=var986, $r7=var1636}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = r2;	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	goto [?= $r6[2] = $r10];	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001");	goto [?= $r6[3] = $r11];	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8