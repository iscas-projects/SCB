(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3047 0)
(declare-sort var1028 0)
(declare-sort var706 0)
(declare-sort var2568 0)
(declare-sort var1912 0)
(declare-sort var354 0)
(declare-sort var1774 0)
(declare-sort var3513 0)
(declare-sort var3049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var1028) String)
(declare-fun getSourceName/21548920 (var1028) String)
(declare-fun getLineNumber/-74210753 (var1028) Int)
(declare-fun getSource/1681365446 (var2568) var706)
(declare-fun cast-from-var3047-to-var2568 (var3047) var2568)
(declare-fun var706_getSourceRegion/-1276584437 (var706 String Int) var1912)
(declare-fun arr-var1774-init () (Array Int var1774))
(declare-fun cast-from-String-to-var1774 (String) var1774)
(declare-fun var3513_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var3049_format/-38845327 (String (Array Int var1774)) String)
(declare-const null-var3047 var3047)
(declare-const null-var1028 var1028)
(declare-const null-String String)
(declare-const null-var1912 var1912)
(declare-const null-__Array__Int__var1774__ (Array Int var1774))
(declare-const var1486 var3047) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var1486 null-var3047)))
(declare-const var3666 var1028) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3666 null-var1028)))
(assert true)
(define-const var2221 String (getDescription/639719136 var3666)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var1023 String (getSourceName/21548920 var3666)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var2385 Int (getLineNumber/-74210753 var3666)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var1200 var706 (getSource/1681365446 (cast-from-var3047-to-var2568 var1486))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var2321 var1912 (var706_getSourceRegion/-1276584437 var1200 var1023 var2385)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var3079 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var2321 null-var1912)) ; Cond: r5 == null 
(define-const var1884 (Array Int var1774) arr-var1774-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var1884!1 (Array Int var1774))
(assert (not (= var1884!1 null-__Array__Int__var1774__)))
(assert (= (select var1884!1 0) (cast-from-String-to-var1774 var2221))) ; Statement: $r6[0] = r1 
(define-const var254 Bool (var3513_isNullOrEmpty/1886904788 var1023)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (not (= (ite var254 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3921 String "(unknown source)") ; Statement: $r9 = "(unknown source)" 
 ; Statement: goto [?= $r6[1] = $r9] 
(assert true) ; Non Conditional
(declare-const var1884!2 (Array Int var1774))
(assert (not (= var1884!2 null-__Array__Int__var1774__)))
(assert (= (select var1884!2 1) (cast-from-String-to-var1774 var3921))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (not (>= var2385 0))) ; Negate: Cond: i0 >= 0  
(define-const var2858 String (String_valueOf/1240665136 var2385)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
 ; Statement: goto [?= $r6[2] = $r10] 
(assert true) ; Non Conditional
(declare-const var1884!3 (Array Int var1774))
(assert (not (= var1884!3 null-__Array__Int__var1774__)))
(assert (= (select var1884!3 2) (cast-from-String-to-var1774 var2858))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (= var3079 null-String)) ; Cond: r8 == null 
(define-const var3816 String ".") ; Statement: $r11 = "." 
(assert true) ; Non Conditional
(declare-const var1884!4 (Array Int var1774))
(assert (not (= var1884!4 null-__Array__Int__var1774__)))
(assert (= (select var1884!4 3) (cast-from-String-to-var1774 var3816))) ; Statement: $r6[3] = $r11 
(define-const var1137 String (var3049_format/-38845327 "%s at %s line %s %s" var1884!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var3047-to-var2568=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var706_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var1774-init=([], java.lang.Object[]), cast-from-String-to-var1774=([java.lang.String], java.lang.Object), var3513_isNullOrEmpty/1886904788=([java.lang.String], boolean), String_valueOf/1240665136=([int], java.lang.String), var3049_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3047=com.google.javascript.jscomp.VerboseMessageFormatter, var1486=r3, var1028=com.google.javascript.jscomp.JSError, var3666=r0, var2221=r1, var1023=r2, var2385=i0, var706=com.google.javascript.jscomp.SourceExcerptProvider, var2568=com.google.javascript.jscomp.AbstractMessageFormatter, var1200=$r4, var1912=com.google.javascript.jscomp.Region, var2321=r5, var354=null_type, var3079=r8, var1774=java.lang.Object, var1884=$r6, var3513=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var254=$z0, var3921=$r9, var2858=$r10, var3816=$r11, var3049=com.google.javascript.jscomp.base.format.SimpleFormat, var1137=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var3047, r3=var1486, com.google.javascript.jscomp.JSError=var1028, r0=var3666, r1=var2221, r2=var1023, i0=var2385, com.google.javascript.jscomp.SourceExcerptProvider=var706, com.google.javascript.jscomp.AbstractMessageFormatter=var2568, $r4=var1200, com.google.javascript.jscomp.Region=var1912, r5=var2321, null_type=var354, r8=var3079, java.lang.Object=var1774, $r6=var1884, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var3513, $z0=var254, $r9=var3921, $r10=var2858, $r11=var3816, com.google.javascript.jscomp.base.format.SimpleFormat=var3049, $r7=var1137}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = "(unknown source)";	goto [?= $r6[1] = $r9];	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	goto [?= $r6[2] = $r10];	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = ".";	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8