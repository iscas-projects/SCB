(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1712 0)
(declare-sort var902 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var902_getName/1167124893 (var902) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1712 var1712)
(declare-const null-var902 var902)
(declare-const var284 var1712) ; Statement: r2 := @this: com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention 
(assert (not (= var284 null-var1712)))
(declare-const var1285 var902) ; Statement: r0 := @parameter0: com.google.javascript.rhino.StaticSourceFile 
(assert (not (= var1285 null-var902)))
(define-const var1913 String (var902_getName/1167124893 var1285)) ; Statement: r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>() 
(assert true)
(define-const var2545 Int (lastIndexOf/-1292097097 var1913 47)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var2044 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var2545 var2044))) ; Cond: i0 != $i2 
(assert (and true (and (>= 0 0) (>= (str.len var1913) var2545) (>= var2545 0))))
(define-const var1026 String (substring/-1240304868 var1913 0 var2545)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var902_getName/1167124893=([com.google.javascript.rhino.StaticSourceFile], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1712=com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention, var284=r2, var902=com.google.javascript.rhino.StaticSourceFile, var1285=r0, var1913=r1, var2545=i0, var2044=$i2, var1026=$r3}
; {com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention=var1712, r2=var284, com.google.javascript.rhino.StaticSourceFile=var902, r0=var1285, r1=var1913, i0=var2545, $i2=var2044, $r3=var1026}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention;	r0 := @parameter0: com.google.javascript.rhino.StaticSourceFile;	r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47);	$i2 = (int) -1;	if i0 != $i2 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r3
;block_num 3