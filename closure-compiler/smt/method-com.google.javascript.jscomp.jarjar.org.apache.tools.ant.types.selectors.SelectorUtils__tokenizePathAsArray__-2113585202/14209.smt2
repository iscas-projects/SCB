(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var746 0)
(declare-sort var3471 0)
(declare-sort var226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3471_isAbsolutePath/85031090 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const var226-separatorChar Int)
(declare-const var486 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var486 null-String)))
(define-const var3705 String null-String) ; Statement: r4 = null 
(define-const var3277 Bool (var3471_isAbsolutePath/85031090 var486)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $c5 = <java.io.File: char separatorChar> 
(assert (= (ite var3277 1 0) 0)) ; Cond: $z0 == 0 
(define-const var988 Int var226-separatorChar) ; Statement: $c5 = <java.io.File: char separatorChar> 
(define-const var2062 Int 0) ; Statement: i7 = 0 
(assert true)
(define-const var1720 Int (length/-134980193 var486)) ; Statement: $i6 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var182 Int 0) ; Statement: i8 = 0 
(define-const var3253 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= $i6 goto (branch) 
(assert (>= var3253 var1720)) ; Cond: i9 >= $i6 
 ; Statement: if $i6 == i7 goto $i3 = i8 
(assert (= var1720 var2062)) ; Cond: $i6 == i7 
(define-const var2002 Int var182) ; Statement: $i3 = i8 
 ; Statement: if r4 != null goto $z1 = 1 
(assert (not (= var3705 null-String))) ; Cond: r4 != null 
(define-const var1970 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
(assert true) ; Non Conditional
(define-const var145 Int (+ var2002 (ite var1970 1 0))) ; Statement: $i0 = $i3 + $z1 
(define-const var1878 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[$i0] 
 ; Statement: if r4 == null goto i10 = 0 
(assert (= var3705 null-String)) ; Cond: r4 == null 
(define-const var479 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var558 Int 0) ; Statement: i11 = 0 
(define-const var1737 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= $i6 goto (branch) 
(assert (>= var1737 var1720)) ; Cond: i12 >= $i6 
 ; Statement: if $i6 == i11 goto return $r1 
(assert (= var1720 var558)) ; Cond: $i6 == i11 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3471_isAbsolutePath/85031090=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var486=r3, var746=null_type, var3705=r4, var3471=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var3277=$z0, var226=java.io.File, var988=$c5, var2062=i7, var1720=$i6, var182=i8, var3253=i9, var2002=$i3, var1970=$z1, var145=$i0, var1878=$r1, var479=i10, var558=i11, var1737=i12}
; {r3=var486, null_type=var746, r4=var3705, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var3471, $z0=var3277, java.io.File=var226, $c5=var988, i7=var2062, $i6=var1720, i8=var182, i9=var3253, $i3=var2002, $z1=var1970, $i0=var145, $r1=var1878, i10=var479, i11=var558, i12=var1737}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r4 = null;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3);	if $z0 == 0 goto $c5 = <java.io.File: char separatorChar>;	$c5 = <java.io.File: char separatorChar>;	i7 = 0;	$i6 = virtualinvoke r3.<java.lang.String: int length()>();	i8 = 0;	i9 = 0;	if i9 >= $i6 goto (branch);	if $i6 == i7 goto $i3 = i8;	$i3 = i8;	if r4 != null goto $z1 = 1;	$z1 = 1;	$i0 = $i3 + $z1;	$r1 = newarray (java.lang.String)[$i0];	if r4 == null goto i10 = 0;	i10 = 0;	i11 = 0;	i12 = 0;	if i12 >= $i6 goto (branch);	if $i6 == i11 goto return $r1;	return $r1
;block_num 12