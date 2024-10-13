(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var545 0)
(declare-sort var2584 0)
(declare-sort var1723 0)
(declare-sort var3427 0)
(declare-sort var3206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun registeredCustomOutputFormats/198980522 (var545) var1723)
(declare-fun var1723_get/1088891777 (var1723 var3427) var3427)
(declare-fun cast-from-String-to-var3427 (String) var3427)
(declare-fun cast-from-var3427-to-var3206 (var3427) var3206)
(declare-const null-var545 var545)
(declare-const null-String String)
(declare-const null-var3206 var3206)
(declare-const var662 var545) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var662 null-var545)))
(declare-const var3209 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3209 null-String)))
(assert true)
(define-const var3395 Int (length/-134980193 var3209)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3395 0))) ; Cond: $i0 != 0 
(assert true)
(define-const var1843 Int (length/-134980193 var3209)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1518 Int (- var1843 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (> (str.len var3209) var1518) (<= 0 var1518))))
(define-const var2083 Int (charAt/698050440 var3209 var1518)) ; Statement: $c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2) 
(define-const var1676 Int (cast-from-Int-to-Int var2083)) ; Statement: $i8 = (int) $c3 
 ; Statement: if $i8 != 125 goto $r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats> 
(assert (not (= var1676 125))) ; Cond: $i8 != 125 
(define-const var33 var1723 (registeredCustomOutputFormats/198980522 var662)) ; Statement: $r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats> 
(define-const var2426 var3427 (var1723_get/1088891777 var33 (cast-from-String-to-var3427 var3209))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var953 var3206 (cast-from-var3427-to-var3206 var2426)) ; Statement: r30 = (freemarker.core.OutputFormat) $r3 
 ; Statement: if r30 == null goto $r4 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS> 
(assert (not (= var953 null-var3206))) ; Negate: Cond: r30 == null  
 ; Statement: return r30 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), registeredCustomOutputFormats/198980522=([freemarker.template.Configuration], java.util.Map), var1723_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3427=([java.lang.String], java.lang.Object), cast-from-var3427-to-var3206=([java.lang.Object], freemarker.core.OutputFormat)}
; {var545=freemarker.template.Configuration, var662=r1, var3209=r0, var2584=null_type, var3395=$i0, var1843=$i1, var1518=$i2, var2083=$c3, var1676=$i8, var1723=java.util.Map, var33=$r2, var3427=java.lang.Object, var2426=$r3, var3206=freemarker.core.OutputFormat, var953=r30}
; {freemarker.template.Configuration=var545, r1=var662, r0=var3209, null_type=var2584, $i0=var3395, $i1=var1843, $i2=var1518, $c3=var2083, $i8=var1676, java.util.Map=var1723, $r2=var33, java.lang.Object=var3427, $r3=var2426, freemarker.core.OutputFormat=var3206, r30=var953}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2);	$i8 = (int) $c3;	if $i8 != 125 goto $r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats>;	$r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r30 = (freemarker.core.OutputFormat) $r3;	if r30 == null goto $r4 = <freemarker.template.Configuration: java.util.Map STANDARD_OUTPUT_FORMATS>;	return r30
;block_num 4