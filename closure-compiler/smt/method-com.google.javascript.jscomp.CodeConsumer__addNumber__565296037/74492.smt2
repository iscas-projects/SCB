(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2084 0)
(declare-sort var2581 0)
(declare-sort var2130 0)
(declare-sort var1597 0)
(declare-sort var2696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2130_isPositive/871981343 (Float64) Bool)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun var1597_checkState/1633726539 (Bool var2696) void)
(declare-fun cast-from-Float64-to-var2696 (Float64) var2696)
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-fun cast-from-Int-to-Float64 (Int) Float64)
(declare-fun String_valueOf/-987357574 (Float64) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-fun addConstant/971339327 (var2084 String) void)
(declare-const null-var2084 var2084)
(declare-const null-Float64 Float64)
(declare-const null-var2581 var2581)
(declare-const var1433 var2084) ; Statement: r3 := @this: com.google.javascript.jscomp.CodeConsumer 
(assert (not (= var1433 null-var2084)))
(declare-const var401 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var401 null-Float64)))
(declare-const var770 var2581) ; Statement: r9 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var770 null-var2581)))
(define-const var3958 Bool (var2130_isPositive/871981343 var401)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.base.JSCompDoubles: boolean isPositive(double)>(d0) 
(define-const var3526 Float64 (Float64_valueOf/679560954 var401)) ; Statement: $r0 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
;(assert (var1597_checkState/1633726539 var3958 (cast-from-Float64-to-var2696 var3526))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r0) 

(declare-const var3958!1 Bool)
(declare-const var3526!1 Float64)
(define-const var193 Int (cast-from-Float64-to-Int var401)) ; Statement: $l0 = (long) d0 
(define-const var2234 Float64 (cast-from-Int-to-Float64 var193)) ; Statement: $d1 = (double) $l0 
(define-const var700 Int (ite (fp.gt var2234 var401) 1 (ite (fp.lt var2234 var401) (- 1) 0))) ; Statement: $b1 = $d1 cmpl d0 
 ; Statement: if $b1 == 0 goto l2 = (long) d0 
(assert (not (= var700 0))) ; Negate: Cond: $b1 == 0  
(define-const var915 String (String_valueOf/-987357574 var401)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
(assert true)
(define-const var1557 String (replace/2138489945 var915 (cast-from-String-to-String ".0E") (cast-from-String-to-String "E"))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".0E", "E") 
(assert true)
(define-const var553 String (replaceFirst/750800361 var1557 "^0\u005c." ".")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^0\\.", ".") 
(assert (= (replaceFirst/750800361 var1557 "^0\u005c." ".") (str.replace_re var1557 (str.to_re "^0.") ".")))
(assert true)
;(assert (addConstant/971339327 var1433 var553)) ; Statement: virtualinvoke r3.<com.google.javascript.jscomp.CodeConsumer: void addConstant(java.lang.String)>($r8) 

(declare-const var1433!1 var2084)
(declare-const var553!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2130_isPositive/871981343=([double], boolean), Float64_valueOf/679560954=([double], java.lang.Double), var1597_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-Float64-to-var2696=([java.lang.Double], java.lang.Object), cast-from-Float64-to-Int=([double], long), cast-from-Int-to-Float64=([long], double), String_valueOf/-987357574=([double], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), addConstant/971339327=([com.google.javascript.jscomp.CodeConsumer, java.lang.String], void)}
; {var2084=com.google.javascript.jscomp.CodeConsumer, var1433=r3, var401=d0, var2581=com.google.javascript.rhino.Node, var770=r9, var2130=com.google.javascript.jscomp.base.JSCompDoubles, var3958=$z0, var3526=$r0, var1597=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2696=java.lang.Object, var193=$l0, var2234=$d1, var700=$b1, var915=$r6, var1557=$r7, var553=$r8}
; {com.google.javascript.jscomp.CodeConsumer=var2084, r3=var1433, d0=var401, com.google.javascript.rhino.Node=var2581, r9=var770, com.google.javascript.jscomp.base.JSCompDoubles=var2130, $z0=var3958, $r0=var3526, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1597, java.lang.Object=var2696, $l0=var193, $d1=var2234, $b1=var700, $r6=var915, $r7=var1557, $r8=var553}
;seq <java.lang.String: java.lang.String valueOf(double)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.CodeConsumer;	d0 := @parameter0: double;	r9 := @parameter1: com.google.javascript.rhino.Node;	$z0 = staticinvoke <com.google.javascript.jscomp.base.JSCompDoubles: boolean isPositive(double)>(d0);	$r0 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z0, $r0);	$l0 = (long) d0;	$d1 = (double) $l0;	$b1 = $d1 cmpl d0;	if $b1 == 0 goto l2 = (long) d0;	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".0E", "E");	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^0\\.", ".");	virtualinvoke r3.<com.google.javascript.jscomp.CodeConsumer: void addConstant(java.lang.String)>($r8);	return
;block_num 2