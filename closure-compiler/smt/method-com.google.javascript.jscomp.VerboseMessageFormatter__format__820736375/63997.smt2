(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1738 0)
(declare-sort var2684 0)
(declare-sort var3440 0)
(declare-sort var1779 0)
(declare-sort var2279 0)
(declare-sort var569 0)
(declare-sort var2110 0)
(declare-sort var723 0)
(declare-sort var2088 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/639719136 (var2684) String)
(declare-fun getSourceName/21548920 (var2684) String)
(declare-fun getLineNumber/-74210753 (var2684) Int)
(declare-fun getSource/1681365446 (var1779) var3440)
(declare-fun cast-from-var1738-to-var1779 (var1738) var1779)
(declare-fun var3440_getSourceRegion/-1276584437 (var3440 String Int) var2279)
(declare-fun arr-var2110-init () (Array Int var2110))
(declare-fun cast-from-String-to-var2110 (String) var2110)
(declare-fun var723_isNullOrEmpty/1886904788 (String) Bool)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var2088_format/-38845327 (String (Array Int var2110)) String)
(declare-const null-var1738 var1738)
(declare-const null-var2684 var2684)
(declare-const null-String String)
(declare-const null-var2279 var2279)
(declare-const null-__Array__Int__var2110__ (Array Int var2110))
(declare-const var1762 var1738) ; Statement: r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter 
(assert (not (= var1762 null-var1738)))
(declare-const var3060 var2684) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3060 null-var2684)))
(assert true)
(define-const var1071 String (getDescription/639719136 var3060)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
(define-const var2154 String (getSourceName/21548920 var3060)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var3110 Int (getLineNumber/-74210753 var3060)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var2500 var3440 (getSource/1681365446 (cast-from-var1738-to-var1779 var1762))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(define-const var2415 var2279 (var3440_getSourceRegion/-1276584437 var2500 var2154 var3110)) ; Statement: r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0) 
(define-const var129 String null-String) ; Statement: r8 = null 
 ; Statement: if r5 == null goto $r6 = newarray (java.lang.Object)[4] 
(assert (= var2415 null-var2279)) ; Cond: r5 == null 
(define-const var431 (Array Int var2110) arr-var2110-init) ; Statement: $r6 = newarray (java.lang.Object)[4] 
(declare-const var431!1 (Array Int var2110))
(assert (not (= var431!1 null-__Array__Int__var2110__)))
(assert (= (select var431!1 0) (cast-from-String-to-var2110 var1071))) ; Statement: $r6[0] = r1 
(define-const var2058 Bool (var723_isNullOrEmpty/1886904788 var2154)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (= (ite var2058 1 0) 0)) ; Cond: $z0 == 0 
(define-const var272 String var2154) ; Statement: $r9 = r2 
(assert true) ; Non Conditional
(declare-const var431!2 (Array Int var2110))
(assert (not (= var431!2 null-__Array__Int__var2110__)))
(assert (= (select var431!2 1) (cast-from-String-to-var2110 var272))) ; Statement: $r6[1] = $r9 
 ; Statement: if i0 >= 0 goto $r10 = "(unknown line)" 
(assert (not (>= var3110 0))) ; Negate: Cond: i0 >= 0  
(define-const var1538 String (String_valueOf/1240665136 var3110)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
 ; Statement: goto [?= $r6[2] = $r10] 
(assert true) ; Non Conditional
(declare-const var431!3 (Array Int var2110))
(assert (not (= var431!3 null-__Array__Int__var2110__)))
(assert (= (select var431!3 2) (cast-from-String-to-var2110 var1538))) ; Statement: $r6[2] = $r10 
 ; Statement: if r8 == null goto $r11 = "." 
(assert (= var129 null-String)) ; Cond: r8 == null 
(define-const var1160 String ".") ; Statement: $r11 = "." 
(assert true) ; Non Conditional
(declare-const var431!4 (Array Int var2110))
(assert (not (= var431!4 null-__Array__Int__var2110__)))
(assert (= (select var431!4 3) (cast-from-String-to-var2110 var1160))) ; Statement: $r6[3] = $r11 
(define-const var1176 String (var2088_format/-38845327 "%s at %s line %s %s" var431!4)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var1738-to-var1779=([com.google.javascript.jscomp.VerboseMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), var3440_getSourceRegion/-1276584437=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int], com.google.javascript.jscomp.Region), arr-var2110-init=([], java.lang.Object[]), cast-from-String-to-var2110=([java.lang.String], java.lang.Object), var723_isNullOrEmpty/1886904788=([java.lang.String], boolean), String_valueOf/1240665136=([int], java.lang.String), var2088_format/-38845327=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1738=com.google.javascript.jscomp.VerboseMessageFormatter, var1762=r3, var2684=com.google.javascript.jscomp.JSError, var3060=r0, var1071=r1, var2154=r2, var3110=i0, var3440=com.google.javascript.jscomp.SourceExcerptProvider, var1779=com.google.javascript.jscomp.AbstractMessageFormatter, var2500=$r4, var2279=com.google.javascript.jscomp.Region, var2415=r5, var569=null_type, var129=r8, var2110=java.lang.Object, var431=$r6, var723=com.google.javascript.jscomp.jarjar.com.google.common.base.Strings, var2058=$z0, var272=$r9, var1538=$r10, var1160=$r11, var2088=com.google.javascript.jscomp.base.format.SimpleFormat, var1176=$r7}
; {com.google.javascript.jscomp.VerboseMessageFormatter=var1738, r3=var1762, com.google.javascript.jscomp.JSError=var2684, r0=var3060, r1=var1071, r2=var2154, i0=var3110, com.google.javascript.jscomp.SourceExcerptProvider=var3440, com.google.javascript.jscomp.AbstractMessageFormatter=var1779, $r4=var2500, com.google.javascript.jscomp.Region=var2279, r5=var2415, null_type=var569, r8=var129, java.lang.Object=var2110, $r6=var431, com.google.javascript.jscomp.jarjar.com.google.common.base.Strings=var723, $z0=var2058, $r9=var272, $r10=var1538, $r11=var1160, com.google.javascript.jscomp.base.format.SimpleFormat=var2088, $r7=var1176}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.VerboseMessageFormatter;	r0 := @parameter0: com.google.javascript.jscomp.JSError;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i0 = virtualinvoke r0.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.VerboseMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r5 = interfaceinvoke $r4.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.javascript.jscomp.Region getSourceRegion(java.lang.String,int)>(r2, i0);	r8 = null;	if r5 == null goto $r6 = newarray (java.lang.Object)[4];	$r6 = newarray (java.lang.Object)[4];	$r6[0] = r1;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Strings: boolean isNullOrEmpty(java.lang.String)>(r2);	if $z0 == 0 goto $r9 = r2;	$r9 = r2;	$r6[1] = $r9;	if i0 >= 0 goto $r10 = "(unknown line)";	$r10 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	goto [?= $r6[2] = $r10];	$r6[2] = $r10;	if r8 == null goto $r11 = ".";	$r11 = ".";	$r6[3] = $r11;	$r7 = staticinvoke <com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.String format(java.lang.String,java.lang.Object[])>("%s at %s line %s %s", $r6);	return $r7
;block_num 8