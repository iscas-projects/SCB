(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var801 0)
(declare-sort var0 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun lastIndexOf/679652410 (String Int Int) Int)
(declare-const null-var801 var801)
(declare-const null-String String)
(declare-const var2949 var801) ; Statement: r5 := @this: freemarker.cache.TemplateNameFormat$Default020400 
(assert (not (= var2949 null-var801)))
(declare-const var458 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var458 null-String)))
(assert true)
(define-const var2275 Int (length/-134980193 var458)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var3730 Int (- var2275 1)) ; Statement: i10 = $i0 - 1 
(assert true) ; Non Conditional
(assert true)
(define-const var1919 Int (lastIndexOf/679652410 var458 46 var3730)) ; Statement: $i11 = virtualinvoke r6.<java.lang.String: int lastIndexOf(int,int)>(46, i10) 
 ; Statement: if $i11 >= 0 goto i10 = $i11 - 1 
(assert (not (>= var1919 0))) ; Negate: Cond: $i11 >= 0  
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), lastIndexOf/679652410=([java.lang.String, int, int], int)}
; {var801=freemarker.cache.TemplateNameFormat$Default020400, var2949=r5, var458=r6, var0=null_type, var2275=$i0, var3730=i10, var1919=$i11}
; {freemarker.cache.TemplateNameFormat$Default020400=var801, r5=var2949, r6=var458, null_type=var0, $i0=var2275, i10=var3730, $i11=var1919}
;seq <java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int lastIndexOf(int,int)>": 1}
;stmts r5 := @this: freemarker.cache.TemplateNameFormat$Default020400;	r6 := @parameter0: java.lang.String;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	i10 = $i0 - 1;	$i11 = virtualinvoke r6.<java.lang.String: int lastIndexOf(int,int)>(46, i10);	if $i11 >= 0 goto i10 = $i11 - 1;	return r6
;block_num 3