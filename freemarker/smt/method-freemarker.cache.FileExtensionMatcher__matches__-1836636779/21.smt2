(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3125 0)
(declare-sort var3688 0)
(declare-sort var1616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun extension/1469061603 (var3125) String)
(declare-const null-var3125 var3125)
(declare-const null-String String)
(declare-const null-var1616 var1616)
(declare-const var2714 var3125) ; Statement: r1 := @this: freemarker.cache.FileExtensionMatcher 
(assert (not (= var2714 null-var3125)))
(declare-const var1734 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1734 null-String)))
(declare-const var634 var1616) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var634 null-var1616)))
(assert true)
(define-const var934 Int (length/-134980193 var1734)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1036 String (extension/1469061603 var2714)) ; Statement: $r2 = r1.<freemarker.cache.FileExtensionMatcher: java.lang.String extension> 
(assert true)
(define-const var3581 Int (length/-134980193 var1036)) ; Statement: i1 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var1456 Int (+ var3581 1)) ; Statement: $i2 = i1 + 1 
 ; Statement: if i0 < $i2 goto return 0 
(assert (< var934 var1456)) ; Cond: i0 < $i2 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), extension/1469061603=([freemarker.cache.FileExtensionMatcher], java.lang.String)}
; {var3125=freemarker.cache.FileExtensionMatcher, var2714=r1, var1734=r0, var3688=null_type, var1616=java.lang.Object, var634=r4, var934=i0, var1036=$r2, var3581=i1, var1456=$i2}
; {freemarker.cache.FileExtensionMatcher=var3125, r1=var2714, r0=var1734, null_type=var3688, java.lang.Object=var1616, r4=var634, i0=var934, $r2=var1036, i1=var3581, $i2=var1456}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @this: freemarker.cache.FileExtensionMatcher;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r2 = r1.<freemarker.cache.FileExtensionMatcher: java.lang.String extension>;	i1 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = i1 + 1;	if i0 < $i2 goto return 0;	return 0
;block_num 2