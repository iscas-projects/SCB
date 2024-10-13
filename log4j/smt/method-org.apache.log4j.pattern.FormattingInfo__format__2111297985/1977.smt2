(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1002 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-1112840705 (String) Int)
(declare-fun maxLength/-675064325 (var1002) Int)
(declare-fun delete/-2415906 (String Int Int) String)
(declare-const null-var1002 var1002)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1601 var1002) ; Statement: r1 := @this: org.apache.log4j.pattern.FormattingInfo 
(assert (not (= var1601 null-var1002)))
(declare-const var3734 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3734 null-Int)))
(declare-const var1187 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1187 null-String)))
(assert true)
(define-const var414 Int (length/-1112840705 var1187)) ; Statement: $i1 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(define-const var2119 Int (- var414 var3734)) ; Statement: i2 = $i1 - i0 
(define-const var1896 Int (maxLength/-675064325 var1601)) ; Statement: $i3 = r1.<org.apache.log4j.pattern.FormattingInfo: int maxLength> 
 ; Statement: if i2 <= $i3 goto $i4 = r1.<org.apache.log4j.pattern.FormattingInfo: int minLength> 
(assert (not (<= var2119 var1896))) ; Negate: Cond: i2 <= $i3  
(assert true)
(define-const var3482 Int (length/-1112840705 var1187)) ; Statement: $i10 = virtualinvoke r0.<java.lang.StringBuffer: int length()>() 
(define-const var1851 Int (maxLength/-675064325 var1601)) ; Statement: $i9 = r1.<org.apache.log4j.pattern.FormattingInfo: int maxLength> 
(define-const var1492 Int (- var3482 var1851)) ; Statement: $i11 = $i10 - $i9 
(assert true)
;(assert (delete/-2415906 var1187 var3734 var1492)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(i0, $i11) 

(declare-const var1187!1 String)
(declare-const var3734!1 Int)
(declare-const var1492!1 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-1112840705=([java.lang.StringBuffer], int), maxLength/-675064325=([org.apache.log4j.pattern.FormattingInfo], int), delete/-2415906=([java.lang.StringBuffer, int, int], java.lang.StringBuffer)}
; {var1002=org.apache.log4j.pattern.FormattingInfo, var1601=r1, var3734=i0, var1187=r0, var414=$i1, var2119=i2, var1896=$i3, var3482=$i10, var1851=$i9, var1492=$i11}
; {org.apache.log4j.pattern.FormattingInfo=var1002, r1=var1601, i0=var3734, r0=var1187, $i1=var414, i2=var2119, $i3=var1896, $i10=var3482, $i9=var1851, $i11=var1492}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>
;cnt {"<java.lang.StringBuffer: int length()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.FormattingInfo;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.StringBuffer;	$i1 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	i2 = $i1 - i0;	$i3 = r1.<org.apache.log4j.pattern.FormattingInfo: int maxLength>;	if i2 <= $i3 goto $i4 = r1.<org.apache.log4j.pattern.FormattingInfo: int minLength>;	$i10 = virtualinvoke r0.<java.lang.StringBuffer: int length()>();	$i9 = r1.<org.apache.log4j.pattern.FormattingInfo: int maxLength>;	$i11 = $i10 - $i9;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer delete(int,int)>(i0, $i11);	goto [?= return];	return
;block_num 3