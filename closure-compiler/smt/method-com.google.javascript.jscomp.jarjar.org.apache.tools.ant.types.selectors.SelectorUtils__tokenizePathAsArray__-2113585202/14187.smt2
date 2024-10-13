(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3131 0)
(declare-sort var756 0)
(declare-sort var249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var756_isAbsolutePath/85031090 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const var249-separatorChar Int)
(declare-const var3705 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3705 null-String)))
(define-const var1961 String null-String) ; Statement: r4 = null 
(define-const var298 Bool (var756_isAbsolutePath/85031090 var3705)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $c5 = <java.io.File: char separatorChar> 
(assert (= (ite var298 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2544 Int var249-separatorChar) ; Statement: $c5 = <java.io.File: char separatorChar> 
(define-const var1687 Int 0) ; Statement: i7 = 0 
(assert true)
(define-const var2876 Int (length/-134980193 var3705)) ; Statement: $i6 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var575 Int 0) ; Statement: i8 = 0 
(define-const var1168 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= $i6 goto (branch) 
(assert (>= var1168 var2876)) ; Cond: i9 >= $i6 
 ; Statement: if $i6 == i7 goto $i3 = i8 
(assert (= var2876 var1687)) ; Cond: $i6 == i7 
(define-const var3914 Int var575) ; Statement: $i3 = i8 
 ; Statement: if r4 != null goto $z1 = 1 
(assert (not (not (= var1961 null-String)))) ; Negate: Cond: r4 != null  
(define-const var3469 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
 ; Statement: goto [?= $i0 = $i3 + $z1] 
(assert true) ; Non Conditional
(define-const var2600 Int (+ var3914 (ite var3469 1 0))) ; Statement: $i0 = $i3 + $z1 
(define-const var2683 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[$i0] 
 ; Statement: if r4 == null goto i10 = 0 
(assert (= var1961 null-String)) ; Cond: r4 == null 
(define-const var3792 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var2388 Int 0) ; Statement: i11 = 0 
(define-const var1447 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= $i6 goto (branch) 
(assert (>= var1447 var2876)) ; Cond: i12 >= $i6 
 ; Statement: if $i6 == i11 goto return $r1 
(assert (= var2876 var2388)) ; Cond: $i6 == i11 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var756_isAbsolutePath/85031090=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var3705=r3, var3131=null_type, var1961=r4, var756=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var298=$z0, var249=java.io.File, var2544=$c5, var1687=i7, var2876=$i6, var575=i8, var1168=i9, var3914=$i3, var3469=$z1, var2600=$i0, var2683=$r1, var3792=i10, var2388=i11, var1447=i12}
; {r3=var3705, null_type=var3131, r4=var1961, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var756, $z0=var298, java.io.File=var249, $c5=var2544, i7=var1687, $i6=var2876, i8=var575, i9=var1168, $i3=var3914, $z1=var3469, $i0=var2600, $r1=var2683, i10=var3792, i11=var2388, i12=var1447}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r4 = null;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3);	if $z0 == 0 goto $c5 = <java.io.File: char separatorChar>;	$c5 = <java.io.File: char separatorChar>;	i7 = 0;	$i6 = virtualinvoke r3.<java.lang.String: int length()>();	i8 = 0;	i9 = 0;	if i9 >= $i6 goto (branch);	if $i6 == i7 goto $i3 = i8;	$i3 = i8;	if r4 != null goto $z1 = 1;	$z1 = 0;	goto [?= $i0 = $i3 + $z1];	$i0 = $i3 + $z1;	$r1 = newarray (java.lang.String)[$i0];	if r4 == null goto i10 = 0;	i10 = 0;	i11 = 0;	i12 = 0;	if i12 >= $i6 goto (branch);	if $i6 == i11 goto return $r1;	return $r1
;block_num 12