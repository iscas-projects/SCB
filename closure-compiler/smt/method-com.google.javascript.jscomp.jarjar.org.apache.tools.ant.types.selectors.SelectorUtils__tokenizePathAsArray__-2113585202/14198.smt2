(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var525 0)
(declare-sort var2339 0)
(declare-sort var248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2339_isAbsolutePath/85031090 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const var248-separatorChar Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2007 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2007 null-String)))
(define-const var2088 String null-String) ; Statement: r4 = null 
(define-const var598 Bool (var2339_isAbsolutePath/85031090 var2007)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $c5 = <java.io.File: char separatorChar> 
(assert (= (ite var598 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2982 Int var248-separatorChar) ; Statement: $c5 = <java.io.File: char separatorChar> 
(define-const var1552 Int 0) ; Statement: i7 = 0 
(assert true)
(define-const var2692 Int (length/-134980193 var2007)) ; Statement: $i6 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var3131 Int 0) ; Statement: i8 = 0 
(define-const var3161 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= $i6 goto (branch) 
(assert (>= var3161 var2692)) ; Cond: i9 >= $i6 
 ; Statement: if $i6 == i7 goto $i3 = i8 
(assert (= var2692 var1552)) ; Cond: $i6 == i7 
(define-const var3436 Int var3131) ; Statement: $i3 = i8 
 ; Statement: if r4 != null goto $z1 = 1 
(assert (not (= var2088 null-String))) ; Cond: r4 != null 
(define-const var1330 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
(assert true) ; Non Conditional
(define-const var1134 Int (+ var3436 (ite var1330 1 0))) ; Statement: $i0 = $i3 + $z1 
(define-const var1190 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[$i0] 
 ; Statement: if r4 == null goto i10 = 0 
(assert (not (= var2088 null-String))) ; Negate: Cond: r4 == null  
(declare-const var1190!1 (Array Int String))
(assert (not (= var1190!1 null-__Array__Int__String__)))
(assert (= (select var1190!1 0) var2088)) ; Statement: $r1[0] = r4 
(define-const var457 Int 1) ; Statement: i10 = 1 
 ; Statement: goto [?= i11 = 0] 
(assert true) ; Non Conditional
(define-const var12 Int 0) ; Statement: i11 = 0 
(define-const var1476 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= $i6 goto (branch) 
(assert (>= var1476 var2692)) ; Cond: i12 >= $i6 
 ; Statement: if $i6 == i11 goto return $r1 
(assert (= var2692 var12)) ; Cond: $i6 == i11 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2339_isAbsolutePath/85031090=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var2007=r3, var525=null_type, var2088=r4, var2339=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var598=$z0, var248=java.io.File, var2982=$c5, var1552=i7, var2692=$i6, var3131=i8, var3161=i9, var3436=$i3, var1330=$z1, var1134=$i0, var1190=$r1, var457=i10, var12=i11, var1476=i12}
; {r3=var2007, null_type=var525, r4=var2088, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var2339, $z0=var598, java.io.File=var248, $c5=var2982, i7=var1552, $i6=var2692, i8=var3131, i9=var3161, $i3=var3436, $z1=var1330, $i0=var1134, $r1=var1190, i10=var457, i11=var12, i12=var1476}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r4 = null;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3);	if $z0 == 0 goto $c5 = <java.io.File: char separatorChar>;	$c5 = <java.io.File: char separatorChar>;	i7 = 0;	$i6 = virtualinvoke r3.<java.lang.String: int length()>();	i8 = 0;	i9 = 0;	if i9 >= $i6 goto (branch);	if $i6 == i7 goto $i3 = i8;	$i3 = i8;	if r4 != null goto $z1 = 1;	$z1 = 1;	$i0 = $i3 + $z1;	$r1 = newarray (java.lang.String)[$i0];	if r4 == null goto i10 = 0;	$r1[0] = r4;	i10 = 1;	goto [?= i11 = 0];	i11 = 0;	i12 = 0;	if i12 >= $i6 goto (branch);	if $i6 == i11 goto return $r1;	return $r1
;block_num 12