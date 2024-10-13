(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3904 0)
(declare-sort var3796 0)
(declare-sort var501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var3796) String)
(declare-fun put/1981026245 (var501 var3796 var3796) var3796)
(declare-fun cast-from-var3904-to-var501 (var3904) var501)
(declare-fun cast-from-String-to-var3796 (String) var3796)
(declare-const null-var3904 var3904)
(declare-const null-var3796 var3796)
(declare-const var740 var3904) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var740 null-var3904)))
(declare-const var591 var3796) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var591 null-var3796)))
(declare-const var1799 var3796) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var1799 null-var3796)))
(define-const var2398 String (String_valueOf/-333372740 var591)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(define-const var3840 String (String_valueOf/-333372740 var1799)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2) 
(assert true)
;(assert (put/1981026245 (cast-from-var3904-to-var501 var740) (cast-from-String-to-var3796 var2398) (cast-from-String-to-var3796 var3840))) ; Statement: virtualinvoke r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, $r3) 

(declare-const var740!1 var3904)
(declare-const var2398!1 String)
(declare-const var3840!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3904-to-var501=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var3796=([java.lang.String], java.lang.Object)}
; {var3904=java.util.Properties, var740=r0, var3796=java.lang.Object, var591=r1, var1799=r2, var2398=$r4, var3840=$r3, var501=java.util.Hashtable}
; {java.util.Properties=var3904, r0=var740, java.lang.Object=var3796, r1=var591, r2=var1799, $r4=var2398, $r3=var3840, java.util.Hashtable=var501}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 2}
;stmts r0 := @parameter0: java.util.Properties;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r2);	virtualinvoke r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r4, $r3);	return
;block_num 1