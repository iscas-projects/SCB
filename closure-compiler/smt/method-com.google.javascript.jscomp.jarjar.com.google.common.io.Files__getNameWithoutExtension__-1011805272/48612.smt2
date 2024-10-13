(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3241 0)
(declare-sort var1144 0)
(declare-sort var602 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1144_checkNotNull/1446102589 (var602) var602)
(declare-fun cast-from-String-to-var602 (String) var602)
(declare-fun var3337-init () var3337)
(declare-fun <init>/-1681595970 (var3337 String) void)
(declare-fun getName/1128186653 (var3337) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var630 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var630 null-String)))
;(assert (var1144_checkNotNull/1446102589 (cast-from-String-to-var602 var630))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var630!1 String)
(define-const var3049 var3337 var3337-init) ; Statement: $r4 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var3049 var630!1)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0) 

(declare-const var3049!1 var3337)
(declare-const var630!2 String)
(assert true)
(define-const var2188 String (getName/1128186653 var3049!1)) ; Statement: r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var3766 Int (lastIndexOf/-1292097097 var2188 46)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2013 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var3766 var2013)))) ; Negate: Cond: i0 != $i2  
(define-const var1293 String var2188) ; Statement: $r3 = r2 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1144_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var602=([java.lang.String], java.lang.Object), var3337-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var630=r0, var3241=null_type, var1144=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var602=java.lang.Object, var3337=java.io.File, var3049=$r4, var2188=r2, var3766=i0, var2013=$i2, var1293=$r3}
; {r0=var630, null_type=var3241, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1144, java.lang.Object=var602, java.io.File=var3337, $r4=var3049, r2=var2188, i0=var3766, $i2=var2013, $r3=var1293}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r4 = new java.io.File;	specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0);	r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r3 = r2;	goto [?= return $r3];	return $r3
;block_num 3