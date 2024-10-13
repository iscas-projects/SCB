(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var64 0)
(declare-sort var168 0)
(declare-sort var3828 0)
(declare-sort var3354 0)
(declare-sort var3213 0)
(declare-sort var171 0)
(declare-sort var2620 0)
(declare-sort var1323 0)
(declare-sort var2386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var168) String)
(declare-fun getSourceName/21548920 (var168) String)
(declare-fun getLineNumber/-74210753 (var168) Int)
(declare-fun getSource/1681365446 (var3354) var3828)
(declare-fun cast-from-var64-to-var3354 (var64) var3354)
(declare-fun var3828_getSourceRegion/-1276584437 (var3828 String Int) var3213)
(declare-fun arr-var2620-init () (Array Int var2620))
(declare-fun cast-from-String-to-var2620 (String) var2620)
(declare-fun var1323_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun var2386_format/-38845327 (String (Array Int var2620)) String)
(declare-const null-var64 var64)
(declare-const null-var168 var168)
(declare-const null-String String)
(declare-const null-var3213 var3213)
(declare-const null-__Array__Int__var2620__ (Array Int var2620))
(declare-const var3221 var64) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var3221 null-var64)))
(declare-const var1360 var168) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1360 null-var168)))
(assert true)
(define-const var978 String (getDescription/639719136 var1360)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var2654 String (getSourceName/21548920 var1360)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var844 Int (getLineNumber/-74210753 var1360)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var1848 var3828 (getSource/1681365446 (cast-from-var64-to-var3354 var3221))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var3421 var3213 (var3828_getSourceRegion/-1276584437 var1848 var2654 var844)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var2424 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var3421 null-var3213)) ; Cond: r5 == null 
(define-const var3858 (Array Int var2620) arr-var2620-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var3858!1 (Array Int var2620))
(assert (not (= var3858!1 null-__Array__Int__var2620__)))
(assert (= (select var3858!1 0) (cast-from-String-to-var2620 var978))) ; Statement: $r6[0] = r1 
(define-const var245 Bool (var1323_isNullOrEmpty/1886904788 var2654)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (not (= (ite var245 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3233 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
 ; Statement: goto [?= $r6[1] = $r9] 
(assert true) ; Non Conditional
(declare-const var3858!2 (Array Int var2620))
(assert (not (= var3858!2 null-__Array__Int__var2620__)))
(assert (= (select var3858!2 1) (cast-from-String-to-var2620 var3233))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (>= var844 0)) ; Cond: i0 >= 0 
(define-const var1906 String "(unknown line)") ; Statement: $r10 = "(unknown line)" 
(assert true) ; Non Conditional
(declare-const var3858!3 (Array Int var2620))
(assert (not (= var3858!3 null-__Array__Int__var2620__)))
(assert (= (select var3858!3 2) (cast-from-String-to-var2620 var1906))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (not (= var2424 null-String))) ; Negate: Cond: r8 == null  
(define-const var93 String (str.++ ":\n\n\u0001" var2424)) ; Statement: $r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001") 
 ; Statement: goto [?= $r6[3] = $r11] 
(assert true) ; Non Conditional
(declare-const var3858!4 (Array Int var2620))
(assert (not (= var3858!4 null-__Array__Int__var2620__)))
(assert (= (select var3858!4 3) (cast-from-String-to-var2620 var93))) ; Statement: $r6[3] = $r11 
(define-const var95 String (var2386_format/-38845327 "%s at %s line %s %s" var3858!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var64-to-var3354=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var3828_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var2620-init=([], java.lang.Object[]), cast-from-String-to-var2620=([java.lang.String], java.lang.Object), var1323_isNullOrEmpty/1886904788=([java.lang.String], boolean), var2386_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var64=com.google.javascript.jscomp.VerboseMessageFormatter, var3221=r3, var168=com.google.javascript.jscomp.JSError, var1360=r0, var978=r1, var2654=r2, var844=i0, var3828=com.google.javascript.jscomp.SourceExcerptProvider, var3354=com.google.javascript.jscomp.AbstractMessageFormatter, var1848=$r4, var3213=com.google.javascript.jscomp.Region, var3421=r5, var171=null_type, var2424=r8, var2620=java.lang.Object, var3858=$r6, var1323=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var245=$z0, var3233=$r9, var1906=$r10, var93=$r11, var2386=com.google.javascript.jscomp.base.format.SimpleFormat, var95=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var64, r3=var3221, com.google.javascript.jscomp.JSError=var168, r0=var1360, r1=var978, r2=var2654, i0=var844, com.google.javascript.jscomp.SourceExcerptProvider=var3828, com.google.javascript.jscomp.AbstractMessageFormatter=var3354, $r4=var1848, com.google.javascript.jscomp.Region=var3213, r5=var3421, null_type=var171, r8=var2424, java.lang.Object=var2620, $r6=var3858, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var1323, $z0=var245, $r9=var3233, $r10=var1906, $r11=var93, com.google.javascript.jscomp.base.format.SimpleFormat=var2386, $r7=var95}
;seq 
;cnt {}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = "(unknown source)";	goto [?= $r6[1] = $r9];	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = "(unknown line)";	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r8) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(":\n\n\u0001");	goto [?= $r6[3] = $r11];	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8