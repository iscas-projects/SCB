(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3576 0)
(declare-sort var3872 0)
(declare-sort var2231 0)
(declare-sort var2626 0)
(declare-sort var217 0)
(declare-sort var1690 0)
(declare-sort var406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun cast-from-var1690-to-var217 (var1690) var217)
(declare-fun get/-2047580938 (var217 String Int var2231 var2626 Bool var3576) var406)
(declare-const null-var3576 var3576)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2231 var2231)
(declare-const null-var2626 var2626)
(declare-const null-Bool Bool)
(declare-const var1690-INSTANCE var1690)
(declare-const var1066 var3576) ; Statement: r3 := @this: freemarker.core.Environment 
(assert (not (= var1066 null-var3576)))
(declare-const var1263 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1263 null-String)))
(declare-const var3077 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3077 null-Int)))
(declare-const var2171 var2231) ; Statement: r1 := @parameter2: java.util.Locale 
(assert (not (= var2171 null-var2231)))
(declare-const var2911 var2626) ; Statement: r2 := @parameter3: java.util.TimeZone 
(assert (not (= var2911 null-var2626)))
(declare-const var903 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var903 null-Bool)))
(assert true)
(define-const var238 Int (length/-134980193 var1263)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 0 goto $i9 = 0 
(assert (= var238 0)) ; Cond: i0 == 0 
(define-const var849 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var2536 Int var849) ; Statement: i1 = $i9 
 ; Statement: if $i9 != 120 goto (branch) 
(assert (not (= var849 120))) ; Cond: $i9 != 120 
 ; Statement: if i1 != 105 goto (branch) 
(assert (not (= var2536 105))) ; Cond: i1 != 105 
 ; Statement: if i1 != 64 goto r12 = r0 
(assert (not (= var2536 64))) ; Cond: i1 != 64 
(define-const var3699 String var1263) ; Statement: r12 = r0 
(define-const var981 var217 (cast-from-var1690-to-var217 var1690-INSTANCE)) ; Statement: r11 = <freemarker.core.JavaTemplateDateFormatFactory: freemarker.core.JavaTemplateDateFormatFactory INSTANCE> 
(assert true) ; Non Conditional
(assert true)
(define-const var2707 var406 (get/-2047580938 var981 var3699 var3077 var2171 var2911 var903 var1066)) ; Statement: $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-var1690-to-var217=([freemarker.core.JavaTemplateDateFormatFactory], freemarker.core.TemplateDateFormatFactory), get/-2047580938=([freemarker.core.TemplateDateFormatFactory, java.lang.String, int, java.util.Locale, java.util.TimeZone, boolean, freemarker.core.Environment], freemarker.core.TemplateDateFormat)}
; {var3576=freemarker.core.Environment, var1066=r3, var1263=r0, var3872=null_type, var3077=i2, var2231=java.util.Locale, var2171=r1, var2626=java.util.TimeZone, var2911=r2, var903=z0, var238=i0, var849=$i9, var2536=i1, var3699=r12, var217=freemarker.core.TemplateDateFormatFactory, var1690=freemarker.core.JavaTemplateDateFormatFactory, var981=r11, var406=freemarker.core.TemplateDateFormat, var2707=$r15}
; {freemarker.core.Environment=var3576, r3=var1066, r0=var1263, null_type=var3872, i2=var3077, java.util.Locale=var2231, r1=var2171, java.util.TimeZone=var2626, r2=var2911, z0=var903, i0=var238, $i9=var849, i1=var2536, r12=var3699, freemarker.core.TemplateDateFormatFactory=var217, freemarker.core.JavaTemplateDateFormatFactory=var1690, r11=var981, freemarker.core.TemplateDateFormat=var406, $r15=var2707}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: freemarker.core.Environment;	r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	r1 := @parameter2: java.util.Locale;	r2 := @parameter3: java.util.TimeZone;	z0 := @parameter4: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 0 goto $i9 = 0;	$i9 = 0;	i1 = $i9;	if $i9 != 120 goto (branch);	if i1 != 105 goto (branch);	if i1 != 64 goto r12 = r0;	r12 = r0;	r11 = <freemarker.core.JavaTemplateDateFormatFactory: freemarker.core.JavaTemplateDateFormatFactory INSTANCE>;	$r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3);	return $r15
;block_num 7