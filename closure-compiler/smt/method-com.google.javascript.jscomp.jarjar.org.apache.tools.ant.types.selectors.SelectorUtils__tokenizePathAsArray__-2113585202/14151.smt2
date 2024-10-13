(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1608 0)
(declare-sort var475 0)
(declare-sort var3589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var475_isAbsolutePath/85031090 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const var3589-separatorChar Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3268 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3268 null-String)))
(define-const var3721 String null-String) ; Statement: r4 = null 
(define-const var3968 Bool (var475_isAbsolutePath/85031090 var3268)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $c5 = <java.io.File: char separatorChar> 
(assert (= (ite var3968 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1702 Int var3589-separatorChar) ; Statement: $c5 = <java.io.File: char separatorChar> 
(define-const var483 Int 0) ; Statement: i7 = 0 
(assert true)
(define-const var3960 Int (length/-134980193 var3268)) ; Statement: $i6 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1774 Int 0) ; Statement: i8 = 0 
(define-const var2518 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= $i6 goto (branch) 
(assert (>= var2518 var3960)) ; Cond: i9 >= $i6 
 ; Statement: if $i6 == i7 goto $i3 = i8 
(assert (= var3960 var483)) ; Cond: $i6 == i7 
(define-const var785 Int var1774) ; Statement: $i3 = i8 
 ; Statement: if r4 != null goto $z1 = 1 
(assert (not (not (= var3721 null-String)))) ; Negate: Cond: r4 != null  
(define-const var1728 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
 ; Statement: goto [?= $i0 = $i3 + $z1] 
(assert true) ; Non Conditional
(define-const var2855 Int (+ var785 (ite var1728 1 0))) ; Statement: $i0 = $i3 + $z1 
(define-const var2602 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[$i0] 
 ; Statement: if r4 == null goto i10 = 0 
(assert (not (= var3721 null-String))) ; Negate: Cond: r4 == null  
(declare-const var2602!1 (Array Int String))
(assert (not (= var2602!1 null-__Array__Int__String__)))
(assert (= (select var2602!1 0) var3721)) ; Statement: $r1[0] = r4 
(define-const var48 Int 1) ; Statement: i10 = 1 
 ; Statement: goto [?= i11 = 0] 
(assert true) ; Non Conditional
(define-const var1525 Int 0) ; Statement: i11 = 0 
(define-const var1225 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= $i6 goto (branch) 
(assert (>= var1225 var3960)) ; Cond: i12 >= $i6 
 ; Statement: if $i6 == i11 goto return $r1 
(assert (= var3960 var1525)) ; Cond: $i6 == i11 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var475_isAbsolutePath/85031090=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[])}
; {var3268=r3, var1608=null_type, var3721=r4, var475=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils, var3968=$z0, var3589=java.io.File, var1702=$c5, var483=i7, var3960=$i6, var1774=i8, var2518=i9, var785=$i3, var1728=$z1, var2855=$i0, var2602=$r1, var48=i10, var1525=i11, var1225=i12}
; {r3=var3268, null_type=var1608, r4=var3721, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils=var475, $z0=var3968, java.io.File=var3589, $c5=var1702, i7=var483, $i6=var3960, i8=var1774, i9=var2518, $i3=var785, $z1=var1728, $i0=var2855, $r1=var2602, i10=var48, i11=var1525, i12=var1225}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r4 = null;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.FileUtils: boolean isAbsolutePath(java.lang.String)>(r3);	if $z0 == 0 goto $c5 = <java.io.File: char separatorChar>;	$c5 = <java.io.File: char separatorChar>;	i7 = 0;	$i6 = virtualinvoke r3.<java.lang.String: int length()>();	i8 = 0;	i9 = 0;	if i9 >= $i6 goto (branch);	if $i6 == i7 goto $i3 = i8;	$i3 = i8;	if r4 != null goto $z1 = 1;	$z1 = 0;	goto [?= $i0 = $i3 + $z1];	$i0 = $i3 + $z1;	$r1 = newarray (java.lang.String)[$i0];	if r4 == null goto i10 = 0;	$r1[0] = r4;	i10 = 1;	goto [?= i11 = 0];	i11 = 0;	i12 = 0;	if i12 >= $i6 goto (branch);	if $i6 == i11 goto return $r1;	return $r1
;block_num 12