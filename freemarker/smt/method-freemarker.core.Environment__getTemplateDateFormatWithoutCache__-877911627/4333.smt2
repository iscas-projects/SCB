(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3918 0)
(declare-sort var3180 0)
(declare-sort var371 0)
(declare-sort var3707 0)
(declare-sort var3878 0)
(declare-sort var3107 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun cast-from-var3107-to-var3878 (var3107) var3878)
(declare-fun get/-2047580938 (var3878 String Int var371 var3707 Bool var3918) var123)
(declare-const null-var3918 var3918)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var371 var371)
(declare-const null-var3707 var3707)
(declare-const null-Bool Bool)
(declare-const var3107-INSTANCE var3107)
(declare-const var1494 var3918) ; Statement: r3 := @this: freemarker.core.Environment 
(assert (not (= var1494 null-var3918)))
(declare-const var1269 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1269 null-String)))
(declare-const var2254 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2254 null-Int)))
(declare-const var280 var371) ; Statement: r1 := @parameter2: java.util.Locale 
(assert (not (= var280 null-var371)))
(declare-const var1365 var3707) ; Statement: r2 := @parameter3: java.util.TimeZone 
(assert (not (= var1365 null-var3707)))
(declare-const var572 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var572 null-Bool)))
(assert true)
(define-const var1116 Int (length/-134980193 var1269)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 0 goto $i9 = 0 
(assert (not (= var1116 0))) ; Negate: Cond: i0 == 0  
(assert (and true (and (> (str.len var1269) 0) (<= 0 0))))
(define-const var407 Int (charAt/698050440 var1269 0)) ; Statement: $i9 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
 ; Statement: goto [?= i1 = $i9] 
(assert true) ; Non Conditional
(define-const var3599 Int var407) ; Statement: i1 = $i9 
 ; Statement: if $i9 != 120 goto (branch) 
(assert (not (not (= var407 120)))) ; Negate: Cond: $i9 != 120  
 ; Statement: if i0 <= 1 goto (branch) 
(assert (not (<= var1116 1))) ; Negate: Cond: i0 <= 1  
(assert (and true (and (> (str.len var1269) 1) (<= 0 1))))
(define-const var2429 Int (charAt/698050440 var1269 1)) ; Statement: $c8 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1) 
(define-const var1837 Int (cast-from-Int-to-Int var2429)) ; Statement: $i11 = (int) $c8 
 ; Statement: if $i11 != 115 goto (branch) 
(assert (not (not (= var1837 115)))) ; Negate: Cond: $i11 != 115  
(define-const var2130 var3878 (cast-from-var3107-to-var3878 var3107-INSTANCE)) ; Statement: r11 = <freemarker.core.XSTemplateDateFormatFactory: freemarker.core.XSTemplateDateFormatFactory INSTANCE> 
(define-const var3855 String var1269) ; Statement: r12 = r0 
 ; Statement: goto [?= $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3)] 
(assert true) ; Non Conditional
(assert true)
(define-const var967 var123 (get/-2047580938 var2130 var3855 var2254 var280 var1365 var572 var1494)) ; Statement: $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), cast-from-var3107-to-var3878=([freemarker.core.XSTemplateDateFormatFactory], freemarker.core.TemplateDateFormatFactory), get/-2047580938=([freemarker.core.TemplateDateFormatFactory, java.lang.String, int, java.util.Locale, java.util.TimeZone, boolean, freemarker.core.Environment], freemarker.core.TemplateDateFormat)}
; {var3918=freemarker.core.Environment, var1494=r3, var1269=r0, var3180=null_type, var2254=i2, var371=java.util.Locale, var280=r1, var3707=java.util.TimeZone, var1365=r2, var572=z0, var1116=i0, var407=$i9, var3599=i1, var2429=$c8, var1837=$i11, var3878=freemarker.core.TemplateDateFormatFactory, var3107=freemarker.core.XSTemplateDateFormatFactory, var2130=r11, var3855=r12, var123=freemarker.core.TemplateDateFormat, var967=$r15}
; {freemarker.core.Environment=var3918, r3=var1494, r0=var1269, null_type=var3180, i2=var2254, java.util.Locale=var371, r1=var280, java.util.TimeZone=var3707, r2=var1365, z0=var572, i0=var1116, $i9=var407, i1=var3599, $c8=var2429, $i11=var1837, freemarker.core.TemplateDateFormatFactory=var3878, freemarker.core.XSTemplateDateFormatFactory=var3107, r11=var2130, r12=var3855, freemarker.core.TemplateDateFormat=var123, $r15=var967}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r3 := @this: freemarker.core.Environment;	r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	r1 := @parameter2: java.util.Locale;	r2 := @parameter3: java.util.TimeZone;	z0 := @parameter4: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 0 goto $i9 = 0;	$i9 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	goto [?= i1 = $i9];	i1 = $i9;	if $i9 != 120 goto (branch);	if i0 <= 1 goto (branch);	$c8 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);	$i11 = (int) $c8;	if $i11 != 115 goto (branch);	r11 = <freemarker.core.XSTemplateDateFormatFactory: freemarker.core.XSTemplateDateFormatFactory INSTANCE>;	r12 = r0;	goto [?= $r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3)];	$r15 = virtualinvoke r11.<freemarker.core.TemplateDateFormatFactory: freemarker.core.TemplateDateFormat get(java.lang.String,int,java.util.Locale,java.util.TimeZone,boolean,freemarker.core.Environment)>(r12, i2, r1, r2, z0, r3);	return $r15
;block_num 7