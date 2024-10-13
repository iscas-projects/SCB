(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var505 0)
(declare-sort var2674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var505-init () (Array Int var505))
(declare-fun path/-1525370 (var2019) var2674)
(declare-fun cast-from-var2674-to-var505 (var2674) var505)
(declare-fun original/-1525370 (var2019) String)
(declare-fun cast-from-String-to-var505 (String) var505)
(declare-fun transpiled/-1525370 (var2019) String)
(declare-fun sourceMap/-1525370 (var2019) String)
(declare-fun String_format/1339386452 (String (Array Int var505)) String)
(declare-const null-var2019 var2019)
(declare-const null-__Array__Int__var505__ (Array Int var505))
(declare-const var363 var2019) ; Statement: r1 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var363 null-var2019)))
(define-const var3754 (Array Int var505) arr-var505-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(define-const var181 var2674 (path/-1525370 var363)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path> 
(declare-const var3754!1 (Array Int var505))
(assert (not (= var3754!1 null-__Array__Int__var505__)))
(assert (= (select var3754!1 0) (cast-from-var2674-to-var505 var181))) ; Statement: $r0[0] = $r2 
(define-const var1263 String (original/-1525370 var363)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original> 
(declare-const var3754!2 (Array Int var505))
(assert (not (= var3754!2 null-__Array__Int__var505__)))
(assert (= (select var3754!2 1) (cast-from-String-to-var505 var1263))) ; Statement: $r0[1] = $r3 
(define-const var2578 String (transpiled/-1525370 var363)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(declare-const var3754!3 (Array Int var505))
(assert (not (= var3754!3 null-__Array__Int__var505__)))
(assert (= (select var3754!3 2) (cast-from-String-to-var505 var2578))) ; Statement: $r0[2] = $r4 
(define-const var3683 String (sourceMap/-1525370 var363)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(declare-const var3754!4 (Array Int var505))
(assert (not (= var3754!4 null-__Array__Int__var505__)))
(assert (= (select var3754!4 3) (cast-from-String-to-var505 var3683))) ; Statement: $r0[3] = $r5 
(define-const var1710 String (String_format/1339386452 "TranspileResut{path=%s, original=%s, transpiled=%s, sourceMapURL=%s}" var3754!4)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("TranspileResut{path=%s, original=%s, transpiled=%s, sourceMapURL=%s}", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var505-init=([], java.lang.Object[]), path/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.net.URI), cast-from-var2674-to-var505=([java.net.URI], java.lang.Object), original/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), cast-from-String-to-var505=([java.lang.String], java.lang.Object), transpiled/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), sourceMap/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2019=com.google.javascript.jscomp.transpile.TranspileResult, var363=r1, var505=java.lang.Object, var3754=$r0, var2674=java.net.URI, var181=$r2, var1263=$r3, var2578=$r4, var3683=$r5, var1710=$r6}
; {com.google.javascript.jscomp.transpile.TranspileResult=var2019, r1=var363, java.lang.Object=var505, $r0=var3754, java.net.URI=var2674, $r2=var181, $r3=var1263, $r4=var2578, $r5=var3683, $r6=var1710}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	$r0 = newarray (java.lang.Object)[4];	$r2 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.net.URI path>;	$r0[0] = $r2;	$r3 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original>;	$r0[1] = $r3;	$r4 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r0[2] = $r4;	$r5 = r1.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$r0[3] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("TranspileResut{path=%s, original=%s, transpiled=%s, sourceMapURL=%s}", $r0);	return $r6
;block_num 1