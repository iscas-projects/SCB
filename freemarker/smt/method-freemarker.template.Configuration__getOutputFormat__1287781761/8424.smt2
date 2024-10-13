(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1477 0)
(declare-sort var2462 0)
(declare-sort var3638 0)
(declare-sort var2879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun getMarkupOutputFormatForCombined/-580944859 (var1477 String) var3638)
(declare-fun var2879-init () var2879)
(declare-fun <init>/-1451198830 (var2879 String var3638 var3638) void)
(declare-const null-var1477 var1477)
(declare-const null-String String)
(declare-const var3550 var1477) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var3550 null-var1477)))
(declare-const var1487 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1487 null-String)))
(assert true)
(define-const var12 Int (length/-134980193 var1487)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var12 0))) ; Cond: $i0 != 0 
(assert true)
(define-const var2921 Int (length/-134980193 var1487)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2853 Int (- var2921 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (> (str.len var1487) var2853) (<= 0 var2853))))
(define-const var2155 Int (charAt/698050440 var1487 var2853)) ; Statement: $c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2) 
(define-const var1282 Int (cast-from-Int-to-Int var2155)) ; Statement: $i8 = (int) $c3 
 ; Statement: if $i8 != 125 goto $r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats> 
(assert (not (not (= var1282 125)))) ; Negate: Cond: $i8 != 125  
(assert true)
(define-const var2807 Int (indexOf/-1037706067 var1487 123)) ; Statement: i7 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(123) 
(define-const var1675 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if i7 != $i10 goto $r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i7) 
(assert (not (= var2807 var1675))) ; Cond: i7 != $i10 
(assert (and true (and (>= 0 0) (>= (str.len var1487) var2807) (>= var2807 0))))
(define-const var2022 String (substring/-1240304868 var1487 0 var2807)) ; Statement: $r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i7) 
(assert true)
(define-const var797 var3638 (getMarkupOutputFormatForCombined/-580944859 var3550 var2022)) ; Statement: r28 = specialinvoke r1.<freemarker.template.Configuration: freemarker.core.MarkupOutputFormat getMarkupOutputFormatForCombined(java.lang.String)>($r19) 
(define-const var3981 Int (+ var2807 1)) ; Statement: $i6 = i7 + 1 
(assert true)
(define-const var888 Int (length/-134980193 var1487)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3809 Int (- var888 1)) ; Statement: $i5 = $i4 - 1 
(assert (and true (and (>= var3981 0) (>= (str.len var1487) var3809) (>= var3809 var3981))))
(define-const var712 String (substring/-1240304868 var1487 var3981 var3809)) ; Statement: $r20 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i6, $i5) 
(assert true)
(define-const var123 var3638 (getMarkupOutputFormatForCombined/-580944859 var3550 var712)) ; Statement: r29 = specialinvoke r1.<freemarker.template.Configuration: freemarker.core.MarkupOutputFormat getMarkupOutputFormatForCombined(java.lang.String)>($r20) 
(define-const var3306 var2879 var2879-init) ; Statement: $r35 = new freemarker.core.CombinedMarkupOutputFormat 
(assert true)
;(assert (<init>/-1451198830 var3306 var1487 var797 var123)) ; Statement: specialinvoke $r35.<freemarker.core.CombinedMarkupOutputFormat: void <init>(java.lang.String,freemarker.core.MarkupOutputFormat,freemarker.core.MarkupOutputFormat)>(r0, r28, r29) 

(declare-const var3306!1 var2879)
(declare-const var1487!1 String)
(declare-const var797!1 var3638)
(declare-const var123!1 var3638)
 ; Statement: return $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), getMarkupOutputFormatForCombined/-580944859=([freemarker.template.Configuration, java.lang.String], freemarker.core.MarkupOutputFormat), var2879-init=([], freemarker.core.CombinedMarkupOutputFormat), <init>/-1451198830=([freemarker.core.CombinedMarkupOutputFormat, java.lang.String, freemarker.core.MarkupOutputFormat, freemarker.core.MarkupOutputFormat], void)}
; {var1477=freemarker.template.Configuration, var3550=r1, var1487=r0, var2462=null_type, var12=$i0, var2921=$i1, var2853=$i2, var2155=$c3, var1282=$i8, var2807=i7, var1675=$i10, var2022=$r19, var3638=freemarker.core.MarkupOutputFormat, var797=r28, var3981=$i6, var888=$i4, var3809=$i5, var712=$r20, var123=r29, var2879=freemarker.core.CombinedMarkupOutputFormat, var3306=$r35}
; {freemarker.template.Configuration=var1477, r1=var3550, r0=var1487, null_type=var2462, $i0=var12, $i1=var2921, $i2=var2853, $c3=var2155, $i8=var1282, i7=var2807, $i10=var1675, $r19=var2022, freemarker.core.MarkupOutputFormat=var3638, r28=var797, $i6=var3981, $i4=var888, $i5=var3809, $r20=var712, r29=var123, freemarker.core.CombinedMarkupOutputFormat=var2879, $r35=var3306}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 2}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i2);	$i8 = (int) $c3;	if $i8 != 125 goto $r2 = r1.<freemarker.template.Configuration: java.util.Map registeredCustomOutputFormats>;	i7 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(123);	$i10 = (int) -1;	if i7 != $i10 goto $r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i7);	$r19 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i7);	r28 = specialinvoke r1.<freemarker.template.Configuration: freemarker.core.MarkupOutputFormat getMarkupOutputFormatForCombined(java.lang.String)>($r19);	$i6 = i7 + 1;	$i4 = virtualinvoke r0.<java.lang.String: int length()>();	$i5 = $i4 - 1;	$r20 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i6, $i5);	r29 = specialinvoke r1.<freemarker.template.Configuration: freemarker.core.MarkupOutputFormat getMarkupOutputFormatForCombined(java.lang.String)>($r20);	$r35 = new freemarker.core.CombinedMarkupOutputFormat;	specialinvoke $r35.<freemarker.core.CombinedMarkupOutputFormat: void <init>(java.lang.String,freemarker.core.MarkupOutputFormat,freemarker.core.MarkupOutputFormat)>(r0, r28, r29);	return $r35
;block_num 4