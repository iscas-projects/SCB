(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1980 0)
(declare-sort var461 0)
(declare-sort var2187 0)
(declare-sort var3619 0)
(declare-sort var2459 0)
(declare-sort var1753 0)
(declare-sort var1617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun cast-from-var1753-to-var2459 (var1753) var2459)
(declare-fun get/-2047580938 (var2459 String Int var2187 var3619 Bool var1980) var1617)
(declare-const null-var1980 var1980)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2187 var2187)
(declare-const null-var3619 var3619)
(declare-const null-Bool Bool)
(declare-const var1753-INSTANCE var1753)
(declare-const var10 var1980) ; Statement: r3 := @this: freemarker.core.Environment 
(assert (not (= var10 null-var1980)))
(declare-const var106 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var106 null-String)))
(declare-const var1151 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1151 null-Int)))
(declare-const var1963 var2187) ; Statement: r1 := @parameter2: java.util.Locale 
(assert (not (= var1963 null-var2187)))
(declare-const var480 var3619) ; Statement: r2 := @parameter3: java.util.TimeZone 
(assert (not (= var480 null-var3619)))
(declare-const var1718 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1718 null-Bool)))
(assert true)
(define-const var3633 Int (length/-134980193 var106)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 0 goto $i9 = 0 
(assert (not (= var3633 0))) ; Negate: Cond: i0 == 0  
(assert (and true (and (> (str.len var106) 0) (<= 0 0))))
(define-const var1135 Int (charAt/698050440 var106 0)) ; Statement: $i9 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
 ; Statement: goto [?= i1 = $i9] 
(assert true) ; Non Conditional
(define-const var1974 Int var1135) ; Statement: i1 = $i9 
 ; Statement: if $i9 != 120 goto (branch) 
(assert (not (= var1135 120))) ; Cond: $i9 != 120 
 ; Statement: if i1 != 105 goto (branch) 
(assert (not (= var1974 105))) ; Cond: i1 != 105 
 ; Statement: if i1 != 64 goto r12 = r0 
(assert (not (= var1974 64))) ; Cond: i1 != 64 
(define-const var174 String var106) ; Statement: r12 = r0 
(define-const var2163 var2459 (cast-from-var1753-to-var2459 var1753-INSTANCE)) ; Statement: r11 = <freemarker.core.JavaTemplateDateFormatFactory: freemarker.core.JavaTemplateDateFormatFactory INSTANCE> 
(assert true) ; Non Conditional
(assert true)
(define-const var2334 var1617 (get/-2047580938 var2163 var174 var1151 var1963 var480 var1718 var10)) ; Statement: $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-var1753-to-var2459=([freemarker.core.JavaTemplateDateFormatFactory], freemarker.core.TemplateDateFormatFactory), get/-2047580938=([freemarker.core.TemplateDateFormatFactory, java.lang.String, int, java.util.Locale, java.util.TimeZone, boolean, freemarker.core.Environment], freemarker.core.TemplateDateFormat)}
; {var1980=freemarker.core.Environment, var10=r3, var106=r0, var461=null_type, var1151=i2, var2187=java.util.Locale, var1963=r1, var3619=java.util.TimeZone, var480=r2, var1718=z0, var3633=i0, var1135=$i9, var1974=i1, var174=r12, var2459=freemarker.core.TemplateDateFormatFactory, var1753=freemarker.core.JavaTemplateDateFormatFactory, var2163=r11, var1617=freemarker.core.TemplateDateFormat, var2334=$r15}
; {freemarker.core.Environment=var1980, r3=var10, r0=var106, null_type=var461, i2=var1151, java.util.Locale=var2187, r1=var1963, java.util.TimeZone=var3619, r2=var480, z0=var1718, i0=var3633, $i9=var1135, i1=var1974, r12=var174, freemarker.core.TemplateDateFormatFactory=var2459, freemarker.core.JavaTemplateDateFormatFactory=var1753, r11=var2163, freemarker.core.TemplateDateFormat=var1617, $r15=var2334}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: freemarker.core.Environment;	r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	r1 := @parameter2: java.util.Locale;	r2 := @parameter3: java.util.TimeZone;	z0 := @parameter4: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 0 goto $i9 = 0;	$i9 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	goto [?= i1 = $i9];	i1 = $i9;	if $i9 != 120 goto (branch);	if i1 != 105 goto (branch);	if i1 != 64 goto r12 = r0;	r12 = r0;	r11 = <freemarker.core.JavaTemplateDateFormatFactory: freemarker.core.JavaTemplateDateFormatFactory INSTANCE>;	$r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3);	return $r15
;block_num 7