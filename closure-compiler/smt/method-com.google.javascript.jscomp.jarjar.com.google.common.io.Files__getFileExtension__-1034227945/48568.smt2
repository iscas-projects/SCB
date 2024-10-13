(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3621 0)
(declare-sort var3102 0)
(declare-sort var1833 0)
(declare-sort var1533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3102_checkNotNull/1446102589 (var1833) var1833)
(declare-fun cast-from-String-to-var1833 (String) var1833)
(declare-fun var1533-init () var1533)
(declare-fun <init>/-1681595970 (var1533 String) void)
(declare-fun getName/1128186653 (var1533) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1255 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1255 null-String)))
;(assert (var3102_checkNotNull/1446102589 (cast-from-String-to-var1833 var1255))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1255!1 String)
(define-const var1573 var1533 var1533-init) ; Statement: $r4 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var1573 var1255!1)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0) 

(declare-const var1573!1 var1533)
(declare-const var1255!2 String)
(assert true)
(define-const var2976 String (getName/1128186653 var1573!1)) ; Statement: r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1839 Int (lastIndexOf/-1292097097 var2976 46)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1612 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (not (= var1839 var1612)))) ; Negate: Cond: i0 != $i3  
(define-const var1108 String "") ; Statement: $r3 = "" 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3102_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1833=([java.lang.String], java.lang.Object), var1533-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1255=r0, var3621=null_type, var3102=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1833=java.lang.Object, var1533=java.io.File, var1573=$r4, var2976=r2, var1839=i0, var1612=$i3, var1108=$r3}
; {r0=var1255, null_type=var3621, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3102, java.lang.Object=var1833, java.io.File=var1533, $r4=var1573, r2=var2976, i0=var1839, $i3=var1612, $r3=var1108}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r4 = new java.io.File;	specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0);	r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	$r3 = "";	goto [?= return $r3];	return $r3
;block_num 3