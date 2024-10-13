(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var460 0)
(declare-sort var2314 0)
(declare-sort var3482 0)
(declare-sort var3169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2314_getProperty/258823597 (String) String)
(declare-fun toLowerCase/1946809429 (String var3482) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3482-ENGLISH var3482)
(declare-const var3169-separatorChar Int)
(declare-const var3183 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3183 null-String)))
(declare-const var1126 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1126 null-Bool)))
(define-const var2302 String (var2314_getProperty/258823597 "os.name")) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name") 
(define-const var602 var3482 var3482-ENGLISH) ; Statement: $r0 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3479 String (toLowerCase/1946809429 var2302 var602)) ; Statement: r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
 ; Statement: if r2 == null goto $c5 = <java.io.File: char separatorChar> 
(assert (= var3479 null-String)) ; Cond: r2 == null 
(define-const var3554 Int var3169-separatorChar) ; Statement: $c5 = <java.io.File: char separatorChar> 
(assert true)
(define-const var1486 String (replace/1524665721 var3183 var3554 47)) ; Statement: r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>($c5, 47) 
(assert true) ; Non Conditional
 ; Statement: if z0 != 0 goto return r4 
(assert (not (= (ite var1126 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2314_getProperty/258823597=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3183=r3, var460=null_type, var1126=z0, var2314=java.lang.System, var2302=$r1, var3482=java.util.Locale, var602=$r0, var3479=r2, var3169=java.io.File, var3554=$c5, var1486=r4}
; {r3=var3183, null_type=var460, z0=var1126, java.lang.System=var2314, $r1=var2302, java.util.Locale=var3482, $r0=var602, r2=var3479, java.io.File=var3169, $c5=var3554, r4=var1486}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r3 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("os.name");	$r0 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	if r2 == null goto $c5 = <java.io.File: char separatorChar>;	$c5 = <java.io.File: char separatorChar>;	r4 = virtualinvoke r3.<java.lang.String: java.lang.String replace(char,char)>($c5, 47);	if z0 != 0 goto return r4;	return r4
;block_num 4