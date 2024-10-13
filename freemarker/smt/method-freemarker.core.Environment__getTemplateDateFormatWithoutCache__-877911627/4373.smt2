(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3044 0)
(declare-sort var2644 0)
(declare-sort var2934 0)
(declare-sort var2033 0)
(declare-sort var3563 0)
(declare-sort var301 0)
(declare-sort var3501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun cast-from-var301-to-var3563 (var301) var3563)
(declare-fun get/-2047580938 (var3563 String Int var2934 var2033 Bool var3044) var3501)
(declare-const null-var3044 var3044)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2934 var2934)
(declare-const null-var2033 var2033)
(declare-const null-Bool Bool)
(declare-const var301-INSTANCE var301)
(declare-const var3969 var3044) ; Statement: r3 := @this: freemarker.core.Environment 
(assert (not (= var3969 null-var3044)))
(declare-const var3883 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3883 null-String)))
(declare-const var2667 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2667 null-Int)))
(declare-const var1155 var2934) ; Statement: r1 := @parameter2: java.util.Locale 
(assert (not (= var1155 null-var2934)))
(declare-const var3203 var2033) ; Statement: r2 := @parameter3: java.util.TimeZone 
(assert (not (= var3203 null-var2033)))
(declare-const var1073 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1073 null-Bool)))
(assert true)
(define-const var3805 Int (length/-134980193 var3883)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 0 goto $i9 = 0 
(assert (= var3805 0)) ; Cond: i0 == 0 
(define-const var2795 Int 0) ; Statement: $i9 = 0 
(assert true) ; Non Conditional
(define-const var3923 Int var2795) ; Statement: i1 = $i9 
 ; Statement: if $i9 != 120 goto (branch) 
(assert (not (not (= var2795 120)))) ; Negate: Cond: $i9 != 120  
 ; Statement: if i0 <= 1 goto (branch) 
(assert (not (<= var3805 1))) ; Negate: Cond: i0 <= 1  
(assert (and true (and (> (str.len var3883) 1) (<= 0 1))))
(define-const var469 Int (charAt/698050440 var3883 1)) ; Statement: $c8 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1) 
(define-const var2837 Int (cast-from-Int-to-Int var469)) ; Statement: $i11 = (int) $c8 
 ; Statement: if $i11 != 115 goto (branch) 
(assert (not (not (= var2837 115)))) ; Negate: Cond: $i11 != 115  
(define-const var3497 var3563 (cast-from-var301-to-var3563 var301-INSTANCE)) ; Statement: r11 = <freemarker.core.XSTemplateDateFormatFactory: freemarker.core.XSTemplateDateFormatFactory INSTANCE> 
(define-const var2870 String var3883) ; Statement: r12 = r0 
 ; Statement: goto [?= $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1007 var3501 (get/-2047580938 var3497 var2870 var2667 var1155 var3203 var1073 var3969)) ; Statement: $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), cast-from-var301-to-var3563=([freemarker.core.XSTemplateDateFormatFactory], freemarker.core.TemplateDateFormatFactory), get/-2047580938=([freemarker.core.TemplateDateFormatFactory, java.lang.String, int, java.util.Locale, java.util.TimeZone, boolean, freemarker.core.Environment], freemarker.core.TemplateDateFormat)}
; {var3044=freemarker.core.Environment, var3969=r3, var3883=r0, var2644=null_type, var2667=i2, var2934=java.util.Locale, var1155=r1, var2033=java.util.TimeZone, var3203=r2, var1073=z0, var3805=i0, var2795=$i9, var3923=i1, var469=$c8, var2837=$i11, var3563=freemarker.core.TemplateDateFormatFactory, var301=freemarker.core.XSTemplateDateFormatFactory, var3497=r11, var2870=r12, var3501=freemarker.core.TemplateDateFormat, var1007=$r15}
; {freemarker.core.Environment=var3044, r3=var3969, r0=var3883, null_type=var2644, i2=var2667, java.util.Locale=var2934, r1=var1155, java.util.TimeZone=var2033, r2=var3203, z0=var1073, i0=var3805, $i9=var2795, i1=var3923, $c8=var469, $i11=var2837, freemarker.core.TemplateDateFormatFactory=var3563, freemarker.core.XSTemplateDateFormatFactory=var301, r11=var3497, r12=var2870, freemarker.core.TemplateDateFormat=var3501, $r15=var1007}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: freemarker.core.Environment;	r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	r1 := @parameter2: java.util.Locale;	r2 := @parameter3: java.util.TimeZone;	z0 := @parameter4: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 0 goto $i9 = 0;	$i9 = 0;	i1 = $i9;	if $i9 != 120 goto (branch);	if i0 <= 1 goto (branch);	$c8 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);	$i11 = (int) $c8;	if $i11 != 115 goto (branch);	r11 = <freemarker.core.XSTemplateDateFormatFactory: freemarker.core.XSTemplateDateFormatFactory INSTANCE>;	r12 = r0;	goto [?= $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3)];	$r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3);	return $r15
;block_num 7