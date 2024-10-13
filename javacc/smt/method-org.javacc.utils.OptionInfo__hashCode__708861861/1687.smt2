(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3570 0)
(declare-sort var2247 0)
(declare-sort var3233 0)
(declare-sort var2079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _default/-2056846942 (var3570) var2247)
(declare-fun _name/-2056846942 (var3570) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun _type/-2056846942 (var3570) var2079)
(declare-const null-var3570 var3570)
(declare-const null-var2247 var2247)
(declare-const null-String String)
(declare-const null-var2079 var2079)
(declare-const var1322 var3570) ; Statement: r0 := @this: org.javacc.utils.OptionInfo 
(assert (not (= var1322 null-var3570)))
(define-const var3822 var2247 (_default/-2056846942 var1322)) ; Statement: $r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert (not (not (= var3822 null-var2247)))) ; Negate: Cond: $r1 != null  
(define-const var2956 Int 0) ; Statement: $i5 = 0 
 ; Statement: goto [?= $i4 = 31 + $i5] 
(assert true) ; Non Conditional
(define-const var214 Int (+ 31 var2956)) ; Statement: $i4 = 31 + $i5 
(define-const var3274 Int (* 31 var214)) ; Statement: $i0 = 31 * $i4 
(define-const var828 String (_name/-2056846942 var1322)) ; Statement: $r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert (not (= var828 null-String))) ; Cond: $r3 != null 
(define-const var1353 String (_name/-2056846942 var1322)) ; Statement: $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert true)
(define-const var611 Int (hashCode/-467973558 var1353)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1983 Int (+ var3274 var611)) ; Statement: $i3 = $i0 + $i6 
(define-const var1449 Int (* 31 var1983)) ; Statement: $i1 = 31 * $i3 
(define-const var2878 var2079 (_type/-2056846942 var1322)) ; Statement: $r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert (not (not (= var2878 null-var2079)))) ; Negate: Cond: $r5 != null  
(define-const var1324 Int 0) ; Statement: $i7 = 0 
 ; Statement: goto [?= $i2 = $i1 + $i7] 
(assert true) ; Non Conditional
(define-const var555 Int (+ var1449 var1324)) ; Statement: $i2 = $i1 + $i7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {_default/-2056846942=([org.javacc.utils.OptionInfo], java.lang.Object), _name/-2056846942=([org.javacc.utils.OptionInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), _type/-2056846942=([org.javacc.utils.OptionInfo], org.javacc.utils.OptionType)}
; {var3570=org.javacc.utils.OptionInfo, var1322=r0, var2247=java.lang.Object, var3822=$r1, var2956=$i5, var214=$i4, var3274=$i0, var828=$r3, var3233=null_type, var1353=$r4, var611=$i6, var1983=$i3, var1449=$i1, var2079=org.javacc.utils.OptionType, var2878=$r5, var1324=$i7, var555=$i2}
; {org.javacc.utils.OptionInfo=var3570, r0=var1322, java.lang.Object=var2247, $r1=var3822, $i5=var2956, $i4=var214, $i0=var3274, $r3=var828, null_type=var3233, $r4=var1353, $i6=var611, $i3=var1983, $i1=var1449, org.javacc.utils.OptionType=var2079, $r5=var2878, $i7=var1324, $i2=var555}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.javacc.utils.OptionInfo;	$r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$i5 = 0;	goto [?= $i4 = 31 + $i5];	$i4 = 31 + $i5;	$i0 = 31 * $i4;	$r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i3 = $i0 + $i6;	$i1 = 31 * $i3;	$r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$i7 = 0;	goto [?= $i2 = $i1 + $i7];	$i2 = $i1 + $i7;	return $i2
;block_num 7