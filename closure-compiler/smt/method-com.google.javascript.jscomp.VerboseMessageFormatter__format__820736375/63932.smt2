(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3134 0)
(declare-sort var1814 0)
(declare-sort var590 0)
(declare-sort var3568 0)
(declare-sort var3408 0)
(declare-sort var3176 0)
(declare-sort var1196 0)
(declare-sort var3053 0)
(declare-sort var1991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var1814) String)
(declare-fun getSourceName/21548920 (var1814) String)
(declare-fun getLineNumber/-74210753 (var1814) Int)
(declare-fun getSource/1681365446 (var3568) var590)
(declare-fun cast-from-var3134-to-var3568 (var3134) var3568)
(declare-fun var590_getSourceRegion/-1276584437 (var590 String Int) var3408)
(declare-fun arr-var1196-init () (Array Int var1196))
(declare-fun cast-from-String-to-var1196 (String) var1196)
(declare-fun var3053_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var1991_format/-38845327 (String (Array Int var1196)) String)
(declare-const null-var3134 var3134)
(declare-const null-var1814 var1814)
(declare-const null-String String)
(declare-const null-var3408 var3408)
(declare-const null-__Array__Int__var1196__ (Array Int var1196))
(declare-const var45 var3134) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var45 null-var3134)))
(declare-const var185 var1814) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var185 null-var1814)))
(assert true)
(define-const var3197 String (getDescription/639719136 var185)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var2508 String (getSourceName/21548920 var185)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var3581 Int (getLineNumber/-74210753 var185)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var2091 var590 (getSource/1681365446 (cast-from-var3134-to-var3568 var45))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var531 var3408 (var590_getSourceRegion/-1276584437 var2091 var2508 var3581)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var1015 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var531 null-var3408)) ; Cond: r5 == null 
(define-const var3211 (Array Int var1196) arr-var1196-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var3211!1 (Array Int var1196))
(assert (not (= var3211!1 null-__Array__Int__var1196__)))
(assert (= (select var3211!1 0) (cast-from-String-to-var1196 var3197))) ; Statement: $r6[0] = r1 
(define-const var3716 Bool (var3053_isNullOrEmpty/1886904788 var2508)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (not (= (ite var3716 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2079 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
 ; Statement: goto [?= $r6[1] = $r9] 
(assert true) ; Non Conditional
(declare-const var3211!2 (Array Int var1196))
(assert (not (= var3211!2 null-__Array__Int__var1196__)))
(assert (= (select var3211!2 1) (cast-from-String-to-var1196 var2079))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (not (>= var3581 0))) ; Negate: Cond: i0 >= 0  
(define-const var1916 String (String_valueOf/1240665136 var3581)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
 ; Statement: goto [?= $r6[2] = $r10] 
(assert true) ; Non Conditional
(declare-const var3211!3 (Array Int var1196))
(assert (not (= var3211!3 null-__Array__Int__var1196__)))
(assert (= (select var3211!3 2) (cast-from-String-to-var1196 var1916))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (not (= var1015 null-String))) ; Negate: Cond: r8 == null  
(define-const var2990 String (str.++ ":\n\n\u0001" var1015)) ; Statement: $r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001") 
 ; Statement: goto [?= $r6[3] = $r11] 
(assert true) ; Non Conditional
(declare-const var3211!4 (Array Int var1196))
(assert (not (= var3211!4 null-__Array__Int__var1196__)))
(assert (= (select var3211!4 3) (cast-from-String-to-var1196 var2990))) ; Statement: $r6[3] = $r11 
(define-const var1023 String (var1991_format/-38845327 "%s at %s line %s %s" var3211!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var3134-to-var3568=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var590_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var1196-init=([], java.lang.Object[]), cast-from-String-to-var1196=([java.lang.String], java.lang.Object), var3053_isNullOrEmpty/1886904788=([java.lang.String], boolean), String_valueOf/1240665136=([int], java.lang.String), var1991_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3134=com.google.javascript.jscomp.VerboseMessageFormatter, var45=r3, var1814=com.google.javascript.jscomp.JSError, var185=r0, var3197=r1, var2508=r2, var3581=i0, var590=com.google.javascript.jscomp.SourceExcerptProvider, var3568=com.google.javascript.jscomp.AbstractMessageFormatter, var2091=$r4, var3408=com.google.javascript.jscomp.Region, var531=r5, var3176=null_type, var1015=r8, var1196=java.lang.Object, var3211=$r6, var3053=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var3716=$z0, var2079=$r9, var1916=$r10, var2990=$r11, var1991=com.google.javascript.jscomp.base.format.SimpleFormat, var1023=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var3134, r3=var45, com.google.javascript.jscomp.JSError=var1814, r0=var185, r1=var3197, r2=var2508, i0=var3581, com.google.javascript.jscomp.SourceExcerptProvider=var590, com.google.javascript.jscomp.AbstractMessageFormatter=var3568, $r4=var2091, com.google.javascript.jscomp.Region=var3408, r5=var531, null_type=var3176, r8=var1015, java.lang.Object=var1196, $r6=var3211, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var3053, $z0=var3716, $r9=var2079, $r10=var1916, $r11=var2990, com.google.javascript.jscomp.base.format.SimpleFormat=var1991, $r7=var1023}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = "(unknown source)";	goto [?= $r6[1] = $r9];	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	goto [?= $r6[2] = $r10];	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001");	goto [?= $r6[3] = $r11];	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8