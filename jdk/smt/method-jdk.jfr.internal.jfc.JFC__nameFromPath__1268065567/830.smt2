(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1053 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1783_nullSafeFileName/1799330014 (var1053) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1053 var1053)
(declare-const var498 var1053) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var498 null-var1053)))
(define-const var798 String (var1783_nullSafeFileName/1799330014 var498)) ; Statement: r1 = staticinvoke <jdk.jfr.internal.jfc.JFC: java.lang.String nullSafeFileName(java.nio.file.Path)>(r0) 
(assert true)
(define-const var3215 Bool (endsWith/985337093 var798 ".jfc")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfc") 
 ; Statement: if $z0 == 0 goto return r1 
(assert (not (= (ite var3215 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3021 Int (length/-134980193 var798)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2616 String ".jfc") ; Statement: $r2 = ".jfc" 
(assert true)
(define-const var1807 Int (length/-134980193 var2616)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2893 Int (- var3021 var1807)) ; Statement: $i2 = $i1 - $i0 
(assert (and true (and (>= 0 0) (>= (str.len var798) var2893) (>= var2893 0))))
(define-const var996 String (substring/-1240304868 var798 0 var2893)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1783_nullSafeFileName/1799330014=([java.nio.file.Path], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1053=java.nio.file.Path, var498=r0, var1783=jdk.jfr.internal.jfc.JFC, var798=r1, var3215=$z0, var3021=$i1, var2616=$r2, var1807=$i0, var2893=$i2, var996=$r3}
; {java.nio.file.Path=var1053, r0=var498, jdk.jfr.internal.jfc.JFC=var1783, r1=var798, $z0=var3215, $i1=var3021, $r2=var2616, $i0=var1807, $i2=var2893, $r3=var996}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.nio.file.Path;	r1 = staticinvoke <jdk.jfr.internal.jfc.JFC: java.lang.String nullSafeFileName(java.nio.file.Path)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jfc");	if $z0 == 0 goto return r1;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$r2 = ".jfc";	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	return $r3
;block_num 2