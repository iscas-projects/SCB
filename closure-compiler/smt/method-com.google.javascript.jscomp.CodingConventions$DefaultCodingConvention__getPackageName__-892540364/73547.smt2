(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var1206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1206_getName/1167124893 (var1206) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1287 var1287)
(declare-const null-var1206 var1206)
(declare-const var3595 var1287) ; Statement: r2 := @this: com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention 
(assert (not (= var3595 null-var1287)))
(declare-const var2217 var1206) ; Statement: r0 := @parameter0: com.google.javascript.rhino.StaticSourceFile 
(assert (not (= var2217 null-var1206)))
(define-const var2185 String (var1206_getName/1167124893 var2217)) ; Statement: r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>() 
(assert true)
(define-const var1525 Int (lastIndexOf/-1292097097 var2185 47)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var3141 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var1525 var3141)))) ; Negate: Cond: i0 != $i2  
(define-const var1244 String "") ; Statement: $r3 = "" 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1206_getName/1167124893=([com.google.javascript.rhino.StaticSourceFile], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1287=com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention, var3595=r2, var1206=com.google.javascript.rhino.StaticSourceFile, var2217=r0, var2185=r1, var1525=i0, var3141=$i2, var1244=$r3}
; {com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention=var1287, r2=var3595, com.google.javascript.rhino.StaticSourceFile=var1206, r0=var2217, r1=var2185, i0=var1525, $i2=var3141, $r3=var1244}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CodingConventions$DefaultCodingConvention;	r0 := @parameter0: com.google.javascript.rhino.StaticSourceFile;	r1 = interfaceinvoke r0.<com.google.javascript.rhino.StaticSourceFile: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47);	$i2 = (int) -1;	if i0 != $i2 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r3 = "";	goto [?= return $r3];	return $r3
;block_num 3